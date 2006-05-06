#include <math.h>

double double_double( double d );
float  double_float(  float  f );
int    double_int(    int    i );
short  double_short(  short  s );

char * change_string( char *p );
float  square_root(   float x );

int multiply_ints( int x, int y );

double double_double( double d )
{
	return d * 2.0;
}

float double_float( float f )
{
	return f * 2.0;
}

int double_int( int i )
{
	return i * 2;
}

short double_short( short s )
{
	return s * 2;
}

int multiply_ints( int x, int y )
{
	return x * y;
}

static char s[] = "X string\n";
char* change_string( char *p )
{
	s[0] = p[0];
	return s;
}

float square_root( float x )
{
	return sqrt( x );
}
