package P5NCI::Sig;

sub new
{
	my ($class, %args) = @_;
	bless \%args, $class;
}

for my $accessor (qw( c_type type ))
{
	no strict 'refs';
	*{ $accessor } = sub { $_[0]->{$accessor} };
}

package P5NCI::GenerateXS;

use strict;
use warnings;

use Math::BaseCalc;

sub generate_xs
{
	my $out_file = shift;
	die "Usage: $0 <output_file.xs>\n" unless @_;

	open( my $out, '>', $out_file ) or die "Can't write $out_file: $!\n";

	write_header( $out );
	write_thunks( $out );
}

sub type_args
{
	return
	{
		d => P5NCI::Sig->new( type => 'd', c_type => 'double' ),
		i => P5NCI::Sig->new( type => 'i', c_type => 'int'    ),
		f => P5NCI::Sig->new( type => 'f', c_type => 'float'  ),
		s => P5NCI::Sig->new( type => 's', c_type => 'short'  ),
		t => P5NCI::Sig->new( type => 't', c_type => 'char *' ),
		v => P5NCI::Sig->new( type => 'v', c_type => 'void'   ),
	};
};

sub write_thunks
{
	my $out = shift;

	my $args        = type_args();
	my $combination = generate_combinations( keys %$args );

	while (my $combo = $combination->())
	{
		next if index( $combo, 'v', 1 ) > 0;
		my ($return, @args) = map { $args->{ $_ } } split('', $combo);
		my $func            = generate_function( "nci_$combo", $return, @args );
		print $out "\n", $func;
	}
}

sub generate_combinations
{
	my @possibilities = @_;
	my $length        = @possibilities;
	my $counter       = 0;
	my $current_len   = 2;
	my $max_len       = 5;
	my $base_calc     = Math::BaseCalc->new( digits => [ 0 .. $length - 1 ] );

	return sub
	{
		my $num      = $base_calc->to_base( $counter );
		my $position = sprintf( "%0${current_len}d", $num );
		$counter++;

		$current_len++ if $position eq $length x $max_len;
		return if length( $position ) > $max_len;

		return join( '', map { $possibilities[ $_ ] } split(//, $position ) );
	};
}

sub generate_function
{
	my ($signature, $return, @types) = @_;
	my $function = <<END_HERE;
%s
%s( c_func, %s )
	SV* c_func
%s
PREINIT:
	%s (*func)( %s );
CODE:
	func   = INT2PTR(%s(*)( %s ), SvIV(c_func) );
END_HERE

	if ($return->type() eq 'v')
	{
		$function .= "\t(*func)( %s );\n";
	}
	else
	{
		$function .= <<END_HERE;
	RETVAL = (*func)( %s );
OUTPUT:
	RETVAL
END_HERE
	}

	my (@siglist, @arglist, @typelist);
	for my $type (@types)
	{
		my $var_name = $type->type() . @siglist;
		push @siglist, $var_name;
		push @arglist, "\t" . $type->c_type() . ' ' . $var_name;
		push @typelist, $type->c_type();
	}

	my $siglist  = join( ', ', @siglist  );
	my $arglist  = join( "\n", @arglist  );
	my $typelist = join( ', ', @typelist );
	return sprintf( $function, $return->c_type, $signature, $siglist, $arglist,
		$return->c_type(), $typelist, $return->c_type(), $typelist, $siglist );
}

sub write_header
{
	my $out = shift;

	print $out <<END_HERE;
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

#ifdef newXS
	#undef newXS
	#define newXS ;
#endif

MODULE = P5NCI  PACKAGE = P5NCI
END_HERE
}

1;
