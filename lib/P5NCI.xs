#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

#ifdef newXS
	#undef newXS
	#define newXS ;
#endif

MODULE = P5NCI  PACKAGE = P5NCI

void
nci_vd( c_func, d0 )
	SV* c_func
	double d0
PREINIT:
	void (*func)( double );
CODE:
	func   = INT2PTR(void(*)( double ), SvIV(c_func) );
	(*func)( d0 );

void
nci_vs( c_func, s0 )
	SV* c_func
	short s0
PREINIT:
	void (*func)( short );
CODE:
	func   = INT2PTR(void(*)( short ), SvIV(c_func) );
	(*func)( s0 );

void
nci_vf( c_func, f0 )
	SV* c_func
	float f0
PREINIT:
	void (*func)( float );
CODE:
	func   = INT2PTR(void(*)( float ), SvIV(c_func) );
	(*func)( f0 );

void
nci_vt( c_func, t0 )
	SV* c_func
	char * t0
PREINIT:
	void (*func)( char * );
CODE:
	func   = INT2PTR(void(*)( char * ), SvIV(c_func) );
	(*func)( t0 );

void
nci_vi( c_func, i0 )
	SV* c_func
	int i0
PREINIT:
	void (*func)( int );
CODE:
	func   = INT2PTR(void(*)( int ), SvIV(c_func) );
	(*func)( i0 );

double
nci_dd( c_func, d0 )
	SV* c_func
	double d0
PREINIT:
	double (*func)( double );
CODE:
	func   = INT2PTR(double(*)( double ), SvIV(c_func) );
	RETVAL = (*func)( d0 );
OUTPUT:
	RETVAL

double
nci_ds( c_func, s0 )
	SV* c_func
	short s0
PREINIT:
	double (*func)( short );
CODE:
	func   = INT2PTR(double(*)( short ), SvIV(c_func) );
	RETVAL = (*func)( s0 );
OUTPUT:
	RETVAL

double
nci_df( c_func, f0 )
	SV* c_func
	float f0
PREINIT:
	double (*func)( float );
CODE:
	func   = INT2PTR(double(*)( float ), SvIV(c_func) );
	RETVAL = (*func)( f0 );
OUTPUT:
	RETVAL

double
nci_dt( c_func, t0 )
	SV* c_func
	char * t0
PREINIT:
	double (*func)( char * );
CODE:
	func   = INT2PTR(double(*)( char * ), SvIV(c_func) );
	RETVAL = (*func)( t0 );
OUTPUT:
	RETVAL

double
nci_di( c_func, i0 )
	SV* c_func
	int i0
PREINIT:
	double (*func)( int );
CODE:
	func   = INT2PTR(double(*)( int ), SvIV(c_func) );
	RETVAL = (*func)( i0 );
OUTPUT:
	RETVAL

short
nci_sd( c_func, d0 )
	SV* c_func
	double d0
PREINIT:
	short (*func)( double );
CODE:
	func   = INT2PTR(short(*)( double ), SvIV(c_func) );
	RETVAL = (*func)( d0 );
OUTPUT:
	RETVAL

short
nci_ss( c_func, s0 )
	SV* c_func
	short s0
PREINIT:
	short (*func)( short );
CODE:
	func   = INT2PTR(short(*)( short ), SvIV(c_func) );
	RETVAL = (*func)( s0 );
OUTPUT:
	RETVAL

short
nci_sf( c_func, f0 )
	SV* c_func
	float f0
PREINIT:
	short (*func)( float );
CODE:
	func   = INT2PTR(short(*)( float ), SvIV(c_func) );
	RETVAL = (*func)( f0 );
OUTPUT:
	RETVAL

short
nci_st( c_func, t0 )
	SV* c_func
	char * t0
PREINIT:
	short (*func)( char * );
CODE:
	func   = INT2PTR(short(*)( char * ), SvIV(c_func) );
	RETVAL = (*func)( t0 );
OUTPUT:
	RETVAL

short
nci_si( c_func, i0 )
	SV* c_func
	int i0
PREINIT:
	short (*func)( int );
CODE:
	func   = INT2PTR(short(*)( int ), SvIV(c_func) );
	RETVAL = (*func)( i0 );
OUTPUT:
	RETVAL

float
nci_fd( c_func, d0 )
	SV* c_func
	double d0
PREINIT:
	float (*func)( double );
CODE:
	func   = INT2PTR(float(*)( double ), SvIV(c_func) );
	RETVAL = (*func)( d0 );
OUTPUT:
	RETVAL

float
nci_fs( c_func, s0 )
	SV* c_func
	short s0
PREINIT:
	float (*func)( short );
CODE:
	func   = INT2PTR(float(*)( short ), SvIV(c_func) );
	RETVAL = (*func)( s0 );
OUTPUT:
	RETVAL

float
nci_ff( c_func, f0 )
	SV* c_func
	float f0
PREINIT:
	float (*func)( float );
CODE:
	func   = INT2PTR(float(*)( float ), SvIV(c_func) );
	RETVAL = (*func)( f0 );
OUTPUT:
	RETVAL

float
nci_ft( c_func, t0 )
	SV* c_func
	char * t0
PREINIT:
	float (*func)( char * );
CODE:
	func   = INT2PTR(float(*)( char * ), SvIV(c_func) );
	RETVAL = (*func)( t0 );
OUTPUT:
	RETVAL

float
nci_fi( c_func, i0 )
	SV* c_func
	int i0
PREINIT:
	float (*func)( int );
CODE:
	func   = INT2PTR(float(*)( int ), SvIV(c_func) );
	RETVAL = (*func)( i0 );
OUTPUT:
	RETVAL

char *
nci_td( c_func, d0 )
	SV* c_func
	double d0
PREINIT:
	char * (*func)( double );
CODE:
	func   = INT2PTR(char *(*)( double ), SvIV(c_func) );
	RETVAL = (*func)( d0 );
OUTPUT:
	RETVAL

char *
nci_ts( c_func, s0 )
	SV* c_func
	short s0
PREINIT:
	char * (*func)( short );
CODE:
	func   = INT2PTR(char *(*)( short ), SvIV(c_func) );
	RETVAL = (*func)( s0 );
OUTPUT:
	RETVAL

char *
nci_tf( c_func, f0 )
	SV* c_func
	float f0
PREINIT:
	char * (*func)( float );
CODE:
	func   = INT2PTR(char *(*)( float ), SvIV(c_func) );
	RETVAL = (*func)( f0 );
OUTPUT:
	RETVAL

char *
nci_tt( c_func, t0 )
	SV* c_func
	char * t0
PREINIT:
	char * (*func)( char * );
CODE:
	func   = INT2PTR(char *(*)( char * ), SvIV(c_func) );
	RETVAL = (*func)( t0 );
OUTPUT:
	RETVAL

char *
nci_ti( c_func, i0 )
	SV* c_func
	int i0
PREINIT:
	char * (*func)( int );
CODE:
	func   = INT2PTR(char *(*)( int ), SvIV(c_func) );
	RETVAL = (*func)( i0 );
OUTPUT:
	RETVAL

int
nci_id( c_func, d0 )
	SV* c_func
	double d0
PREINIT:
	int (*func)( double );
CODE:
	func   = INT2PTR(int(*)( double ), SvIV(c_func) );
	RETVAL = (*func)( d0 );
OUTPUT:
	RETVAL

int
nci_is( c_func, s0 )
	SV* c_func
	short s0
PREINIT:
	int (*func)( short );
CODE:
	func   = INT2PTR(int(*)( short ), SvIV(c_func) );
	RETVAL = (*func)( s0 );
OUTPUT:
	RETVAL

int
nci_if( c_func, f0 )
	SV* c_func
	float f0
PREINIT:
	int (*func)( float );
CODE:
	func   = INT2PTR(int(*)( float ), SvIV(c_func) );
	RETVAL = (*func)( f0 );
OUTPUT:
	RETVAL

int
nci_it( c_func, t0 )
	SV* c_func
	char * t0
PREINIT:
	int (*func)( char * );
CODE:
	func   = INT2PTR(int(*)( char * ), SvIV(c_func) );
	RETVAL = (*func)( t0 );
OUTPUT:
	RETVAL

int
nci_ii( c_func, i0 )
	SV* c_func
	int i0
PREINIT:
	int (*func)( int );
CODE:
	func   = INT2PTR(int(*)( int ), SvIV(c_func) );
	RETVAL = (*func)( i0 );
OUTPUT:
	RETVAL

double
nci_ddd( c_func, d0, d1 )
	SV* c_func
	double d0
	double d1
PREINIT:
	double (*func)( double, double );
CODE:
	func   = INT2PTR(double(*)( double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1 );
OUTPUT:
	RETVAL

double
nci_dds( c_func, d0, s1 )
	SV* c_func
	double d0
	short s1
PREINIT:
	double (*func)( double, short );
CODE:
	func   = INT2PTR(double(*)( double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1 );
OUTPUT:
	RETVAL

double
nci_ddf( c_func, d0, f1 )
	SV* c_func
	double d0
	float f1
PREINIT:
	double (*func)( double, float );
CODE:
	func   = INT2PTR(double(*)( double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1 );
OUTPUT:
	RETVAL

double
nci_ddt( c_func, d0, t1 )
	SV* c_func
	double d0
	char * t1
PREINIT:
	double (*func)( double, char * );
CODE:
	func   = INT2PTR(double(*)( double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1 );
OUTPUT:
	RETVAL

double
nci_ddi( c_func, d0, i1 )
	SV* c_func
	double d0
	int i1
PREINIT:
	double (*func)( double, int );
CODE:
	func   = INT2PTR(double(*)( double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1 );
OUTPUT:
	RETVAL

double
nci_dsd( c_func, s0, d1 )
	SV* c_func
	short s0
	double d1
PREINIT:
	double (*func)( short, double );
CODE:
	func   = INT2PTR(double(*)( short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1 );
OUTPUT:
	RETVAL

double
nci_dss( c_func, s0, s1 )
	SV* c_func
	short s0
	short s1
PREINIT:
	double (*func)( short, short );
CODE:
	func   = INT2PTR(double(*)( short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1 );
OUTPUT:
	RETVAL

double
nci_dsf( c_func, s0, f1 )
	SV* c_func
	short s0
	float f1
PREINIT:
	double (*func)( short, float );
CODE:
	func   = INT2PTR(double(*)( short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1 );
OUTPUT:
	RETVAL

double
nci_dst( c_func, s0, t1 )
	SV* c_func
	short s0
	char * t1
PREINIT:
	double (*func)( short, char * );
CODE:
	func   = INT2PTR(double(*)( short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1 );
OUTPUT:
	RETVAL

double
nci_dsi( c_func, s0, i1 )
	SV* c_func
	short s0
	int i1
PREINIT:
	double (*func)( short, int );
CODE:
	func   = INT2PTR(double(*)( short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1 );
OUTPUT:
	RETVAL

double
nci_dfd( c_func, f0, d1 )
	SV* c_func
	float f0
	double d1
PREINIT:
	double (*func)( float, double );
CODE:
	func   = INT2PTR(double(*)( float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1 );
OUTPUT:
	RETVAL

double
nci_dfs( c_func, f0, s1 )
	SV* c_func
	float f0
	short s1
PREINIT:
	double (*func)( float, short );
CODE:
	func   = INT2PTR(double(*)( float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1 );
OUTPUT:
	RETVAL

double
nci_dff( c_func, f0, f1 )
	SV* c_func
	float f0
	float f1
PREINIT:
	double (*func)( float, float );
CODE:
	func   = INT2PTR(double(*)( float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1 );
OUTPUT:
	RETVAL

double
nci_dft( c_func, f0, t1 )
	SV* c_func
	float f0
	char * t1
PREINIT:
	double (*func)( float, char * );
CODE:
	func   = INT2PTR(double(*)( float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1 );
OUTPUT:
	RETVAL

double
nci_dfi( c_func, f0, i1 )
	SV* c_func
	float f0
	int i1
PREINIT:
	double (*func)( float, int );
CODE:
	func   = INT2PTR(double(*)( float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1 );
OUTPUT:
	RETVAL

double
nci_dtd( c_func, t0, d1 )
	SV* c_func
	char * t0
	double d1
PREINIT:
	double (*func)( char *, double );
CODE:
	func   = INT2PTR(double(*)( char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1 );
OUTPUT:
	RETVAL

double
nci_dts( c_func, t0, s1 )
	SV* c_func
	char * t0
	short s1
PREINIT:
	double (*func)( char *, short );
CODE:
	func   = INT2PTR(double(*)( char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1 );
OUTPUT:
	RETVAL

double
nci_dtf( c_func, t0, f1 )
	SV* c_func
	char * t0
	float f1
PREINIT:
	double (*func)( char *, float );
CODE:
	func   = INT2PTR(double(*)( char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1 );
OUTPUT:
	RETVAL

double
nci_dtt( c_func, t0, t1 )
	SV* c_func
	char * t0
	char * t1
PREINIT:
	double (*func)( char *, char * );
CODE:
	func   = INT2PTR(double(*)( char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1 );
OUTPUT:
	RETVAL

double
nci_dti( c_func, t0, i1 )
	SV* c_func
	char * t0
	int i1
PREINIT:
	double (*func)( char *, int );
CODE:
	func   = INT2PTR(double(*)( char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1 );
OUTPUT:
	RETVAL

double
nci_did( c_func, i0, d1 )
	SV* c_func
	int i0
	double d1
PREINIT:
	double (*func)( int, double );
CODE:
	func   = INT2PTR(double(*)( int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1 );
OUTPUT:
	RETVAL

double
nci_dis( c_func, i0, s1 )
	SV* c_func
	int i0
	short s1
PREINIT:
	double (*func)( int, short );
CODE:
	func   = INT2PTR(double(*)( int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1 );
OUTPUT:
	RETVAL

double
nci_dif( c_func, i0, f1 )
	SV* c_func
	int i0
	float f1
PREINIT:
	double (*func)( int, float );
CODE:
	func   = INT2PTR(double(*)( int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1 );
OUTPUT:
	RETVAL

double
nci_dit( c_func, i0, t1 )
	SV* c_func
	int i0
	char * t1
PREINIT:
	double (*func)( int, char * );
CODE:
	func   = INT2PTR(double(*)( int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1 );
OUTPUT:
	RETVAL

double
nci_dii( c_func, i0, i1 )
	SV* c_func
	int i0
	int i1
PREINIT:
	double (*func)( int, int );
CODE:
	func   = INT2PTR(double(*)( int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1 );
OUTPUT:
	RETVAL

short
nci_sdd( c_func, d0, d1 )
	SV* c_func
	double d0
	double d1
PREINIT:
	short (*func)( double, double );
CODE:
	func   = INT2PTR(short(*)( double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1 );
OUTPUT:
	RETVAL

short
nci_sds( c_func, d0, s1 )
	SV* c_func
	double d0
	short s1
PREINIT:
	short (*func)( double, short );
CODE:
	func   = INT2PTR(short(*)( double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1 );
OUTPUT:
	RETVAL

short
nci_sdf( c_func, d0, f1 )
	SV* c_func
	double d0
	float f1
PREINIT:
	short (*func)( double, float );
CODE:
	func   = INT2PTR(short(*)( double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1 );
OUTPUT:
	RETVAL

short
nci_sdt( c_func, d0, t1 )
	SV* c_func
	double d0
	char * t1
PREINIT:
	short (*func)( double, char * );
CODE:
	func   = INT2PTR(short(*)( double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1 );
OUTPUT:
	RETVAL

short
nci_sdi( c_func, d0, i1 )
	SV* c_func
	double d0
	int i1
PREINIT:
	short (*func)( double, int );
CODE:
	func   = INT2PTR(short(*)( double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1 );
OUTPUT:
	RETVAL

short
nci_ssd( c_func, s0, d1 )
	SV* c_func
	short s0
	double d1
PREINIT:
	short (*func)( short, double );
CODE:
	func   = INT2PTR(short(*)( short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1 );
OUTPUT:
	RETVAL

short
nci_sss( c_func, s0, s1 )
	SV* c_func
	short s0
	short s1
PREINIT:
	short (*func)( short, short );
CODE:
	func   = INT2PTR(short(*)( short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1 );
OUTPUT:
	RETVAL

short
nci_ssf( c_func, s0, f1 )
	SV* c_func
	short s0
	float f1
PREINIT:
	short (*func)( short, float );
CODE:
	func   = INT2PTR(short(*)( short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1 );
OUTPUT:
	RETVAL

short
nci_sst( c_func, s0, t1 )
	SV* c_func
	short s0
	char * t1
PREINIT:
	short (*func)( short, char * );
CODE:
	func   = INT2PTR(short(*)( short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1 );
OUTPUT:
	RETVAL

short
nci_ssi( c_func, s0, i1 )
	SV* c_func
	short s0
	int i1
PREINIT:
	short (*func)( short, int );
CODE:
	func   = INT2PTR(short(*)( short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1 );
OUTPUT:
	RETVAL

short
nci_sfd( c_func, f0, d1 )
	SV* c_func
	float f0
	double d1
PREINIT:
	short (*func)( float, double );
CODE:
	func   = INT2PTR(short(*)( float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1 );
OUTPUT:
	RETVAL

short
nci_sfs( c_func, f0, s1 )
	SV* c_func
	float f0
	short s1
PREINIT:
	short (*func)( float, short );
CODE:
	func   = INT2PTR(short(*)( float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1 );
OUTPUT:
	RETVAL

short
nci_sff( c_func, f0, f1 )
	SV* c_func
	float f0
	float f1
PREINIT:
	short (*func)( float, float );
CODE:
	func   = INT2PTR(short(*)( float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1 );
OUTPUT:
	RETVAL

short
nci_sft( c_func, f0, t1 )
	SV* c_func
	float f0
	char * t1
PREINIT:
	short (*func)( float, char * );
CODE:
	func   = INT2PTR(short(*)( float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1 );
OUTPUT:
	RETVAL

short
nci_sfi( c_func, f0, i1 )
	SV* c_func
	float f0
	int i1
PREINIT:
	short (*func)( float, int );
CODE:
	func   = INT2PTR(short(*)( float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1 );
OUTPUT:
	RETVAL

short
nci_std( c_func, t0, d1 )
	SV* c_func
	char * t0
	double d1
PREINIT:
	short (*func)( char *, double );
CODE:
	func   = INT2PTR(short(*)( char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1 );
OUTPUT:
	RETVAL

short
nci_sts( c_func, t0, s1 )
	SV* c_func
	char * t0
	short s1
PREINIT:
	short (*func)( char *, short );
CODE:
	func   = INT2PTR(short(*)( char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1 );
OUTPUT:
	RETVAL

short
nci_stf( c_func, t0, f1 )
	SV* c_func
	char * t0
	float f1
PREINIT:
	short (*func)( char *, float );
CODE:
	func   = INT2PTR(short(*)( char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1 );
OUTPUT:
	RETVAL

short
nci_stt( c_func, t0, t1 )
	SV* c_func
	char * t0
	char * t1
PREINIT:
	short (*func)( char *, char * );
CODE:
	func   = INT2PTR(short(*)( char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1 );
OUTPUT:
	RETVAL

short
nci_sti( c_func, t0, i1 )
	SV* c_func
	char * t0
	int i1
PREINIT:
	short (*func)( char *, int );
CODE:
	func   = INT2PTR(short(*)( char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1 );
OUTPUT:
	RETVAL

short
nci_sid( c_func, i0, d1 )
	SV* c_func
	int i0
	double d1
PREINIT:
	short (*func)( int, double );
CODE:
	func   = INT2PTR(short(*)( int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1 );
OUTPUT:
	RETVAL

short
nci_sis( c_func, i0, s1 )
	SV* c_func
	int i0
	short s1
PREINIT:
	short (*func)( int, short );
CODE:
	func   = INT2PTR(short(*)( int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1 );
OUTPUT:
	RETVAL

short
nci_sif( c_func, i0, f1 )
	SV* c_func
	int i0
	float f1
PREINIT:
	short (*func)( int, float );
CODE:
	func   = INT2PTR(short(*)( int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1 );
OUTPUT:
	RETVAL

short
nci_sit( c_func, i0, t1 )
	SV* c_func
	int i0
	char * t1
PREINIT:
	short (*func)( int, char * );
CODE:
	func   = INT2PTR(short(*)( int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1 );
OUTPUT:
	RETVAL

short
nci_sii( c_func, i0, i1 )
	SV* c_func
	int i0
	int i1
PREINIT:
	short (*func)( int, int );
CODE:
	func   = INT2PTR(short(*)( int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1 );
OUTPUT:
	RETVAL

float
nci_fdd( c_func, d0, d1 )
	SV* c_func
	double d0
	double d1
PREINIT:
	float (*func)( double, double );
CODE:
	func   = INT2PTR(float(*)( double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1 );
OUTPUT:
	RETVAL

float
nci_fds( c_func, d0, s1 )
	SV* c_func
	double d0
	short s1
PREINIT:
	float (*func)( double, short );
CODE:
	func   = INT2PTR(float(*)( double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1 );
OUTPUT:
	RETVAL

float
nci_fdf( c_func, d0, f1 )
	SV* c_func
	double d0
	float f1
PREINIT:
	float (*func)( double, float );
CODE:
	func   = INT2PTR(float(*)( double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1 );
OUTPUT:
	RETVAL

float
nci_fdt( c_func, d0, t1 )
	SV* c_func
	double d0
	char * t1
PREINIT:
	float (*func)( double, char * );
CODE:
	func   = INT2PTR(float(*)( double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1 );
OUTPUT:
	RETVAL

float
nci_fdi( c_func, d0, i1 )
	SV* c_func
	double d0
	int i1
PREINIT:
	float (*func)( double, int );
CODE:
	func   = INT2PTR(float(*)( double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1 );
OUTPUT:
	RETVAL

float
nci_fsd( c_func, s0, d1 )
	SV* c_func
	short s0
	double d1
PREINIT:
	float (*func)( short, double );
CODE:
	func   = INT2PTR(float(*)( short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1 );
OUTPUT:
	RETVAL

float
nci_fss( c_func, s0, s1 )
	SV* c_func
	short s0
	short s1
PREINIT:
	float (*func)( short, short );
CODE:
	func   = INT2PTR(float(*)( short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1 );
OUTPUT:
	RETVAL

float
nci_fsf( c_func, s0, f1 )
	SV* c_func
	short s0
	float f1
PREINIT:
	float (*func)( short, float );
CODE:
	func   = INT2PTR(float(*)( short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1 );
OUTPUT:
	RETVAL

float
nci_fst( c_func, s0, t1 )
	SV* c_func
	short s0
	char * t1
PREINIT:
	float (*func)( short, char * );
CODE:
	func   = INT2PTR(float(*)( short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1 );
OUTPUT:
	RETVAL

float
nci_fsi( c_func, s0, i1 )
	SV* c_func
	short s0
	int i1
PREINIT:
	float (*func)( short, int );
CODE:
	func   = INT2PTR(float(*)( short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1 );
OUTPUT:
	RETVAL

float
nci_ffd( c_func, f0, d1 )
	SV* c_func
	float f0
	double d1
PREINIT:
	float (*func)( float, double );
CODE:
	func   = INT2PTR(float(*)( float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1 );
OUTPUT:
	RETVAL

float
nci_ffs( c_func, f0, s1 )
	SV* c_func
	float f0
	short s1
PREINIT:
	float (*func)( float, short );
CODE:
	func   = INT2PTR(float(*)( float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1 );
OUTPUT:
	RETVAL

float
nci_fff( c_func, f0, f1 )
	SV* c_func
	float f0
	float f1
PREINIT:
	float (*func)( float, float );
CODE:
	func   = INT2PTR(float(*)( float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1 );
OUTPUT:
	RETVAL

float
nci_fft( c_func, f0, t1 )
	SV* c_func
	float f0
	char * t1
PREINIT:
	float (*func)( float, char * );
CODE:
	func   = INT2PTR(float(*)( float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1 );
OUTPUT:
	RETVAL

float
nci_ffi( c_func, f0, i1 )
	SV* c_func
	float f0
	int i1
PREINIT:
	float (*func)( float, int );
CODE:
	func   = INT2PTR(float(*)( float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1 );
OUTPUT:
	RETVAL

float
nci_ftd( c_func, t0, d1 )
	SV* c_func
	char * t0
	double d1
PREINIT:
	float (*func)( char *, double );
CODE:
	func   = INT2PTR(float(*)( char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1 );
OUTPUT:
	RETVAL

float
nci_fts( c_func, t0, s1 )
	SV* c_func
	char * t0
	short s1
PREINIT:
	float (*func)( char *, short );
CODE:
	func   = INT2PTR(float(*)( char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1 );
OUTPUT:
	RETVAL

float
nci_ftf( c_func, t0, f1 )
	SV* c_func
	char * t0
	float f1
PREINIT:
	float (*func)( char *, float );
CODE:
	func   = INT2PTR(float(*)( char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1 );
OUTPUT:
	RETVAL

float
nci_ftt( c_func, t0, t1 )
	SV* c_func
	char * t0
	char * t1
PREINIT:
	float (*func)( char *, char * );
CODE:
	func   = INT2PTR(float(*)( char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1 );
OUTPUT:
	RETVAL

float
nci_fti( c_func, t0, i1 )
	SV* c_func
	char * t0
	int i1
PREINIT:
	float (*func)( char *, int );
CODE:
	func   = INT2PTR(float(*)( char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1 );
OUTPUT:
	RETVAL

float
nci_fid( c_func, i0, d1 )
	SV* c_func
	int i0
	double d1
PREINIT:
	float (*func)( int, double );
CODE:
	func   = INT2PTR(float(*)( int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1 );
OUTPUT:
	RETVAL

float
nci_fis( c_func, i0, s1 )
	SV* c_func
	int i0
	short s1
PREINIT:
	float (*func)( int, short );
CODE:
	func   = INT2PTR(float(*)( int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1 );
OUTPUT:
	RETVAL

float
nci_fif( c_func, i0, f1 )
	SV* c_func
	int i0
	float f1
PREINIT:
	float (*func)( int, float );
CODE:
	func   = INT2PTR(float(*)( int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1 );
OUTPUT:
	RETVAL

float
nci_fit( c_func, i0, t1 )
	SV* c_func
	int i0
	char * t1
PREINIT:
	float (*func)( int, char * );
CODE:
	func   = INT2PTR(float(*)( int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1 );
OUTPUT:
	RETVAL

float
nci_fii( c_func, i0, i1 )
	SV* c_func
	int i0
	int i1
PREINIT:
	float (*func)( int, int );
CODE:
	func   = INT2PTR(float(*)( int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1 );
OUTPUT:
	RETVAL

char *
nci_tdd( c_func, d0, d1 )
	SV* c_func
	double d0
	double d1
PREINIT:
	char * (*func)( double, double );
CODE:
	func   = INT2PTR(char *(*)( double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1 );
OUTPUT:
	RETVAL

char *
nci_tds( c_func, d0, s1 )
	SV* c_func
	double d0
	short s1
PREINIT:
	char * (*func)( double, short );
CODE:
	func   = INT2PTR(char *(*)( double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1 );
OUTPUT:
	RETVAL

char *
nci_tdf( c_func, d0, f1 )
	SV* c_func
	double d0
	float f1
PREINIT:
	char * (*func)( double, float );
CODE:
	func   = INT2PTR(char *(*)( double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1 );
OUTPUT:
	RETVAL

char *
nci_tdt( c_func, d0, t1 )
	SV* c_func
	double d0
	char * t1
PREINIT:
	char * (*func)( double, char * );
CODE:
	func   = INT2PTR(char *(*)( double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1 );
OUTPUT:
	RETVAL

char *
nci_tdi( c_func, d0, i1 )
	SV* c_func
	double d0
	int i1
PREINIT:
	char * (*func)( double, int );
CODE:
	func   = INT2PTR(char *(*)( double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1 );
OUTPUT:
	RETVAL

char *
nci_tsd( c_func, s0, d1 )
	SV* c_func
	short s0
	double d1
PREINIT:
	char * (*func)( short, double );
CODE:
	func   = INT2PTR(char *(*)( short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1 );
OUTPUT:
	RETVAL

char *
nci_tss( c_func, s0, s1 )
	SV* c_func
	short s0
	short s1
PREINIT:
	char * (*func)( short, short );
CODE:
	func   = INT2PTR(char *(*)( short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1 );
OUTPUT:
	RETVAL

char *
nci_tsf( c_func, s0, f1 )
	SV* c_func
	short s0
	float f1
PREINIT:
	char * (*func)( short, float );
CODE:
	func   = INT2PTR(char *(*)( short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1 );
OUTPUT:
	RETVAL

char *
nci_tst( c_func, s0, t1 )
	SV* c_func
	short s0
	char * t1
PREINIT:
	char * (*func)( short, char * );
CODE:
	func   = INT2PTR(char *(*)( short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1 );
OUTPUT:
	RETVAL

char *
nci_tsi( c_func, s0, i1 )
	SV* c_func
	short s0
	int i1
PREINIT:
	char * (*func)( short, int );
CODE:
	func   = INT2PTR(char *(*)( short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1 );
OUTPUT:
	RETVAL

char *
nci_tfd( c_func, f0, d1 )
	SV* c_func
	float f0
	double d1
PREINIT:
	char * (*func)( float, double );
CODE:
	func   = INT2PTR(char *(*)( float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1 );
OUTPUT:
	RETVAL

char *
nci_tfs( c_func, f0, s1 )
	SV* c_func
	float f0
	short s1
PREINIT:
	char * (*func)( float, short );
CODE:
	func   = INT2PTR(char *(*)( float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1 );
OUTPUT:
	RETVAL

char *
nci_tff( c_func, f0, f1 )
	SV* c_func
	float f0
	float f1
PREINIT:
	char * (*func)( float, float );
CODE:
	func   = INT2PTR(char *(*)( float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1 );
OUTPUT:
	RETVAL

char *
nci_tft( c_func, f0, t1 )
	SV* c_func
	float f0
	char * t1
PREINIT:
	char * (*func)( float, char * );
CODE:
	func   = INT2PTR(char *(*)( float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1 );
OUTPUT:
	RETVAL

char *
nci_tfi( c_func, f0, i1 )
	SV* c_func
	float f0
	int i1
PREINIT:
	char * (*func)( float, int );
CODE:
	func   = INT2PTR(char *(*)( float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1 );
OUTPUT:
	RETVAL

char *
nci_ttd( c_func, t0, d1 )
	SV* c_func
	char * t0
	double d1
PREINIT:
	char * (*func)( char *, double );
CODE:
	func   = INT2PTR(char *(*)( char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1 );
OUTPUT:
	RETVAL

char *
nci_tts( c_func, t0, s1 )
	SV* c_func
	char * t0
	short s1
PREINIT:
	char * (*func)( char *, short );
CODE:
	func   = INT2PTR(char *(*)( char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1 );
OUTPUT:
	RETVAL

char *
nci_ttf( c_func, t0, f1 )
	SV* c_func
	char * t0
	float f1
PREINIT:
	char * (*func)( char *, float );
CODE:
	func   = INT2PTR(char *(*)( char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1 );
OUTPUT:
	RETVAL

char *
nci_ttt( c_func, t0, t1 )
	SV* c_func
	char * t0
	char * t1
PREINIT:
	char * (*func)( char *, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1 );
OUTPUT:
	RETVAL

char *
nci_tti( c_func, t0, i1 )
	SV* c_func
	char * t0
	int i1
PREINIT:
	char * (*func)( char *, int );
CODE:
	func   = INT2PTR(char *(*)( char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1 );
OUTPUT:
	RETVAL

char *
nci_tid( c_func, i0, d1 )
	SV* c_func
	int i0
	double d1
PREINIT:
	char * (*func)( int, double );
CODE:
	func   = INT2PTR(char *(*)( int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1 );
OUTPUT:
	RETVAL

char *
nci_tis( c_func, i0, s1 )
	SV* c_func
	int i0
	short s1
PREINIT:
	char * (*func)( int, short );
CODE:
	func   = INT2PTR(char *(*)( int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1 );
OUTPUT:
	RETVAL

char *
nci_tif( c_func, i0, f1 )
	SV* c_func
	int i0
	float f1
PREINIT:
	char * (*func)( int, float );
CODE:
	func   = INT2PTR(char *(*)( int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1 );
OUTPUT:
	RETVAL

char *
nci_tit( c_func, i0, t1 )
	SV* c_func
	int i0
	char * t1
PREINIT:
	char * (*func)( int, char * );
CODE:
	func   = INT2PTR(char *(*)( int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1 );
OUTPUT:
	RETVAL

char *
nci_tii( c_func, i0, i1 )
	SV* c_func
	int i0
	int i1
PREINIT:
	char * (*func)( int, int );
CODE:
	func   = INT2PTR(char *(*)( int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1 );
OUTPUT:
	RETVAL

int
nci_idd( c_func, d0, d1 )
	SV* c_func
	double d0
	double d1
PREINIT:
	int (*func)( double, double );
CODE:
	func   = INT2PTR(int(*)( double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1 );
OUTPUT:
	RETVAL

int
nci_ids( c_func, d0, s1 )
	SV* c_func
	double d0
	short s1
PREINIT:
	int (*func)( double, short );
CODE:
	func   = INT2PTR(int(*)( double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1 );
OUTPUT:
	RETVAL

int
nci_idf( c_func, d0, f1 )
	SV* c_func
	double d0
	float f1
PREINIT:
	int (*func)( double, float );
CODE:
	func   = INT2PTR(int(*)( double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1 );
OUTPUT:
	RETVAL

int
nci_idt( c_func, d0, t1 )
	SV* c_func
	double d0
	char * t1
PREINIT:
	int (*func)( double, char * );
CODE:
	func   = INT2PTR(int(*)( double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1 );
OUTPUT:
	RETVAL

int
nci_idi( c_func, d0, i1 )
	SV* c_func
	double d0
	int i1
PREINIT:
	int (*func)( double, int );
CODE:
	func   = INT2PTR(int(*)( double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1 );
OUTPUT:
	RETVAL

int
nci_isd( c_func, s0, d1 )
	SV* c_func
	short s0
	double d1
PREINIT:
	int (*func)( short, double );
CODE:
	func   = INT2PTR(int(*)( short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1 );
OUTPUT:
	RETVAL

int
nci_iss( c_func, s0, s1 )
	SV* c_func
	short s0
	short s1
PREINIT:
	int (*func)( short, short );
CODE:
	func   = INT2PTR(int(*)( short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1 );
OUTPUT:
	RETVAL

int
nci_isf( c_func, s0, f1 )
	SV* c_func
	short s0
	float f1
PREINIT:
	int (*func)( short, float );
CODE:
	func   = INT2PTR(int(*)( short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1 );
OUTPUT:
	RETVAL

int
nci_ist( c_func, s0, t1 )
	SV* c_func
	short s0
	char * t1
PREINIT:
	int (*func)( short, char * );
CODE:
	func   = INT2PTR(int(*)( short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1 );
OUTPUT:
	RETVAL

int
nci_isi( c_func, s0, i1 )
	SV* c_func
	short s0
	int i1
PREINIT:
	int (*func)( short, int );
CODE:
	func   = INT2PTR(int(*)( short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1 );
OUTPUT:
	RETVAL

int
nci_ifd( c_func, f0, d1 )
	SV* c_func
	float f0
	double d1
PREINIT:
	int (*func)( float, double );
CODE:
	func   = INT2PTR(int(*)( float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1 );
OUTPUT:
	RETVAL

int
nci_ifs( c_func, f0, s1 )
	SV* c_func
	float f0
	short s1
PREINIT:
	int (*func)( float, short );
CODE:
	func   = INT2PTR(int(*)( float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1 );
OUTPUT:
	RETVAL

int
nci_iff( c_func, f0, f1 )
	SV* c_func
	float f0
	float f1
PREINIT:
	int (*func)( float, float );
CODE:
	func   = INT2PTR(int(*)( float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1 );
OUTPUT:
	RETVAL

int
nci_ift( c_func, f0, t1 )
	SV* c_func
	float f0
	char * t1
PREINIT:
	int (*func)( float, char * );
CODE:
	func   = INT2PTR(int(*)( float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1 );
OUTPUT:
	RETVAL

int
nci_ifi( c_func, f0, i1 )
	SV* c_func
	float f0
	int i1
PREINIT:
	int (*func)( float, int );
CODE:
	func   = INT2PTR(int(*)( float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1 );
OUTPUT:
	RETVAL

int
nci_itd( c_func, t0, d1 )
	SV* c_func
	char * t0
	double d1
PREINIT:
	int (*func)( char *, double );
CODE:
	func   = INT2PTR(int(*)( char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1 );
OUTPUT:
	RETVAL

int
nci_its( c_func, t0, s1 )
	SV* c_func
	char * t0
	short s1
PREINIT:
	int (*func)( char *, short );
CODE:
	func   = INT2PTR(int(*)( char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1 );
OUTPUT:
	RETVAL

int
nci_itf( c_func, t0, f1 )
	SV* c_func
	char * t0
	float f1
PREINIT:
	int (*func)( char *, float );
CODE:
	func   = INT2PTR(int(*)( char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1 );
OUTPUT:
	RETVAL

int
nci_itt( c_func, t0, t1 )
	SV* c_func
	char * t0
	char * t1
PREINIT:
	int (*func)( char *, char * );
CODE:
	func   = INT2PTR(int(*)( char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1 );
OUTPUT:
	RETVAL

int
nci_iti( c_func, t0, i1 )
	SV* c_func
	char * t0
	int i1
PREINIT:
	int (*func)( char *, int );
CODE:
	func   = INT2PTR(int(*)( char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1 );
OUTPUT:
	RETVAL

int
nci_iid( c_func, i0, d1 )
	SV* c_func
	int i0
	double d1
PREINIT:
	int (*func)( int, double );
CODE:
	func   = INT2PTR(int(*)( int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1 );
OUTPUT:
	RETVAL

int
nci_iis( c_func, i0, s1 )
	SV* c_func
	int i0
	short s1
PREINIT:
	int (*func)( int, short );
CODE:
	func   = INT2PTR(int(*)( int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1 );
OUTPUT:
	RETVAL

int
nci_iif( c_func, i0, f1 )
	SV* c_func
	int i0
	float f1
PREINIT:
	int (*func)( int, float );
CODE:
	func   = INT2PTR(int(*)( int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1 );
OUTPUT:
	RETVAL

int
nci_iit( c_func, i0, t1 )
	SV* c_func
	int i0
	char * t1
PREINIT:
	int (*func)( int, char * );
CODE:
	func   = INT2PTR(int(*)( int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1 );
OUTPUT:
	RETVAL

int
nci_iii( c_func, i0, i1 )
	SV* c_func
	int i0
	int i1
PREINIT:
	int (*func)( int, int );
CODE:
	func   = INT2PTR(int(*)( int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1 );
OUTPUT:
	RETVAL

double
nci_dddd( c_func, d0, d1, d2 )
	SV* c_func
	double d0
	double d1
	double d2
PREINIT:
	double (*func)( double, double, double );
CODE:
	func   = INT2PTR(double(*)( double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2 );
OUTPUT:
	RETVAL

double
nci_ddds( c_func, d0, d1, s2 )
	SV* c_func
	double d0
	double d1
	short s2
PREINIT:
	double (*func)( double, double, short );
CODE:
	func   = INT2PTR(double(*)( double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2 );
OUTPUT:
	RETVAL

double
nci_dddf( c_func, d0, d1, f2 )
	SV* c_func
	double d0
	double d1
	float f2
PREINIT:
	double (*func)( double, double, float );
CODE:
	func   = INT2PTR(double(*)( double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2 );
OUTPUT:
	RETVAL

double
nci_dddt( c_func, d0, d1, t2 )
	SV* c_func
	double d0
	double d1
	char * t2
PREINIT:
	double (*func)( double, double, char * );
CODE:
	func   = INT2PTR(double(*)( double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2 );
OUTPUT:
	RETVAL

double
nci_dddi( c_func, d0, d1, i2 )
	SV* c_func
	double d0
	double d1
	int i2
PREINIT:
	double (*func)( double, double, int );
CODE:
	func   = INT2PTR(double(*)( double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2 );
OUTPUT:
	RETVAL

double
nci_ddsd( c_func, d0, s1, d2 )
	SV* c_func
	double d0
	short s1
	double d2
PREINIT:
	double (*func)( double, short, double );
CODE:
	func   = INT2PTR(double(*)( double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2 );
OUTPUT:
	RETVAL

double
nci_ddss( c_func, d0, s1, s2 )
	SV* c_func
	double d0
	short s1
	short s2
PREINIT:
	double (*func)( double, short, short );
CODE:
	func   = INT2PTR(double(*)( double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2 );
OUTPUT:
	RETVAL

double
nci_ddsf( c_func, d0, s1, f2 )
	SV* c_func
	double d0
	short s1
	float f2
PREINIT:
	double (*func)( double, short, float );
CODE:
	func   = INT2PTR(double(*)( double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2 );
OUTPUT:
	RETVAL

double
nci_ddst( c_func, d0, s1, t2 )
	SV* c_func
	double d0
	short s1
	char * t2
PREINIT:
	double (*func)( double, short, char * );
CODE:
	func   = INT2PTR(double(*)( double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2 );
OUTPUT:
	RETVAL

double
nci_ddsi( c_func, d0, s1, i2 )
	SV* c_func
	double d0
	short s1
	int i2
PREINIT:
	double (*func)( double, short, int );
CODE:
	func   = INT2PTR(double(*)( double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2 );
OUTPUT:
	RETVAL

double
nci_ddfd( c_func, d0, f1, d2 )
	SV* c_func
	double d0
	float f1
	double d2
PREINIT:
	double (*func)( double, float, double );
CODE:
	func   = INT2PTR(double(*)( double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2 );
OUTPUT:
	RETVAL

double
nci_ddfs( c_func, d0, f1, s2 )
	SV* c_func
	double d0
	float f1
	short s2
PREINIT:
	double (*func)( double, float, short );
CODE:
	func   = INT2PTR(double(*)( double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2 );
OUTPUT:
	RETVAL

double
nci_ddff( c_func, d0, f1, f2 )
	SV* c_func
	double d0
	float f1
	float f2
PREINIT:
	double (*func)( double, float, float );
CODE:
	func   = INT2PTR(double(*)( double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2 );
OUTPUT:
	RETVAL

double
nci_ddft( c_func, d0, f1, t2 )
	SV* c_func
	double d0
	float f1
	char * t2
PREINIT:
	double (*func)( double, float, char * );
CODE:
	func   = INT2PTR(double(*)( double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2 );
OUTPUT:
	RETVAL

double
nci_ddfi( c_func, d0, f1, i2 )
	SV* c_func
	double d0
	float f1
	int i2
PREINIT:
	double (*func)( double, float, int );
CODE:
	func   = INT2PTR(double(*)( double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2 );
OUTPUT:
	RETVAL

double
nci_ddtd( c_func, d0, t1, d2 )
	SV* c_func
	double d0
	char * t1
	double d2
PREINIT:
	double (*func)( double, char *, double );
CODE:
	func   = INT2PTR(double(*)( double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2 );
OUTPUT:
	RETVAL

double
nci_ddts( c_func, d0, t1, s2 )
	SV* c_func
	double d0
	char * t1
	short s2
PREINIT:
	double (*func)( double, char *, short );
CODE:
	func   = INT2PTR(double(*)( double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2 );
OUTPUT:
	RETVAL

double
nci_ddtf( c_func, d0, t1, f2 )
	SV* c_func
	double d0
	char * t1
	float f2
PREINIT:
	double (*func)( double, char *, float );
CODE:
	func   = INT2PTR(double(*)( double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2 );
OUTPUT:
	RETVAL

double
nci_ddtt( c_func, d0, t1, t2 )
	SV* c_func
	double d0
	char * t1
	char * t2
PREINIT:
	double (*func)( double, char *, char * );
CODE:
	func   = INT2PTR(double(*)( double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2 );
OUTPUT:
	RETVAL

double
nci_ddti( c_func, d0, t1, i2 )
	SV* c_func
	double d0
	char * t1
	int i2
PREINIT:
	double (*func)( double, char *, int );
CODE:
	func   = INT2PTR(double(*)( double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2 );
OUTPUT:
	RETVAL

double
nci_ddid( c_func, d0, i1, d2 )
	SV* c_func
	double d0
	int i1
	double d2
PREINIT:
	double (*func)( double, int, double );
CODE:
	func   = INT2PTR(double(*)( double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2 );
OUTPUT:
	RETVAL

double
nci_ddis( c_func, d0, i1, s2 )
	SV* c_func
	double d0
	int i1
	short s2
PREINIT:
	double (*func)( double, int, short );
CODE:
	func   = INT2PTR(double(*)( double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2 );
OUTPUT:
	RETVAL

double
nci_ddif( c_func, d0, i1, f2 )
	SV* c_func
	double d0
	int i1
	float f2
PREINIT:
	double (*func)( double, int, float );
CODE:
	func   = INT2PTR(double(*)( double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2 );
OUTPUT:
	RETVAL

double
nci_ddit( c_func, d0, i1, t2 )
	SV* c_func
	double d0
	int i1
	char * t2
PREINIT:
	double (*func)( double, int, char * );
CODE:
	func   = INT2PTR(double(*)( double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2 );
OUTPUT:
	RETVAL

double
nci_ddii( c_func, d0, i1, i2 )
	SV* c_func
	double d0
	int i1
	int i2
PREINIT:
	double (*func)( double, int, int );
CODE:
	func   = INT2PTR(double(*)( double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2 );
OUTPUT:
	RETVAL

double
nci_dsdd( c_func, s0, d1, d2 )
	SV* c_func
	short s0
	double d1
	double d2
PREINIT:
	double (*func)( short, double, double );
CODE:
	func   = INT2PTR(double(*)( short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2 );
OUTPUT:
	RETVAL

double
nci_dsds( c_func, s0, d1, s2 )
	SV* c_func
	short s0
	double d1
	short s2
PREINIT:
	double (*func)( short, double, short );
CODE:
	func   = INT2PTR(double(*)( short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2 );
OUTPUT:
	RETVAL

double
nci_dsdf( c_func, s0, d1, f2 )
	SV* c_func
	short s0
	double d1
	float f2
PREINIT:
	double (*func)( short, double, float );
CODE:
	func   = INT2PTR(double(*)( short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2 );
OUTPUT:
	RETVAL

double
nci_dsdt( c_func, s0, d1, t2 )
	SV* c_func
	short s0
	double d1
	char * t2
PREINIT:
	double (*func)( short, double, char * );
CODE:
	func   = INT2PTR(double(*)( short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2 );
OUTPUT:
	RETVAL

double
nci_dsdi( c_func, s0, d1, i2 )
	SV* c_func
	short s0
	double d1
	int i2
PREINIT:
	double (*func)( short, double, int );
CODE:
	func   = INT2PTR(double(*)( short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2 );
OUTPUT:
	RETVAL

double
nci_dssd( c_func, s0, s1, d2 )
	SV* c_func
	short s0
	short s1
	double d2
PREINIT:
	double (*func)( short, short, double );
CODE:
	func   = INT2PTR(double(*)( short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2 );
OUTPUT:
	RETVAL

double
nci_dsss( c_func, s0, s1, s2 )
	SV* c_func
	short s0
	short s1
	short s2
PREINIT:
	double (*func)( short, short, short );
CODE:
	func   = INT2PTR(double(*)( short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2 );
OUTPUT:
	RETVAL

double
nci_dssf( c_func, s0, s1, f2 )
	SV* c_func
	short s0
	short s1
	float f2
PREINIT:
	double (*func)( short, short, float );
CODE:
	func   = INT2PTR(double(*)( short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2 );
OUTPUT:
	RETVAL

double
nci_dsst( c_func, s0, s1, t2 )
	SV* c_func
	short s0
	short s1
	char * t2
PREINIT:
	double (*func)( short, short, char * );
CODE:
	func   = INT2PTR(double(*)( short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2 );
OUTPUT:
	RETVAL

double
nci_dssi( c_func, s0, s1, i2 )
	SV* c_func
	short s0
	short s1
	int i2
PREINIT:
	double (*func)( short, short, int );
CODE:
	func   = INT2PTR(double(*)( short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2 );
OUTPUT:
	RETVAL

double
nci_dsfd( c_func, s0, f1, d2 )
	SV* c_func
	short s0
	float f1
	double d2
PREINIT:
	double (*func)( short, float, double );
CODE:
	func   = INT2PTR(double(*)( short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2 );
OUTPUT:
	RETVAL

double
nci_dsfs( c_func, s0, f1, s2 )
	SV* c_func
	short s0
	float f1
	short s2
PREINIT:
	double (*func)( short, float, short );
CODE:
	func   = INT2PTR(double(*)( short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2 );
OUTPUT:
	RETVAL

double
nci_dsff( c_func, s0, f1, f2 )
	SV* c_func
	short s0
	float f1
	float f2
PREINIT:
	double (*func)( short, float, float );
CODE:
	func   = INT2PTR(double(*)( short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2 );
OUTPUT:
	RETVAL

double
nci_dsft( c_func, s0, f1, t2 )
	SV* c_func
	short s0
	float f1
	char * t2
PREINIT:
	double (*func)( short, float, char * );
CODE:
	func   = INT2PTR(double(*)( short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2 );
OUTPUT:
	RETVAL

double
nci_dsfi( c_func, s0, f1, i2 )
	SV* c_func
	short s0
	float f1
	int i2
PREINIT:
	double (*func)( short, float, int );
CODE:
	func   = INT2PTR(double(*)( short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2 );
OUTPUT:
	RETVAL

double
nci_dstd( c_func, s0, t1, d2 )
	SV* c_func
	short s0
	char * t1
	double d2
PREINIT:
	double (*func)( short, char *, double );
CODE:
	func   = INT2PTR(double(*)( short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2 );
OUTPUT:
	RETVAL

double
nci_dsts( c_func, s0, t1, s2 )
	SV* c_func
	short s0
	char * t1
	short s2
PREINIT:
	double (*func)( short, char *, short );
CODE:
	func   = INT2PTR(double(*)( short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2 );
OUTPUT:
	RETVAL

double
nci_dstf( c_func, s0, t1, f2 )
	SV* c_func
	short s0
	char * t1
	float f2
PREINIT:
	double (*func)( short, char *, float );
CODE:
	func   = INT2PTR(double(*)( short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2 );
OUTPUT:
	RETVAL

double
nci_dstt( c_func, s0, t1, t2 )
	SV* c_func
	short s0
	char * t1
	char * t2
PREINIT:
	double (*func)( short, char *, char * );
CODE:
	func   = INT2PTR(double(*)( short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2 );
OUTPUT:
	RETVAL

double
nci_dsti( c_func, s0, t1, i2 )
	SV* c_func
	short s0
	char * t1
	int i2
PREINIT:
	double (*func)( short, char *, int );
CODE:
	func   = INT2PTR(double(*)( short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2 );
OUTPUT:
	RETVAL

double
nci_dsid( c_func, s0, i1, d2 )
	SV* c_func
	short s0
	int i1
	double d2
PREINIT:
	double (*func)( short, int, double );
CODE:
	func   = INT2PTR(double(*)( short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2 );
OUTPUT:
	RETVAL

double
nci_dsis( c_func, s0, i1, s2 )
	SV* c_func
	short s0
	int i1
	short s2
PREINIT:
	double (*func)( short, int, short );
CODE:
	func   = INT2PTR(double(*)( short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2 );
OUTPUT:
	RETVAL

double
nci_dsif( c_func, s0, i1, f2 )
	SV* c_func
	short s0
	int i1
	float f2
PREINIT:
	double (*func)( short, int, float );
CODE:
	func   = INT2PTR(double(*)( short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2 );
OUTPUT:
	RETVAL

double
nci_dsit( c_func, s0, i1, t2 )
	SV* c_func
	short s0
	int i1
	char * t2
PREINIT:
	double (*func)( short, int, char * );
CODE:
	func   = INT2PTR(double(*)( short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2 );
OUTPUT:
	RETVAL

double
nci_dsii( c_func, s0, i1, i2 )
	SV* c_func
	short s0
	int i1
	int i2
PREINIT:
	double (*func)( short, int, int );
CODE:
	func   = INT2PTR(double(*)( short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2 );
OUTPUT:
	RETVAL

double
nci_dfdd( c_func, f0, d1, d2 )
	SV* c_func
	float f0
	double d1
	double d2
PREINIT:
	double (*func)( float, double, double );
CODE:
	func   = INT2PTR(double(*)( float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2 );
OUTPUT:
	RETVAL

double
nci_dfds( c_func, f0, d1, s2 )
	SV* c_func
	float f0
	double d1
	short s2
PREINIT:
	double (*func)( float, double, short );
CODE:
	func   = INT2PTR(double(*)( float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2 );
OUTPUT:
	RETVAL

double
nci_dfdf( c_func, f0, d1, f2 )
	SV* c_func
	float f0
	double d1
	float f2
PREINIT:
	double (*func)( float, double, float );
CODE:
	func   = INT2PTR(double(*)( float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2 );
OUTPUT:
	RETVAL

double
nci_dfdt( c_func, f0, d1, t2 )
	SV* c_func
	float f0
	double d1
	char * t2
PREINIT:
	double (*func)( float, double, char * );
CODE:
	func   = INT2PTR(double(*)( float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2 );
OUTPUT:
	RETVAL

double
nci_dfdi( c_func, f0, d1, i2 )
	SV* c_func
	float f0
	double d1
	int i2
PREINIT:
	double (*func)( float, double, int );
CODE:
	func   = INT2PTR(double(*)( float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2 );
OUTPUT:
	RETVAL

double
nci_dfsd( c_func, f0, s1, d2 )
	SV* c_func
	float f0
	short s1
	double d2
PREINIT:
	double (*func)( float, short, double );
CODE:
	func   = INT2PTR(double(*)( float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2 );
OUTPUT:
	RETVAL

double
nci_dfss( c_func, f0, s1, s2 )
	SV* c_func
	float f0
	short s1
	short s2
PREINIT:
	double (*func)( float, short, short );
CODE:
	func   = INT2PTR(double(*)( float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2 );
OUTPUT:
	RETVAL

double
nci_dfsf( c_func, f0, s1, f2 )
	SV* c_func
	float f0
	short s1
	float f2
PREINIT:
	double (*func)( float, short, float );
CODE:
	func   = INT2PTR(double(*)( float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2 );
OUTPUT:
	RETVAL

double
nci_dfst( c_func, f0, s1, t2 )
	SV* c_func
	float f0
	short s1
	char * t2
PREINIT:
	double (*func)( float, short, char * );
CODE:
	func   = INT2PTR(double(*)( float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2 );
OUTPUT:
	RETVAL

double
nci_dfsi( c_func, f0, s1, i2 )
	SV* c_func
	float f0
	short s1
	int i2
PREINIT:
	double (*func)( float, short, int );
CODE:
	func   = INT2PTR(double(*)( float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2 );
OUTPUT:
	RETVAL

double
nci_dffd( c_func, f0, f1, d2 )
	SV* c_func
	float f0
	float f1
	double d2
PREINIT:
	double (*func)( float, float, double );
CODE:
	func   = INT2PTR(double(*)( float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2 );
OUTPUT:
	RETVAL

double
nci_dffs( c_func, f0, f1, s2 )
	SV* c_func
	float f0
	float f1
	short s2
PREINIT:
	double (*func)( float, float, short );
CODE:
	func   = INT2PTR(double(*)( float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2 );
OUTPUT:
	RETVAL

double
nci_dfff( c_func, f0, f1, f2 )
	SV* c_func
	float f0
	float f1
	float f2
PREINIT:
	double (*func)( float, float, float );
CODE:
	func   = INT2PTR(double(*)( float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2 );
OUTPUT:
	RETVAL

double
nci_dfft( c_func, f0, f1, t2 )
	SV* c_func
	float f0
	float f1
	char * t2
PREINIT:
	double (*func)( float, float, char * );
CODE:
	func   = INT2PTR(double(*)( float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2 );
OUTPUT:
	RETVAL

double
nci_dffi( c_func, f0, f1, i2 )
	SV* c_func
	float f0
	float f1
	int i2
PREINIT:
	double (*func)( float, float, int );
CODE:
	func   = INT2PTR(double(*)( float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2 );
OUTPUT:
	RETVAL

double
nci_dftd( c_func, f0, t1, d2 )
	SV* c_func
	float f0
	char * t1
	double d2
PREINIT:
	double (*func)( float, char *, double );
CODE:
	func   = INT2PTR(double(*)( float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2 );
OUTPUT:
	RETVAL

double
nci_dfts( c_func, f0, t1, s2 )
	SV* c_func
	float f0
	char * t1
	short s2
PREINIT:
	double (*func)( float, char *, short );
CODE:
	func   = INT2PTR(double(*)( float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2 );
OUTPUT:
	RETVAL

double
nci_dftf( c_func, f0, t1, f2 )
	SV* c_func
	float f0
	char * t1
	float f2
PREINIT:
	double (*func)( float, char *, float );
CODE:
	func   = INT2PTR(double(*)( float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2 );
OUTPUT:
	RETVAL

double
nci_dftt( c_func, f0, t1, t2 )
	SV* c_func
	float f0
	char * t1
	char * t2
PREINIT:
	double (*func)( float, char *, char * );
CODE:
	func   = INT2PTR(double(*)( float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2 );
OUTPUT:
	RETVAL

double
nci_dfti( c_func, f0, t1, i2 )
	SV* c_func
	float f0
	char * t1
	int i2
PREINIT:
	double (*func)( float, char *, int );
CODE:
	func   = INT2PTR(double(*)( float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2 );
OUTPUT:
	RETVAL

double
nci_dfid( c_func, f0, i1, d2 )
	SV* c_func
	float f0
	int i1
	double d2
PREINIT:
	double (*func)( float, int, double );
CODE:
	func   = INT2PTR(double(*)( float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2 );
OUTPUT:
	RETVAL

double
nci_dfis( c_func, f0, i1, s2 )
	SV* c_func
	float f0
	int i1
	short s2
PREINIT:
	double (*func)( float, int, short );
CODE:
	func   = INT2PTR(double(*)( float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2 );
OUTPUT:
	RETVAL

double
nci_dfif( c_func, f0, i1, f2 )
	SV* c_func
	float f0
	int i1
	float f2
PREINIT:
	double (*func)( float, int, float );
CODE:
	func   = INT2PTR(double(*)( float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2 );
OUTPUT:
	RETVAL

double
nci_dfit( c_func, f0, i1, t2 )
	SV* c_func
	float f0
	int i1
	char * t2
PREINIT:
	double (*func)( float, int, char * );
CODE:
	func   = INT2PTR(double(*)( float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2 );
OUTPUT:
	RETVAL

double
nci_dfii( c_func, f0, i1, i2 )
	SV* c_func
	float f0
	int i1
	int i2
PREINIT:
	double (*func)( float, int, int );
CODE:
	func   = INT2PTR(double(*)( float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2 );
OUTPUT:
	RETVAL

double
nci_dtdd( c_func, t0, d1, d2 )
	SV* c_func
	char * t0
	double d1
	double d2
PREINIT:
	double (*func)( char *, double, double );
CODE:
	func   = INT2PTR(double(*)( char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2 );
OUTPUT:
	RETVAL

double
nci_dtds( c_func, t0, d1, s2 )
	SV* c_func
	char * t0
	double d1
	short s2
PREINIT:
	double (*func)( char *, double, short );
CODE:
	func   = INT2PTR(double(*)( char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2 );
OUTPUT:
	RETVAL

double
nci_dtdf( c_func, t0, d1, f2 )
	SV* c_func
	char * t0
	double d1
	float f2
PREINIT:
	double (*func)( char *, double, float );
CODE:
	func   = INT2PTR(double(*)( char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2 );
OUTPUT:
	RETVAL

double
nci_dtdt( c_func, t0, d1, t2 )
	SV* c_func
	char * t0
	double d1
	char * t2
PREINIT:
	double (*func)( char *, double, char * );
CODE:
	func   = INT2PTR(double(*)( char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2 );
OUTPUT:
	RETVAL

double
nci_dtdi( c_func, t0, d1, i2 )
	SV* c_func
	char * t0
	double d1
	int i2
PREINIT:
	double (*func)( char *, double, int );
CODE:
	func   = INT2PTR(double(*)( char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2 );
OUTPUT:
	RETVAL

double
nci_dtsd( c_func, t0, s1, d2 )
	SV* c_func
	char * t0
	short s1
	double d2
PREINIT:
	double (*func)( char *, short, double );
CODE:
	func   = INT2PTR(double(*)( char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2 );
OUTPUT:
	RETVAL

double
nci_dtss( c_func, t0, s1, s2 )
	SV* c_func
	char * t0
	short s1
	short s2
PREINIT:
	double (*func)( char *, short, short );
CODE:
	func   = INT2PTR(double(*)( char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2 );
OUTPUT:
	RETVAL

double
nci_dtsf( c_func, t0, s1, f2 )
	SV* c_func
	char * t0
	short s1
	float f2
PREINIT:
	double (*func)( char *, short, float );
CODE:
	func   = INT2PTR(double(*)( char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2 );
OUTPUT:
	RETVAL

double
nci_dtst( c_func, t0, s1, t2 )
	SV* c_func
	char * t0
	short s1
	char * t2
PREINIT:
	double (*func)( char *, short, char * );
CODE:
	func   = INT2PTR(double(*)( char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2 );
OUTPUT:
	RETVAL

double
nci_dtsi( c_func, t0, s1, i2 )
	SV* c_func
	char * t0
	short s1
	int i2
PREINIT:
	double (*func)( char *, short, int );
CODE:
	func   = INT2PTR(double(*)( char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2 );
OUTPUT:
	RETVAL

double
nci_dtfd( c_func, t0, f1, d2 )
	SV* c_func
	char * t0
	float f1
	double d2
PREINIT:
	double (*func)( char *, float, double );
CODE:
	func   = INT2PTR(double(*)( char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2 );
OUTPUT:
	RETVAL

double
nci_dtfs( c_func, t0, f1, s2 )
	SV* c_func
	char * t0
	float f1
	short s2
PREINIT:
	double (*func)( char *, float, short );
CODE:
	func   = INT2PTR(double(*)( char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2 );
OUTPUT:
	RETVAL

double
nci_dtff( c_func, t0, f1, f2 )
	SV* c_func
	char * t0
	float f1
	float f2
PREINIT:
	double (*func)( char *, float, float );
CODE:
	func   = INT2PTR(double(*)( char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2 );
OUTPUT:
	RETVAL

double
nci_dtft( c_func, t0, f1, t2 )
	SV* c_func
	char * t0
	float f1
	char * t2
PREINIT:
	double (*func)( char *, float, char * );
CODE:
	func   = INT2PTR(double(*)( char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2 );
OUTPUT:
	RETVAL

double
nci_dtfi( c_func, t0, f1, i2 )
	SV* c_func
	char * t0
	float f1
	int i2
PREINIT:
	double (*func)( char *, float, int );
CODE:
	func   = INT2PTR(double(*)( char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2 );
OUTPUT:
	RETVAL

double
nci_dttd( c_func, t0, t1, d2 )
	SV* c_func
	char * t0
	char * t1
	double d2
PREINIT:
	double (*func)( char *, char *, double );
CODE:
	func   = INT2PTR(double(*)( char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2 );
OUTPUT:
	RETVAL

double
nci_dtts( c_func, t0, t1, s2 )
	SV* c_func
	char * t0
	char * t1
	short s2
PREINIT:
	double (*func)( char *, char *, short );
CODE:
	func   = INT2PTR(double(*)( char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2 );
OUTPUT:
	RETVAL

double
nci_dttf( c_func, t0, t1, f2 )
	SV* c_func
	char * t0
	char * t1
	float f2
PREINIT:
	double (*func)( char *, char *, float );
CODE:
	func   = INT2PTR(double(*)( char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2 );
OUTPUT:
	RETVAL

double
nci_dttt( c_func, t0, t1, t2 )
	SV* c_func
	char * t0
	char * t1
	char * t2
PREINIT:
	double (*func)( char *, char *, char * );
CODE:
	func   = INT2PTR(double(*)( char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2 );
OUTPUT:
	RETVAL

double
nci_dtti( c_func, t0, t1, i2 )
	SV* c_func
	char * t0
	char * t1
	int i2
PREINIT:
	double (*func)( char *, char *, int );
CODE:
	func   = INT2PTR(double(*)( char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2 );
OUTPUT:
	RETVAL

double
nci_dtid( c_func, t0, i1, d2 )
	SV* c_func
	char * t0
	int i1
	double d2
PREINIT:
	double (*func)( char *, int, double );
CODE:
	func   = INT2PTR(double(*)( char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2 );
OUTPUT:
	RETVAL

double
nci_dtis( c_func, t0, i1, s2 )
	SV* c_func
	char * t0
	int i1
	short s2
PREINIT:
	double (*func)( char *, int, short );
CODE:
	func   = INT2PTR(double(*)( char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2 );
OUTPUT:
	RETVAL

double
nci_dtif( c_func, t0, i1, f2 )
	SV* c_func
	char * t0
	int i1
	float f2
PREINIT:
	double (*func)( char *, int, float );
CODE:
	func   = INT2PTR(double(*)( char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2 );
OUTPUT:
	RETVAL

double
nci_dtit( c_func, t0, i1, t2 )
	SV* c_func
	char * t0
	int i1
	char * t2
PREINIT:
	double (*func)( char *, int, char * );
CODE:
	func   = INT2PTR(double(*)( char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2 );
OUTPUT:
	RETVAL

double
nci_dtii( c_func, t0, i1, i2 )
	SV* c_func
	char * t0
	int i1
	int i2
PREINIT:
	double (*func)( char *, int, int );
CODE:
	func   = INT2PTR(double(*)( char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2 );
OUTPUT:
	RETVAL

double
nci_didd( c_func, i0, d1, d2 )
	SV* c_func
	int i0
	double d1
	double d2
PREINIT:
	double (*func)( int, double, double );
CODE:
	func   = INT2PTR(double(*)( int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2 );
OUTPUT:
	RETVAL

double
nci_dids( c_func, i0, d1, s2 )
	SV* c_func
	int i0
	double d1
	short s2
PREINIT:
	double (*func)( int, double, short );
CODE:
	func   = INT2PTR(double(*)( int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2 );
OUTPUT:
	RETVAL

double
nci_didf( c_func, i0, d1, f2 )
	SV* c_func
	int i0
	double d1
	float f2
PREINIT:
	double (*func)( int, double, float );
CODE:
	func   = INT2PTR(double(*)( int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2 );
OUTPUT:
	RETVAL

double
nci_didt( c_func, i0, d1, t2 )
	SV* c_func
	int i0
	double d1
	char * t2
PREINIT:
	double (*func)( int, double, char * );
CODE:
	func   = INT2PTR(double(*)( int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2 );
OUTPUT:
	RETVAL

double
nci_didi( c_func, i0, d1, i2 )
	SV* c_func
	int i0
	double d1
	int i2
PREINIT:
	double (*func)( int, double, int );
CODE:
	func   = INT2PTR(double(*)( int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2 );
OUTPUT:
	RETVAL

double
nci_disd( c_func, i0, s1, d2 )
	SV* c_func
	int i0
	short s1
	double d2
PREINIT:
	double (*func)( int, short, double );
CODE:
	func   = INT2PTR(double(*)( int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2 );
OUTPUT:
	RETVAL

double
nci_diss( c_func, i0, s1, s2 )
	SV* c_func
	int i0
	short s1
	short s2
PREINIT:
	double (*func)( int, short, short );
CODE:
	func   = INT2PTR(double(*)( int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2 );
OUTPUT:
	RETVAL

double
nci_disf( c_func, i0, s1, f2 )
	SV* c_func
	int i0
	short s1
	float f2
PREINIT:
	double (*func)( int, short, float );
CODE:
	func   = INT2PTR(double(*)( int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2 );
OUTPUT:
	RETVAL

double
nci_dist( c_func, i0, s1, t2 )
	SV* c_func
	int i0
	short s1
	char * t2
PREINIT:
	double (*func)( int, short, char * );
CODE:
	func   = INT2PTR(double(*)( int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2 );
OUTPUT:
	RETVAL

double
nci_disi( c_func, i0, s1, i2 )
	SV* c_func
	int i0
	short s1
	int i2
PREINIT:
	double (*func)( int, short, int );
CODE:
	func   = INT2PTR(double(*)( int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2 );
OUTPUT:
	RETVAL

double
nci_difd( c_func, i0, f1, d2 )
	SV* c_func
	int i0
	float f1
	double d2
PREINIT:
	double (*func)( int, float, double );
CODE:
	func   = INT2PTR(double(*)( int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2 );
OUTPUT:
	RETVAL

double
nci_difs( c_func, i0, f1, s2 )
	SV* c_func
	int i0
	float f1
	short s2
PREINIT:
	double (*func)( int, float, short );
CODE:
	func   = INT2PTR(double(*)( int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2 );
OUTPUT:
	RETVAL

double
nci_diff( c_func, i0, f1, f2 )
	SV* c_func
	int i0
	float f1
	float f2
PREINIT:
	double (*func)( int, float, float );
CODE:
	func   = INT2PTR(double(*)( int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2 );
OUTPUT:
	RETVAL

double
nci_dift( c_func, i0, f1, t2 )
	SV* c_func
	int i0
	float f1
	char * t2
PREINIT:
	double (*func)( int, float, char * );
CODE:
	func   = INT2PTR(double(*)( int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2 );
OUTPUT:
	RETVAL

double
nci_difi( c_func, i0, f1, i2 )
	SV* c_func
	int i0
	float f1
	int i2
PREINIT:
	double (*func)( int, float, int );
CODE:
	func   = INT2PTR(double(*)( int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2 );
OUTPUT:
	RETVAL

double
nci_ditd( c_func, i0, t1, d2 )
	SV* c_func
	int i0
	char * t1
	double d2
PREINIT:
	double (*func)( int, char *, double );
CODE:
	func   = INT2PTR(double(*)( int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2 );
OUTPUT:
	RETVAL

double
nci_dits( c_func, i0, t1, s2 )
	SV* c_func
	int i0
	char * t1
	short s2
PREINIT:
	double (*func)( int, char *, short );
CODE:
	func   = INT2PTR(double(*)( int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2 );
OUTPUT:
	RETVAL

double
nci_ditf( c_func, i0, t1, f2 )
	SV* c_func
	int i0
	char * t1
	float f2
PREINIT:
	double (*func)( int, char *, float );
CODE:
	func   = INT2PTR(double(*)( int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2 );
OUTPUT:
	RETVAL

double
nci_ditt( c_func, i0, t1, t2 )
	SV* c_func
	int i0
	char * t1
	char * t2
PREINIT:
	double (*func)( int, char *, char * );
CODE:
	func   = INT2PTR(double(*)( int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2 );
OUTPUT:
	RETVAL

double
nci_diti( c_func, i0, t1, i2 )
	SV* c_func
	int i0
	char * t1
	int i2
PREINIT:
	double (*func)( int, char *, int );
CODE:
	func   = INT2PTR(double(*)( int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2 );
OUTPUT:
	RETVAL

double
nci_diid( c_func, i0, i1, d2 )
	SV* c_func
	int i0
	int i1
	double d2
PREINIT:
	double (*func)( int, int, double );
CODE:
	func   = INT2PTR(double(*)( int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2 );
OUTPUT:
	RETVAL

double
nci_diis( c_func, i0, i1, s2 )
	SV* c_func
	int i0
	int i1
	short s2
PREINIT:
	double (*func)( int, int, short );
CODE:
	func   = INT2PTR(double(*)( int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2 );
OUTPUT:
	RETVAL

double
nci_diif( c_func, i0, i1, f2 )
	SV* c_func
	int i0
	int i1
	float f2
PREINIT:
	double (*func)( int, int, float );
CODE:
	func   = INT2PTR(double(*)( int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2 );
OUTPUT:
	RETVAL

double
nci_diit( c_func, i0, i1, t2 )
	SV* c_func
	int i0
	int i1
	char * t2
PREINIT:
	double (*func)( int, int, char * );
CODE:
	func   = INT2PTR(double(*)( int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2 );
OUTPUT:
	RETVAL

double
nci_diii( c_func, i0, i1, i2 )
	SV* c_func
	int i0
	int i1
	int i2
PREINIT:
	double (*func)( int, int, int );
CODE:
	func   = INT2PTR(double(*)( int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2 );
OUTPUT:
	RETVAL

short
nci_sddd( c_func, d0, d1, d2 )
	SV* c_func
	double d0
	double d1
	double d2
PREINIT:
	short (*func)( double, double, double );
CODE:
	func   = INT2PTR(short(*)( double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2 );
OUTPUT:
	RETVAL

short
nci_sdds( c_func, d0, d1, s2 )
	SV* c_func
	double d0
	double d1
	short s2
PREINIT:
	short (*func)( double, double, short );
CODE:
	func   = INT2PTR(short(*)( double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2 );
OUTPUT:
	RETVAL

short
nci_sddf( c_func, d0, d1, f2 )
	SV* c_func
	double d0
	double d1
	float f2
PREINIT:
	short (*func)( double, double, float );
CODE:
	func   = INT2PTR(short(*)( double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2 );
OUTPUT:
	RETVAL

short
nci_sddt( c_func, d0, d1, t2 )
	SV* c_func
	double d0
	double d1
	char * t2
PREINIT:
	short (*func)( double, double, char * );
CODE:
	func   = INT2PTR(short(*)( double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2 );
OUTPUT:
	RETVAL

short
nci_sddi( c_func, d0, d1, i2 )
	SV* c_func
	double d0
	double d1
	int i2
PREINIT:
	short (*func)( double, double, int );
CODE:
	func   = INT2PTR(short(*)( double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2 );
OUTPUT:
	RETVAL

short
nci_sdsd( c_func, d0, s1, d2 )
	SV* c_func
	double d0
	short s1
	double d2
PREINIT:
	short (*func)( double, short, double );
CODE:
	func   = INT2PTR(short(*)( double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2 );
OUTPUT:
	RETVAL

short
nci_sdss( c_func, d0, s1, s2 )
	SV* c_func
	double d0
	short s1
	short s2
PREINIT:
	short (*func)( double, short, short );
CODE:
	func   = INT2PTR(short(*)( double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2 );
OUTPUT:
	RETVAL

short
nci_sdsf( c_func, d0, s1, f2 )
	SV* c_func
	double d0
	short s1
	float f2
PREINIT:
	short (*func)( double, short, float );
CODE:
	func   = INT2PTR(short(*)( double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2 );
OUTPUT:
	RETVAL

short
nci_sdst( c_func, d0, s1, t2 )
	SV* c_func
	double d0
	short s1
	char * t2
PREINIT:
	short (*func)( double, short, char * );
CODE:
	func   = INT2PTR(short(*)( double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2 );
OUTPUT:
	RETVAL

short
nci_sdsi( c_func, d0, s1, i2 )
	SV* c_func
	double d0
	short s1
	int i2
PREINIT:
	short (*func)( double, short, int );
CODE:
	func   = INT2PTR(short(*)( double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2 );
OUTPUT:
	RETVAL

short
nci_sdfd( c_func, d0, f1, d2 )
	SV* c_func
	double d0
	float f1
	double d2
PREINIT:
	short (*func)( double, float, double );
CODE:
	func   = INT2PTR(short(*)( double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2 );
OUTPUT:
	RETVAL

short
nci_sdfs( c_func, d0, f1, s2 )
	SV* c_func
	double d0
	float f1
	short s2
PREINIT:
	short (*func)( double, float, short );
CODE:
	func   = INT2PTR(short(*)( double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2 );
OUTPUT:
	RETVAL

short
nci_sdff( c_func, d0, f1, f2 )
	SV* c_func
	double d0
	float f1
	float f2
PREINIT:
	short (*func)( double, float, float );
CODE:
	func   = INT2PTR(short(*)( double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2 );
OUTPUT:
	RETVAL

short
nci_sdft( c_func, d0, f1, t2 )
	SV* c_func
	double d0
	float f1
	char * t2
PREINIT:
	short (*func)( double, float, char * );
CODE:
	func   = INT2PTR(short(*)( double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2 );
OUTPUT:
	RETVAL

short
nci_sdfi( c_func, d0, f1, i2 )
	SV* c_func
	double d0
	float f1
	int i2
PREINIT:
	short (*func)( double, float, int );
CODE:
	func   = INT2PTR(short(*)( double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2 );
OUTPUT:
	RETVAL

short
nci_sdtd( c_func, d0, t1, d2 )
	SV* c_func
	double d0
	char * t1
	double d2
PREINIT:
	short (*func)( double, char *, double );
CODE:
	func   = INT2PTR(short(*)( double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2 );
OUTPUT:
	RETVAL

short
nci_sdts( c_func, d0, t1, s2 )
	SV* c_func
	double d0
	char * t1
	short s2
PREINIT:
	short (*func)( double, char *, short );
CODE:
	func   = INT2PTR(short(*)( double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2 );
OUTPUT:
	RETVAL

short
nci_sdtf( c_func, d0, t1, f2 )
	SV* c_func
	double d0
	char * t1
	float f2
PREINIT:
	short (*func)( double, char *, float );
CODE:
	func   = INT2PTR(short(*)( double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2 );
OUTPUT:
	RETVAL

short
nci_sdtt( c_func, d0, t1, t2 )
	SV* c_func
	double d0
	char * t1
	char * t2
PREINIT:
	short (*func)( double, char *, char * );
CODE:
	func   = INT2PTR(short(*)( double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2 );
OUTPUT:
	RETVAL

short
nci_sdti( c_func, d0, t1, i2 )
	SV* c_func
	double d0
	char * t1
	int i2
PREINIT:
	short (*func)( double, char *, int );
CODE:
	func   = INT2PTR(short(*)( double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2 );
OUTPUT:
	RETVAL

short
nci_sdid( c_func, d0, i1, d2 )
	SV* c_func
	double d0
	int i1
	double d2
PREINIT:
	short (*func)( double, int, double );
CODE:
	func   = INT2PTR(short(*)( double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2 );
OUTPUT:
	RETVAL

short
nci_sdis( c_func, d0, i1, s2 )
	SV* c_func
	double d0
	int i1
	short s2
PREINIT:
	short (*func)( double, int, short );
CODE:
	func   = INT2PTR(short(*)( double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2 );
OUTPUT:
	RETVAL

short
nci_sdif( c_func, d0, i1, f2 )
	SV* c_func
	double d0
	int i1
	float f2
PREINIT:
	short (*func)( double, int, float );
CODE:
	func   = INT2PTR(short(*)( double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2 );
OUTPUT:
	RETVAL

short
nci_sdit( c_func, d0, i1, t2 )
	SV* c_func
	double d0
	int i1
	char * t2
PREINIT:
	short (*func)( double, int, char * );
CODE:
	func   = INT2PTR(short(*)( double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2 );
OUTPUT:
	RETVAL

short
nci_sdii( c_func, d0, i1, i2 )
	SV* c_func
	double d0
	int i1
	int i2
PREINIT:
	short (*func)( double, int, int );
CODE:
	func   = INT2PTR(short(*)( double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2 );
OUTPUT:
	RETVAL

short
nci_ssdd( c_func, s0, d1, d2 )
	SV* c_func
	short s0
	double d1
	double d2
PREINIT:
	short (*func)( short, double, double );
CODE:
	func   = INT2PTR(short(*)( short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2 );
OUTPUT:
	RETVAL

short
nci_ssds( c_func, s0, d1, s2 )
	SV* c_func
	short s0
	double d1
	short s2
PREINIT:
	short (*func)( short, double, short );
CODE:
	func   = INT2PTR(short(*)( short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2 );
OUTPUT:
	RETVAL

short
nci_ssdf( c_func, s0, d1, f2 )
	SV* c_func
	short s0
	double d1
	float f2
PREINIT:
	short (*func)( short, double, float );
CODE:
	func   = INT2PTR(short(*)( short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2 );
OUTPUT:
	RETVAL

short
nci_ssdt( c_func, s0, d1, t2 )
	SV* c_func
	short s0
	double d1
	char * t2
PREINIT:
	short (*func)( short, double, char * );
CODE:
	func   = INT2PTR(short(*)( short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2 );
OUTPUT:
	RETVAL

short
nci_ssdi( c_func, s0, d1, i2 )
	SV* c_func
	short s0
	double d1
	int i2
PREINIT:
	short (*func)( short, double, int );
CODE:
	func   = INT2PTR(short(*)( short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2 );
OUTPUT:
	RETVAL

short
nci_sssd( c_func, s0, s1, d2 )
	SV* c_func
	short s0
	short s1
	double d2
PREINIT:
	short (*func)( short, short, double );
CODE:
	func   = INT2PTR(short(*)( short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2 );
OUTPUT:
	RETVAL

short
nci_ssss( c_func, s0, s1, s2 )
	SV* c_func
	short s0
	short s1
	short s2
PREINIT:
	short (*func)( short, short, short );
CODE:
	func   = INT2PTR(short(*)( short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2 );
OUTPUT:
	RETVAL

short
nci_sssf( c_func, s0, s1, f2 )
	SV* c_func
	short s0
	short s1
	float f2
PREINIT:
	short (*func)( short, short, float );
CODE:
	func   = INT2PTR(short(*)( short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2 );
OUTPUT:
	RETVAL

short
nci_ssst( c_func, s0, s1, t2 )
	SV* c_func
	short s0
	short s1
	char * t2
PREINIT:
	short (*func)( short, short, char * );
CODE:
	func   = INT2PTR(short(*)( short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2 );
OUTPUT:
	RETVAL

short
nci_sssi( c_func, s0, s1, i2 )
	SV* c_func
	short s0
	short s1
	int i2
PREINIT:
	short (*func)( short, short, int );
CODE:
	func   = INT2PTR(short(*)( short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2 );
OUTPUT:
	RETVAL

short
nci_ssfd( c_func, s0, f1, d2 )
	SV* c_func
	short s0
	float f1
	double d2
PREINIT:
	short (*func)( short, float, double );
CODE:
	func   = INT2PTR(short(*)( short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2 );
OUTPUT:
	RETVAL

short
nci_ssfs( c_func, s0, f1, s2 )
	SV* c_func
	short s0
	float f1
	short s2
PREINIT:
	short (*func)( short, float, short );
CODE:
	func   = INT2PTR(short(*)( short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2 );
OUTPUT:
	RETVAL

short
nci_ssff( c_func, s0, f1, f2 )
	SV* c_func
	short s0
	float f1
	float f2
PREINIT:
	short (*func)( short, float, float );
CODE:
	func   = INT2PTR(short(*)( short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2 );
OUTPUT:
	RETVAL

short
nci_ssft( c_func, s0, f1, t2 )
	SV* c_func
	short s0
	float f1
	char * t2
PREINIT:
	short (*func)( short, float, char * );
CODE:
	func   = INT2PTR(short(*)( short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2 );
OUTPUT:
	RETVAL

short
nci_ssfi( c_func, s0, f1, i2 )
	SV* c_func
	short s0
	float f1
	int i2
PREINIT:
	short (*func)( short, float, int );
CODE:
	func   = INT2PTR(short(*)( short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2 );
OUTPUT:
	RETVAL

short
nci_sstd( c_func, s0, t1, d2 )
	SV* c_func
	short s0
	char * t1
	double d2
PREINIT:
	short (*func)( short, char *, double );
CODE:
	func   = INT2PTR(short(*)( short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2 );
OUTPUT:
	RETVAL

short
nci_ssts( c_func, s0, t1, s2 )
	SV* c_func
	short s0
	char * t1
	short s2
PREINIT:
	short (*func)( short, char *, short );
CODE:
	func   = INT2PTR(short(*)( short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2 );
OUTPUT:
	RETVAL

short
nci_sstf( c_func, s0, t1, f2 )
	SV* c_func
	short s0
	char * t1
	float f2
PREINIT:
	short (*func)( short, char *, float );
CODE:
	func   = INT2PTR(short(*)( short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2 );
OUTPUT:
	RETVAL

short
nci_sstt( c_func, s0, t1, t2 )
	SV* c_func
	short s0
	char * t1
	char * t2
PREINIT:
	short (*func)( short, char *, char * );
CODE:
	func   = INT2PTR(short(*)( short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2 );
OUTPUT:
	RETVAL

short
nci_ssti( c_func, s0, t1, i2 )
	SV* c_func
	short s0
	char * t1
	int i2
PREINIT:
	short (*func)( short, char *, int );
CODE:
	func   = INT2PTR(short(*)( short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2 );
OUTPUT:
	RETVAL

short
nci_ssid( c_func, s0, i1, d2 )
	SV* c_func
	short s0
	int i1
	double d2
PREINIT:
	short (*func)( short, int, double );
CODE:
	func   = INT2PTR(short(*)( short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2 );
OUTPUT:
	RETVAL

short
nci_ssis( c_func, s0, i1, s2 )
	SV* c_func
	short s0
	int i1
	short s2
PREINIT:
	short (*func)( short, int, short );
CODE:
	func   = INT2PTR(short(*)( short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2 );
OUTPUT:
	RETVAL

short
nci_ssif( c_func, s0, i1, f2 )
	SV* c_func
	short s0
	int i1
	float f2
PREINIT:
	short (*func)( short, int, float );
CODE:
	func   = INT2PTR(short(*)( short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2 );
OUTPUT:
	RETVAL

short
nci_ssit( c_func, s0, i1, t2 )
	SV* c_func
	short s0
	int i1
	char * t2
PREINIT:
	short (*func)( short, int, char * );
CODE:
	func   = INT2PTR(short(*)( short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2 );
OUTPUT:
	RETVAL

short
nci_ssii( c_func, s0, i1, i2 )
	SV* c_func
	short s0
	int i1
	int i2
PREINIT:
	short (*func)( short, int, int );
CODE:
	func   = INT2PTR(short(*)( short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2 );
OUTPUT:
	RETVAL

short
nci_sfdd( c_func, f0, d1, d2 )
	SV* c_func
	float f0
	double d1
	double d2
PREINIT:
	short (*func)( float, double, double );
CODE:
	func   = INT2PTR(short(*)( float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2 );
OUTPUT:
	RETVAL

short
nci_sfds( c_func, f0, d1, s2 )
	SV* c_func
	float f0
	double d1
	short s2
PREINIT:
	short (*func)( float, double, short );
CODE:
	func   = INT2PTR(short(*)( float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2 );
OUTPUT:
	RETVAL

short
nci_sfdf( c_func, f0, d1, f2 )
	SV* c_func
	float f0
	double d1
	float f2
PREINIT:
	short (*func)( float, double, float );
CODE:
	func   = INT2PTR(short(*)( float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2 );
OUTPUT:
	RETVAL

short
nci_sfdt( c_func, f0, d1, t2 )
	SV* c_func
	float f0
	double d1
	char * t2
PREINIT:
	short (*func)( float, double, char * );
CODE:
	func   = INT2PTR(short(*)( float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2 );
OUTPUT:
	RETVAL

short
nci_sfdi( c_func, f0, d1, i2 )
	SV* c_func
	float f0
	double d1
	int i2
PREINIT:
	short (*func)( float, double, int );
CODE:
	func   = INT2PTR(short(*)( float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2 );
OUTPUT:
	RETVAL

short
nci_sfsd( c_func, f0, s1, d2 )
	SV* c_func
	float f0
	short s1
	double d2
PREINIT:
	short (*func)( float, short, double );
CODE:
	func   = INT2PTR(short(*)( float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2 );
OUTPUT:
	RETVAL

short
nci_sfss( c_func, f0, s1, s2 )
	SV* c_func
	float f0
	short s1
	short s2
PREINIT:
	short (*func)( float, short, short );
CODE:
	func   = INT2PTR(short(*)( float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2 );
OUTPUT:
	RETVAL

short
nci_sfsf( c_func, f0, s1, f2 )
	SV* c_func
	float f0
	short s1
	float f2
PREINIT:
	short (*func)( float, short, float );
CODE:
	func   = INT2PTR(short(*)( float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2 );
OUTPUT:
	RETVAL

short
nci_sfst( c_func, f0, s1, t2 )
	SV* c_func
	float f0
	short s1
	char * t2
PREINIT:
	short (*func)( float, short, char * );
CODE:
	func   = INT2PTR(short(*)( float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2 );
OUTPUT:
	RETVAL

short
nci_sfsi( c_func, f0, s1, i2 )
	SV* c_func
	float f0
	short s1
	int i2
PREINIT:
	short (*func)( float, short, int );
CODE:
	func   = INT2PTR(short(*)( float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2 );
OUTPUT:
	RETVAL

short
nci_sffd( c_func, f0, f1, d2 )
	SV* c_func
	float f0
	float f1
	double d2
PREINIT:
	short (*func)( float, float, double );
CODE:
	func   = INT2PTR(short(*)( float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2 );
OUTPUT:
	RETVAL

short
nci_sffs( c_func, f0, f1, s2 )
	SV* c_func
	float f0
	float f1
	short s2
PREINIT:
	short (*func)( float, float, short );
CODE:
	func   = INT2PTR(short(*)( float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2 );
OUTPUT:
	RETVAL

short
nci_sfff( c_func, f0, f1, f2 )
	SV* c_func
	float f0
	float f1
	float f2
PREINIT:
	short (*func)( float, float, float );
CODE:
	func   = INT2PTR(short(*)( float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2 );
OUTPUT:
	RETVAL

short
nci_sfft( c_func, f0, f1, t2 )
	SV* c_func
	float f0
	float f1
	char * t2
PREINIT:
	short (*func)( float, float, char * );
CODE:
	func   = INT2PTR(short(*)( float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2 );
OUTPUT:
	RETVAL

short
nci_sffi( c_func, f0, f1, i2 )
	SV* c_func
	float f0
	float f1
	int i2
PREINIT:
	short (*func)( float, float, int );
CODE:
	func   = INT2PTR(short(*)( float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2 );
OUTPUT:
	RETVAL

short
nci_sftd( c_func, f0, t1, d2 )
	SV* c_func
	float f0
	char * t1
	double d2
PREINIT:
	short (*func)( float, char *, double );
CODE:
	func   = INT2PTR(short(*)( float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2 );
OUTPUT:
	RETVAL

short
nci_sfts( c_func, f0, t1, s2 )
	SV* c_func
	float f0
	char * t1
	short s2
PREINIT:
	short (*func)( float, char *, short );
CODE:
	func   = INT2PTR(short(*)( float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2 );
OUTPUT:
	RETVAL

short
nci_sftf( c_func, f0, t1, f2 )
	SV* c_func
	float f0
	char * t1
	float f2
PREINIT:
	short (*func)( float, char *, float );
CODE:
	func   = INT2PTR(short(*)( float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2 );
OUTPUT:
	RETVAL

short
nci_sftt( c_func, f0, t1, t2 )
	SV* c_func
	float f0
	char * t1
	char * t2
PREINIT:
	short (*func)( float, char *, char * );
CODE:
	func   = INT2PTR(short(*)( float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2 );
OUTPUT:
	RETVAL

short
nci_sfti( c_func, f0, t1, i2 )
	SV* c_func
	float f0
	char * t1
	int i2
PREINIT:
	short (*func)( float, char *, int );
CODE:
	func   = INT2PTR(short(*)( float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2 );
OUTPUT:
	RETVAL

short
nci_sfid( c_func, f0, i1, d2 )
	SV* c_func
	float f0
	int i1
	double d2
PREINIT:
	short (*func)( float, int, double );
CODE:
	func   = INT2PTR(short(*)( float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2 );
OUTPUT:
	RETVAL

short
nci_sfis( c_func, f0, i1, s2 )
	SV* c_func
	float f0
	int i1
	short s2
PREINIT:
	short (*func)( float, int, short );
CODE:
	func   = INT2PTR(short(*)( float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2 );
OUTPUT:
	RETVAL

short
nci_sfif( c_func, f0, i1, f2 )
	SV* c_func
	float f0
	int i1
	float f2
PREINIT:
	short (*func)( float, int, float );
CODE:
	func   = INT2PTR(short(*)( float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2 );
OUTPUT:
	RETVAL

short
nci_sfit( c_func, f0, i1, t2 )
	SV* c_func
	float f0
	int i1
	char * t2
PREINIT:
	short (*func)( float, int, char * );
CODE:
	func   = INT2PTR(short(*)( float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2 );
OUTPUT:
	RETVAL

short
nci_sfii( c_func, f0, i1, i2 )
	SV* c_func
	float f0
	int i1
	int i2
PREINIT:
	short (*func)( float, int, int );
CODE:
	func   = INT2PTR(short(*)( float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2 );
OUTPUT:
	RETVAL

short
nci_stdd( c_func, t0, d1, d2 )
	SV* c_func
	char * t0
	double d1
	double d2
PREINIT:
	short (*func)( char *, double, double );
CODE:
	func   = INT2PTR(short(*)( char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2 );
OUTPUT:
	RETVAL

short
nci_stds( c_func, t0, d1, s2 )
	SV* c_func
	char * t0
	double d1
	short s2
PREINIT:
	short (*func)( char *, double, short );
CODE:
	func   = INT2PTR(short(*)( char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2 );
OUTPUT:
	RETVAL

short
nci_stdf( c_func, t0, d1, f2 )
	SV* c_func
	char * t0
	double d1
	float f2
PREINIT:
	short (*func)( char *, double, float );
CODE:
	func   = INT2PTR(short(*)( char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2 );
OUTPUT:
	RETVAL

short
nci_stdt( c_func, t0, d1, t2 )
	SV* c_func
	char * t0
	double d1
	char * t2
PREINIT:
	short (*func)( char *, double, char * );
CODE:
	func   = INT2PTR(short(*)( char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2 );
OUTPUT:
	RETVAL

short
nci_stdi( c_func, t0, d1, i2 )
	SV* c_func
	char * t0
	double d1
	int i2
PREINIT:
	short (*func)( char *, double, int );
CODE:
	func   = INT2PTR(short(*)( char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2 );
OUTPUT:
	RETVAL

short
nci_stsd( c_func, t0, s1, d2 )
	SV* c_func
	char * t0
	short s1
	double d2
PREINIT:
	short (*func)( char *, short, double );
CODE:
	func   = INT2PTR(short(*)( char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2 );
OUTPUT:
	RETVAL

short
nci_stss( c_func, t0, s1, s2 )
	SV* c_func
	char * t0
	short s1
	short s2
PREINIT:
	short (*func)( char *, short, short );
CODE:
	func   = INT2PTR(short(*)( char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2 );
OUTPUT:
	RETVAL

short
nci_stsf( c_func, t0, s1, f2 )
	SV* c_func
	char * t0
	short s1
	float f2
PREINIT:
	short (*func)( char *, short, float );
CODE:
	func   = INT2PTR(short(*)( char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2 );
OUTPUT:
	RETVAL

short
nci_stst( c_func, t0, s1, t2 )
	SV* c_func
	char * t0
	short s1
	char * t2
PREINIT:
	short (*func)( char *, short, char * );
CODE:
	func   = INT2PTR(short(*)( char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2 );
OUTPUT:
	RETVAL

short
nci_stsi( c_func, t0, s1, i2 )
	SV* c_func
	char * t0
	short s1
	int i2
PREINIT:
	short (*func)( char *, short, int );
CODE:
	func   = INT2PTR(short(*)( char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2 );
OUTPUT:
	RETVAL

short
nci_stfd( c_func, t0, f1, d2 )
	SV* c_func
	char * t0
	float f1
	double d2
PREINIT:
	short (*func)( char *, float, double );
CODE:
	func   = INT2PTR(short(*)( char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2 );
OUTPUT:
	RETVAL

short
nci_stfs( c_func, t0, f1, s2 )
	SV* c_func
	char * t0
	float f1
	short s2
PREINIT:
	short (*func)( char *, float, short );
CODE:
	func   = INT2PTR(short(*)( char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2 );
OUTPUT:
	RETVAL

short
nci_stff( c_func, t0, f1, f2 )
	SV* c_func
	char * t0
	float f1
	float f2
PREINIT:
	short (*func)( char *, float, float );
CODE:
	func   = INT2PTR(short(*)( char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2 );
OUTPUT:
	RETVAL

short
nci_stft( c_func, t0, f1, t2 )
	SV* c_func
	char * t0
	float f1
	char * t2
PREINIT:
	short (*func)( char *, float, char * );
CODE:
	func   = INT2PTR(short(*)( char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2 );
OUTPUT:
	RETVAL

short
nci_stfi( c_func, t0, f1, i2 )
	SV* c_func
	char * t0
	float f1
	int i2
PREINIT:
	short (*func)( char *, float, int );
CODE:
	func   = INT2PTR(short(*)( char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2 );
OUTPUT:
	RETVAL

short
nci_sttd( c_func, t0, t1, d2 )
	SV* c_func
	char * t0
	char * t1
	double d2
PREINIT:
	short (*func)( char *, char *, double );
CODE:
	func   = INT2PTR(short(*)( char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2 );
OUTPUT:
	RETVAL

short
nci_stts( c_func, t0, t1, s2 )
	SV* c_func
	char * t0
	char * t1
	short s2
PREINIT:
	short (*func)( char *, char *, short );
CODE:
	func   = INT2PTR(short(*)( char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2 );
OUTPUT:
	RETVAL

short
nci_sttf( c_func, t0, t1, f2 )
	SV* c_func
	char * t0
	char * t1
	float f2
PREINIT:
	short (*func)( char *, char *, float );
CODE:
	func   = INT2PTR(short(*)( char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2 );
OUTPUT:
	RETVAL

short
nci_sttt( c_func, t0, t1, t2 )
	SV* c_func
	char * t0
	char * t1
	char * t2
PREINIT:
	short (*func)( char *, char *, char * );
CODE:
	func   = INT2PTR(short(*)( char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2 );
OUTPUT:
	RETVAL

short
nci_stti( c_func, t0, t1, i2 )
	SV* c_func
	char * t0
	char * t1
	int i2
PREINIT:
	short (*func)( char *, char *, int );
CODE:
	func   = INT2PTR(short(*)( char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2 );
OUTPUT:
	RETVAL

short
nci_stid( c_func, t0, i1, d2 )
	SV* c_func
	char * t0
	int i1
	double d2
PREINIT:
	short (*func)( char *, int, double );
CODE:
	func   = INT2PTR(short(*)( char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2 );
OUTPUT:
	RETVAL

short
nci_stis( c_func, t0, i1, s2 )
	SV* c_func
	char * t0
	int i1
	short s2
PREINIT:
	short (*func)( char *, int, short );
CODE:
	func   = INT2PTR(short(*)( char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2 );
OUTPUT:
	RETVAL

short
nci_stif( c_func, t0, i1, f2 )
	SV* c_func
	char * t0
	int i1
	float f2
PREINIT:
	short (*func)( char *, int, float );
CODE:
	func   = INT2PTR(short(*)( char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2 );
OUTPUT:
	RETVAL

short
nci_stit( c_func, t0, i1, t2 )
	SV* c_func
	char * t0
	int i1
	char * t2
PREINIT:
	short (*func)( char *, int, char * );
CODE:
	func   = INT2PTR(short(*)( char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2 );
OUTPUT:
	RETVAL

short
nci_stii( c_func, t0, i1, i2 )
	SV* c_func
	char * t0
	int i1
	int i2
PREINIT:
	short (*func)( char *, int, int );
CODE:
	func   = INT2PTR(short(*)( char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2 );
OUTPUT:
	RETVAL

short
nci_sidd( c_func, i0, d1, d2 )
	SV* c_func
	int i0
	double d1
	double d2
PREINIT:
	short (*func)( int, double, double );
CODE:
	func   = INT2PTR(short(*)( int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2 );
OUTPUT:
	RETVAL

short
nci_sids( c_func, i0, d1, s2 )
	SV* c_func
	int i0
	double d1
	short s2
PREINIT:
	short (*func)( int, double, short );
CODE:
	func   = INT2PTR(short(*)( int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2 );
OUTPUT:
	RETVAL

short
nci_sidf( c_func, i0, d1, f2 )
	SV* c_func
	int i0
	double d1
	float f2
PREINIT:
	short (*func)( int, double, float );
CODE:
	func   = INT2PTR(short(*)( int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2 );
OUTPUT:
	RETVAL

short
nci_sidt( c_func, i0, d1, t2 )
	SV* c_func
	int i0
	double d1
	char * t2
PREINIT:
	short (*func)( int, double, char * );
CODE:
	func   = INT2PTR(short(*)( int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2 );
OUTPUT:
	RETVAL

short
nci_sidi( c_func, i0, d1, i2 )
	SV* c_func
	int i0
	double d1
	int i2
PREINIT:
	short (*func)( int, double, int );
CODE:
	func   = INT2PTR(short(*)( int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2 );
OUTPUT:
	RETVAL

short
nci_sisd( c_func, i0, s1, d2 )
	SV* c_func
	int i0
	short s1
	double d2
PREINIT:
	short (*func)( int, short, double );
CODE:
	func   = INT2PTR(short(*)( int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2 );
OUTPUT:
	RETVAL

short
nci_siss( c_func, i0, s1, s2 )
	SV* c_func
	int i0
	short s1
	short s2
PREINIT:
	short (*func)( int, short, short );
CODE:
	func   = INT2PTR(short(*)( int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2 );
OUTPUT:
	RETVAL

short
nci_sisf( c_func, i0, s1, f2 )
	SV* c_func
	int i0
	short s1
	float f2
PREINIT:
	short (*func)( int, short, float );
CODE:
	func   = INT2PTR(short(*)( int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2 );
OUTPUT:
	RETVAL

short
nci_sist( c_func, i0, s1, t2 )
	SV* c_func
	int i0
	short s1
	char * t2
PREINIT:
	short (*func)( int, short, char * );
CODE:
	func   = INT2PTR(short(*)( int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2 );
OUTPUT:
	RETVAL

short
nci_sisi( c_func, i0, s1, i2 )
	SV* c_func
	int i0
	short s1
	int i2
PREINIT:
	short (*func)( int, short, int );
CODE:
	func   = INT2PTR(short(*)( int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2 );
OUTPUT:
	RETVAL

short
nci_sifd( c_func, i0, f1, d2 )
	SV* c_func
	int i0
	float f1
	double d2
PREINIT:
	short (*func)( int, float, double );
CODE:
	func   = INT2PTR(short(*)( int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2 );
OUTPUT:
	RETVAL

short
nci_sifs( c_func, i0, f1, s2 )
	SV* c_func
	int i0
	float f1
	short s2
PREINIT:
	short (*func)( int, float, short );
CODE:
	func   = INT2PTR(short(*)( int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2 );
OUTPUT:
	RETVAL

short
nci_siff( c_func, i0, f1, f2 )
	SV* c_func
	int i0
	float f1
	float f2
PREINIT:
	short (*func)( int, float, float );
CODE:
	func   = INT2PTR(short(*)( int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2 );
OUTPUT:
	RETVAL

short
nci_sift( c_func, i0, f1, t2 )
	SV* c_func
	int i0
	float f1
	char * t2
PREINIT:
	short (*func)( int, float, char * );
CODE:
	func   = INT2PTR(short(*)( int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2 );
OUTPUT:
	RETVAL

short
nci_sifi( c_func, i0, f1, i2 )
	SV* c_func
	int i0
	float f1
	int i2
PREINIT:
	short (*func)( int, float, int );
CODE:
	func   = INT2PTR(short(*)( int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2 );
OUTPUT:
	RETVAL

short
nci_sitd( c_func, i0, t1, d2 )
	SV* c_func
	int i0
	char * t1
	double d2
PREINIT:
	short (*func)( int, char *, double );
CODE:
	func   = INT2PTR(short(*)( int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2 );
OUTPUT:
	RETVAL

short
nci_sits( c_func, i0, t1, s2 )
	SV* c_func
	int i0
	char * t1
	short s2
PREINIT:
	short (*func)( int, char *, short );
CODE:
	func   = INT2PTR(short(*)( int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2 );
OUTPUT:
	RETVAL

short
nci_sitf( c_func, i0, t1, f2 )
	SV* c_func
	int i0
	char * t1
	float f2
PREINIT:
	short (*func)( int, char *, float );
CODE:
	func   = INT2PTR(short(*)( int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2 );
OUTPUT:
	RETVAL

short
nci_sitt( c_func, i0, t1, t2 )
	SV* c_func
	int i0
	char * t1
	char * t2
PREINIT:
	short (*func)( int, char *, char * );
CODE:
	func   = INT2PTR(short(*)( int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2 );
OUTPUT:
	RETVAL

short
nci_siti( c_func, i0, t1, i2 )
	SV* c_func
	int i0
	char * t1
	int i2
PREINIT:
	short (*func)( int, char *, int );
CODE:
	func   = INT2PTR(short(*)( int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2 );
OUTPUT:
	RETVAL

short
nci_siid( c_func, i0, i1, d2 )
	SV* c_func
	int i0
	int i1
	double d2
PREINIT:
	short (*func)( int, int, double );
CODE:
	func   = INT2PTR(short(*)( int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2 );
OUTPUT:
	RETVAL

short
nci_siis( c_func, i0, i1, s2 )
	SV* c_func
	int i0
	int i1
	short s2
PREINIT:
	short (*func)( int, int, short );
CODE:
	func   = INT2PTR(short(*)( int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2 );
OUTPUT:
	RETVAL

short
nci_siif( c_func, i0, i1, f2 )
	SV* c_func
	int i0
	int i1
	float f2
PREINIT:
	short (*func)( int, int, float );
CODE:
	func   = INT2PTR(short(*)( int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2 );
OUTPUT:
	RETVAL

short
nci_siit( c_func, i0, i1, t2 )
	SV* c_func
	int i0
	int i1
	char * t2
PREINIT:
	short (*func)( int, int, char * );
CODE:
	func   = INT2PTR(short(*)( int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2 );
OUTPUT:
	RETVAL

short
nci_siii( c_func, i0, i1, i2 )
	SV* c_func
	int i0
	int i1
	int i2
PREINIT:
	short (*func)( int, int, int );
CODE:
	func   = INT2PTR(short(*)( int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2 );
OUTPUT:
	RETVAL

float
nci_fddd( c_func, d0, d1, d2 )
	SV* c_func
	double d0
	double d1
	double d2
PREINIT:
	float (*func)( double, double, double );
CODE:
	func   = INT2PTR(float(*)( double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2 );
OUTPUT:
	RETVAL

float
nci_fdds( c_func, d0, d1, s2 )
	SV* c_func
	double d0
	double d1
	short s2
PREINIT:
	float (*func)( double, double, short );
CODE:
	func   = INT2PTR(float(*)( double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2 );
OUTPUT:
	RETVAL

float
nci_fddf( c_func, d0, d1, f2 )
	SV* c_func
	double d0
	double d1
	float f2
PREINIT:
	float (*func)( double, double, float );
CODE:
	func   = INT2PTR(float(*)( double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2 );
OUTPUT:
	RETVAL

float
nci_fddt( c_func, d0, d1, t2 )
	SV* c_func
	double d0
	double d1
	char * t2
PREINIT:
	float (*func)( double, double, char * );
CODE:
	func   = INT2PTR(float(*)( double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2 );
OUTPUT:
	RETVAL

float
nci_fddi( c_func, d0, d1, i2 )
	SV* c_func
	double d0
	double d1
	int i2
PREINIT:
	float (*func)( double, double, int );
CODE:
	func   = INT2PTR(float(*)( double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2 );
OUTPUT:
	RETVAL

float
nci_fdsd( c_func, d0, s1, d2 )
	SV* c_func
	double d0
	short s1
	double d2
PREINIT:
	float (*func)( double, short, double );
CODE:
	func   = INT2PTR(float(*)( double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2 );
OUTPUT:
	RETVAL

float
nci_fdss( c_func, d0, s1, s2 )
	SV* c_func
	double d0
	short s1
	short s2
PREINIT:
	float (*func)( double, short, short );
CODE:
	func   = INT2PTR(float(*)( double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2 );
OUTPUT:
	RETVAL

float
nci_fdsf( c_func, d0, s1, f2 )
	SV* c_func
	double d0
	short s1
	float f2
PREINIT:
	float (*func)( double, short, float );
CODE:
	func   = INT2PTR(float(*)( double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2 );
OUTPUT:
	RETVAL

float
nci_fdst( c_func, d0, s1, t2 )
	SV* c_func
	double d0
	short s1
	char * t2
PREINIT:
	float (*func)( double, short, char * );
CODE:
	func   = INT2PTR(float(*)( double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2 );
OUTPUT:
	RETVAL

float
nci_fdsi( c_func, d0, s1, i2 )
	SV* c_func
	double d0
	short s1
	int i2
PREINIT:
	float (*func)( double, short, int );
CODE:
	func   = INT2PTR(float(*)( double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2 );
OUTPUT:
	RETVAL

float
nci_fdfd( c_func, d0, f1, d2 )
	SV* c_func
	double d0
	float f1
	double d2
PREINIT:
	float (*func)( double, float, double );
CODE:
	func   = INT2PTR(float(*)( double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2 );
OUTPUT:
	RETVAL

float
nci_fdfs( c_func, d0, f1, s2 )
	SV* c_func
	double d0
	float f1
	short s2
PREINIT:
	float (*func)( double, float, short );
CODE:
	func   = INT2PTR(float(*)( double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2 );
OUTPUT:
	RETVAL

float
nci_fdff( c_func, d0, f1, f2 )
	SV* c_func
	double d0
	float f1
	float f2
PREINIT:
	float (*func)( double, float, float );
CODE:
	func   = INT2PTR(float(*)( double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2 );
OUTPUT:
	RETVAL

float
nci_fdft( c_func, d0, f1, t2 )
	SV* c_func
	double d0
	float f1
	char * t2
PREINIT:
	float (*func)( double, float, char * );
CODE:
	func   = INT2PTR(float(*)( double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2 );
OUTPUT:
	RETVAL

float
nci_fdfi( c_func, d0, f1, i2 )
	SV* c_func
	double d0
	float f1
	int i2
PREINIT:
	float (*func)( double, float, int );
CODE:
	func   = INT2PTR(float(*)( double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2 );
OUTPUT:
	RETVAL

float
nci_fdtd( c_func, d0, t1, d2 )
	SV* c_func
	double d0
	char * t1
	double d2
PREINIT:
	float (*func)( double, char *, double );
CODE:
	func   = INT2PTR(float(*)( double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2 );
OUTPUT:
	RETVAL

float
nci_fdts( c_func, d0, t1, s2 )
	SV* c_func
	double d0
	char * t1
	short s2
PREINIT:
	float (*func)( double, char *, short );
CODE:
	func   = INT2PTR(float(*)( double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2 );
OUTPUT:
	RETVAL

float
nci_fdtf( c_func, d0, t1, f2 )
	SV* c_func
	double d0
	char * t1
	float f2
PREINIT:
	float (*func)( double, char *, float );
CODE:
	func   = INT2PTR(float(*)( double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2 );
OUTPUT:
	RETVAL

float
nci_fdtt( c_func, d0, t1, t2 )
	SV* c_func
	double d0
	char * t1
	char * t2
PREINIT:
	float (*func)( double, char *, char * );
CODE:
	func   = INT2PTR(float(*)( double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2 );
OUTPUT:
	RETVAL

float
nci_fdti( c_func, d0, t1, i2 )
	SV* c_func
	double d0
	char * t1
	int i2
PREINIT:
	float (*func)( double, char *, int );
CODE:
	func   = INT2PTR(float(*)( double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2 );
OUTPUT:
	RETVAL

float
nci_fdid( c_func, d0, i1, d2 )
	SV* c_func
	double d0
	int i1
	double d2
PREINIT:
	float (*func)( double, int, double );
CODE:
	func   = INT2PTR(float(*)( double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2 );
OUTPUT:
	RETVAL

float
nci_fdis( c_func, d0, i1, s2 )
	SV* c_func
	double d0
	int i1
	short s2
PREINIT:
	float (*func)( double, int, short );
CODE:
	func   = INT2PTR(float(*)( double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2 );
OUTPUT:
	RETVAL

float
nci_fdif( c_func, d0, i1, f2 )
	SV* c_func
	double d0
	int i1
	float f2
PREINIT:
	float (*func)( double, int, float );
CODE:
	func   = INT2PTR(float(*)( double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2 );
OUTPUT:
	RETVAL

float
nci_fdit( c_func, d0, i1, t2 )
	SV* c_func
	double d0
	int i1
	char * t2
PREINIT:
	float (*func)( double, int, char * );
CODE:
	func   = INT2PTR(float(*)( double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2 );
OUTPUT:
	RETVAL

float
nci_fdii( c_func, d0, i1, i2 )
	SV* c_func
	double d0
	int i1
	int i2
PREINIT:
	float (*func)( double, int, int );
CODE:
	func   = INT2PTR(float(*)( double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2 );
OUTPUT:
	RETVAL

float
nci_fsdd( c_func, s0, d1, d2 )
	SV* c_func
	short s0
	double d1
	double d2
PREINIT:
	float (*func)( short, double, double );
CODE:
	func   = INT2PTR(float(*)( short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2 );
OUTPUT:
	RETVAL

float
nci_fsds( c_func, s0, d1, s2 )
	SV* c_func
	short s0
	double d1
	short s2
PREINIT:
	float (*func)( short, double, short );
CODE:
	func   = INT2PTR(float(*)( short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2 );
OUTPUT:
	RETVAL

float
nci_fsdf( c_func, s0, d1, f2 )
	SV* c_func
	short s0
	double d1
	float f2
PREINIT:
	float (*func)( short, double, float );
CODE:
	func   = INT2PTR(float(*)( short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2 );
OUTPUT:
	RETVAL

float
nci_fsdt( c_func, s0, d1, t2 )
	SV* c_func
	short s0
	double d1
	char * t2
PREINIT:
	float (*func)( short, double, char * );
CODE:
	func   = INT2PTR(float(*)( short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2 );
OUTPUT:
	RETVAL

float
nci_fsdi( c_func, s0, d1, i2 )
	SV* c_func
	short s0
	double d1
	int i2
PREINIT:
	float (*func)( short, double, int );
CODE:
	func   = INT2PTR(float(*)( short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2 );
OUTPUT:
	RETVAL

float
nci_fssd( c_func, s0, s1, d2 )
	SV* c_func
	short s0
	short s1
	double d2
PREINIT:
	float (*func)( short, short, double );
CODE:
	func   = INT2PTR(float(*)( short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2 );
OUTPUT:
	RETVAL

float
nci_fsss( c_func, s0, s1, s2 )
	SV* c_func
	short s0
	short s1
	short s2
PREINIT:
	float (*func)( short, short, short );
CODE:
	func   = INT2PTR(float(*)( short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2 );
OUTPUT:
	RETVAL

float
nci_fssf( c_func, s0, s1, f2 )
	SV* c_func
	short s0
	short s1
	float f2
PREINIT:
	float (*func)( short, short, float );
CODE:
	func   = INT2PTR(float(*)( short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2 );
OUTPUT:
	RETVAL

float
nci_fsst( c_func, s0, s1, t2 )
	SV* c_func
	short s0
	short s1
	char * t2
PREINIT:
	float (*func)( short, short, char * );
CODE:
	func   = INT2PTR(float(*)( short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2 );
OUTPUT:
	RETVAL

float
nci_fssi( c_func, s0, s1, i2 )
	SV* c_func
	short s0
	short s1
	int i2
PREINIT:
	float (*func)( short, short, int );
CODE:
	func   = INT2PTR(float(*)( short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2 );
OUTPUT:
	RETVAL

float
nci_fsfd( c_func, s0, f1, d2 )
	SV* c_func
	short s0
	float f1
	double d2
PREINIT:
	float (*func)( short, float, double );
CODE:
	func   = INT2PTR(float(*)( short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2 );
OUTPUT:
	RETVAL

float
nci_fsfs( c_func, s0, f1, s2 )
	SV* c_func
	short s0
	float f1
	short s2
PREINIT:
	float (*func)( short, float, short );
CODE:
	func   = INT2PTR(float(*)( short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2 );
OUTPUT:
	RETVAL

float
nci_fsff( c_func, s0, f1, f2 )
	SV* c_func
	short s0
	float f1
	float f2
PREINIT:
	float (*func)( short, float, float );
CODE:
	func   = INT2PTR(float(*)( short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2 );
OUTPUT:
	RETVAL

float
nci_fsft( c_func, s0, f1, t2 )
	SV* c_func
	short s0
	float f1
	char * t2
PREINIT:
	float (*func)( short, float, char * );
CODE:
	func   = INT2PTR(float(*)( short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2 );
OUTPUT:
	RETVAL

float
nci_fsfi( c_func, s0, f1, i2 )
	SV* c_func
	short s0
	float f1
	int i2
PREINIT:
	float (*func)( short, float, int );
CODE:
	func   = INT2PTR(float(*)( short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2 );
OUTPUT:
	RETVAL

float
nci_fstd( c_func, s0, t1, d2 )
	SV* c_func
	short s0
	char * t1
	double d2
PREINIT:
	float (*func)( short, char *, double );
CODE:
	func   = INT2PTR(float(*)( short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2 );
OUTPUT:
	RETVAL

float
nci_fsts( c_func, s0, t1, s2 )
	SV* c_func
	short s0
	char * t1
	short s2
PREINIT:
	float (*func)( short, char *, short );
CODE:
	func   = INT2PTR(float(*)( short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2 );
OUTPUT:
	RETVAL

float
nci_fstf( c_func, s0, t1, f2 )
	SV* c_func
	short s0
	char * t1
	float f2
PREINIT:
	float (*func)( short, char *, float );
CODE:
	func   = INT2PTR(float(*)( short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2 );
OUTPUT:
	RETVAL

float
nci_fstt( c_func, s0, t1, t2 )
	SV* c_func
	short s0
	char * t1
	char * t2
PREINIT:
	float (*func)( short, char *, char * );
CODE:
	func   = INT2PTR(float(*)( short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2 );
OUTPUT:
	RETVAL

float
nci_fsti( c_func, s0, t1, i2 )
	SV* c_func
	short s0
	char * t1
	int i2
PREINIT:
	float (*func)( short, char *, int );
CODE:
	func   = INT2PTR(float(*)( short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2 );
OUTPUT:
	RETVAL

float
nci_fsid( c_func, s0, i1, d2 )
	SV* c_func
	short s0
	int i1
	double d2
PREINIT:
	float (*func)( short, int, double );
CODE:
	func   = INT2PTR(float(*)( short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2 );
OUTPUT:
	RETVAL

float
nci_fsis( c_func, s0, i1, s2 )
	SV* c_func
	short s0
	int i1
	short s2
PREINIT:
	float (*func)( short, int, short );
CODE:
	func   = INT2PTR(float(*)( short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2 );
OUTPUT:
	RETVAL

float
nci_fsif( c_func, s0, i1, f2 )
	SV* c_func
	short s0
	int i1
	float f2
PREINIT:
	float (*func)( short, int, float );
CODE:
	func   = INT2PTR(float(*)( short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2 );
OUTPUT:
	RETVAL

float
nci_fsit( c_func, s0, i1, t2 )
	SV* c_func
	short s0
	int i1
	char * t2
PREINIT:
	float (*func)( short, int, char * );
CODE:
	func   = INT2PTR(float(*)( short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2 );
OUTPUT:
	RETVAL

float
nci_fsii( c_func, s0, i1, i2 )
	SV* c_func
	short s0
	int i1
	int i2
PREINIT:
	float (*func)( short, int, int );
CODE:
	func   = INT2PTR(float(*)( short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2 );
OUTPUT:
	RETVAL

float
nci_ffdd( c_func, f0, d1, d2 )
	SV* c_func
	float f0
	double d1
	double d2
PREINIT:
	float (*func)( float, double, double );
CODE:
	func   = INT2PTR(float(*)( float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2 );
OUTPUT:
	RETVAL

float
nci_ffds( c_func, f0, d1, s2 )
	SV* c_func
	float f0
	double d1
	short s2
PREINIT:
	float (*func)( float, double, short );
CODE:
	func   = INT2PTR(float(*)( float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2 );
OUTPUT:
	RETVAL

float
nci_ffdf( c_func, f0, d1, f2 )
	SV* c_func
	float f0
	double d1
	float f2
PREINIT:
	float (*func)( float, double, float );
CODE:
	func   = INT2PTR(float(*)( float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2 );
OUTPUT:
	RETVAL

float
nci_ffdt( c_func, f0, d1, t2 )
	SV* c_func
	float f0
	double d1
	char * t2
PREINIT:
	float (*func)( float, double, char * );
CODE:
	func   = INT2PTR(float(*)( float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2 );
OUTPUT:
	RETVAL

float
nci_ffdi( c_func, f0, d1, i2 )
	SV* c_func
	float f0
	double d1
	int i2
PREINIT:
	float (*func)( float, double, int );
CODE:
	func   = INT2PTR(float(*)( float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2 );
OUTPUT:
	RETVAL

float
nci_ffsd( c_func, f0, s1, d2 )
	SV* c_func
	float f0
	short s1
	double d2
PREINIT:
	float (*func)( float, short, double );
CODE:
	func   = INT2PTR(float(*)( float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2 );
OUTPUT:
	RETVAL

float
nci_ffss( c_func, f0, s1, s2 )
	SV* c_func
	float f0
	short s1
	short s2
PREINIT:
	float (*func)( float, short, short );
CODE:
	func   = INT2PTR(float(*)( float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2 );
OUTPUT:
	RETVAL

float
nci_ffsf( c_func, f0, s1, f2 )
	SV* c_func
	float f0
	short s1
	float f2
PREINIT:
	float (*func)( float, short, float );
CODE:
	func   = INT2PTR(float(*)( float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2 );
OUTPUT:
	RETVAL

float
nci_ffst( c_func, f0, s1, t2 )
	SV* c_func
	float f0
	short s1
	char * t2
PREINIT:
	float (*func)( float, short, char * );
CODE:
	func   = INT2PTR(float(*)( float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2 );
OUTPUT:
	RETVAL

float
nci_ffsi( c_func, f0, s1, i2 )
	SV* c_func
	float f0
	short s1
	int i2
PREINIT:
	float (*func)( float, short, int );
CODE:
	func   = INT2PTR(float(*)( float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2 );
OUTPUT:
	RETVAL

float
nci_fffd( c_func, f0, f1, d2 )
	SV* c_func
	float f0
	float f1
	double d2
PREINIT:
	float (*func)( float, float, double );
CODE:
	func   = INT2PTR(float(*)( float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2 );
OUTPUT:
	RETVAL

float
nci_fffs( c_func, f0, f1, s2 )
	SV* c_func
	float f0
	float f1
	short s2
PREINIT:
	float (*func)( float, float, short );
CODE:
	func   = INT2PTR(float(*)( float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2 );
OUTPUT:
	RETVAL

float
nci_ffff( c_func, f0, f1, f2 )
	SV* c_func
	float f0
	float f1
	float f2
PREINIT:
	float (*func)( float, float, float );
CODE:
	func   = INT2PTR(float(*)( float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2 );
OUTPUT:
	RETVAL

float
nci_ffft( c_func, f0, f1, t2 )
	SV* c_func
	float f0
	float f1
	char * t2
PREINIT:
	float (*func)( float, float, char * );
CODE:
	func   = INT2PTR(float(*)( float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2 );
OUTPUT:
	RETVAL

float
nci_fffi( c_func, f0, f1, i2 )
	SV* c_func
	float f0
	float f1
	int i2
PREINIT:
	float (*func)( float, float, int );
CODE:
	func   = INT2PTR(float(*)( float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2 );
OUTPUT:
	RETVAL

float
nci_fftd( c_func, f0, t1, d2 )
	SV* c_func
	float f0
	char * t1
	double d2
PREINIT:
	float (*func)( float, char *, double );
CODE:
	func   = INT2PTR(float(*)( float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2 );
OUTPUT:
	RETVAL

float
nci_ffts( c_func, f0, t1, s2 )
	SV* c_func
	float f0
	char * t1
	short s2
PREINIT:
	float (*func)( float, char *, short );
CODE:
	func   = INT2PTR(float(*)( float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2 );
OUTPUT:
	RETVAL

float
nci_fftf( c_func, f0, t1, f2 )
	SV* c_func
	float f0
	char * t1
	float f2
PREINIT:
	float (*func)( float, char *, float );
CODE:
	func   = INT2PTR(float(*)( float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2 );
OUTPUT:
	RETVAL

float
nci_fftt( c_func, f0, t1, t2 )
	SV* c_func
	float f0
	char * t1
	char * t2
PREINIT:
	float (*func)( float, char *, char * );
CODE:
	func   = INT2PTR(float(*)( float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2 );
OUTPUT:
	RETVAL

float
nci_ffti( c_func, f0, t1, i2 )
	SV* c_func
	float f0
	char * t1
	int i2
PREINIT:
	float (*func)( float, char *, int );
CODE:
	func   = INT2PTR(float(*)( float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2 );
OUTPUT:
	RETVAL

float
nci_ffid( c_func, f0, i1, d2 )
	SV* c_func
	float f0
	int i1
	double d2
PREINIT:
	float (*func)( float, int, double );
CODE:
	func   = INT2PTR(float(*)( float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2 );
OUTPUT:
	RETVAL

float
nci_ffis( c_func, f0, i1, s2 )
	SV* c_func
	float f0
	int i1
	short s2
PREINIT:
	float (*func)( float, int, short );
CODE:
	func   = INT2PTR(float(*)( float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2 );
OUTPUT:
	RETVAL

float
nci_ffif( c_func, f0, i1, f2 )
	SV* c_func
	float f0
	int i1
	float f2
PREINIT:
	float (*func)( float, int, float );
CODE:
	func   = INT2PTR(float(*)( float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2 );
OUTPUT:
	RETVAL

float
nci_ffit( c_func, f0, i1, t2 )
	SV* c_func
	float f0
	int i1
	char * t2
PREINIT:
	float (*func)( float, int, char * );
CODE:
	func   = INT2PTR(float(*)( float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2 );
OUTPUT:
	RETVAL

float
nci_ffii( c_func, f0, i1, i2 )
	SV* c_func
	float f0
	int i1
	int i2
PREINIT:
	float (*func)( float, int, int );
CODE:
	func   = INT2PTR(float(*)( float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2 );
OUTPUT:
	RETVAL

float
nci_ftdd( c_func, t0, d1, d2 )
	SV* c_func
	char * t0
	double d1
	double d2
PREINIT:
	float (*func)( char *, double, double );
CODE:
	func   = INT2PTR(float(*)( char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2 );
OUTPUT:
	RETVAL

float
nci_ftds( c_func, t0, d1, s2 )
	SV* c_func
	char * t0
	double d1
	short s2
PREINIT:
	float (*func)( char *, double, short );
CODE:
	func   = INT2PTR(float(*)( char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2 );
OUTPUT:
	RETVAL

float
nci_ftdf( c_func, t0, d1, f2 )
	SV* c_func
	char * t0
	double d1
	float f2
PREINIT:
	float (*func)( char *, double, float );
CODE:
	func   = INT2PTR(float(*)( char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2 );
OUTPUT:
	RETVAL

float
nci_ftdt( c_func, t0, d1, t2 )
	SV* c_func
	char * t0
	double d1
	char * t2
PREINIT:
	float (*func)( char *, double, char * );
CODE:
	func   = INT2PTR(float(*)( char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2 );
OUTPUT:
	RETVAL

float
nci_ftdi( c_func, t0, d1, i2 )
	SV* c_func
	char * t0
	double d1
	int i2
PREINIT:
	float (*func)( char *, double, int );
CODE:
	func   = INT2PTR(float(*)( char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2 );
OUTPUT:
	RETVAL

float
nci_ftsd( c_func, t0, s1, d2 )
	SV* c_func
	char * t0
	short s1
	double d2
PREINIT:
	float (*func)( char *, short, double );
CODE:
	func   = INT2PTR(float(*)( char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2 );
OUTPUT:
	RETVAL

float
nci_ftss( c_func, t0, s1, s2 )
	SV* c_func
	char * t0
	short s1
	short s2
PREINIT:
	float (*func)( char *, short, short );
CODE:
	func   = INT2PTR(float(*)( char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2 );
OUTPUT:
	RETVAL

float
nci_ftsf( c_func, t0, s1, f2 )
	SV* c_func
	char * t0
	short s1
	float f2
PREINIT:
	float (*func)( char *, short, float );
CODE:
	func   = INT2PTR(float(*)( char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2 );
OUTPUT:
	RETVAL

float
nci_ftst( c_func, t0, s1, t2 )
	SV* c_func
	char * t0
	short s1
	char * t2
PREINIT:
	float (*func)( char *, short, char * );
CODE:
	func   = INT2PTR(float(*)( char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2 );
OUTPUT:
	RETVAL

float
nci_ftsi( c_func, t0, s1, i2 )
	SV* c_func
	char * t0
	short s1
	int i2
PREINIT:
	float (*func)( char *, short, int );
CODE:
	func   = INT2PTR(float(*)( char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2 );
OUTPUT:
	RETVAL

float
nci_ftfd( c_func, t0, f1, d2 )
	SV* c_func
	char * t0
	float f1
	double d2
PREINIT:
	float (*func)( char *, float, double );
CODE:
	func   = INT2PTR(float(*)( char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2 );
OUTPUT:
	RETVAL

float
nci_ftfs( c_func, t0, f1, s2 )
	SV* c_func
	char * t0
	float f1
	short s2
PREINIT:
	float (*func)( char *, float, short );
CODE:
	func   = INT2PTR(float(*)( char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2 );
OUTPUT:
	RETVAL

float
nci_ftff( c_func, t0, f1, f2 )
	SV* c_func
	char * t0
	float f1
	float f2
PREINIT:
	float (*func)( char *, float, float );
CODE:
	func   = INT2PTR(float(*)( char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2 );
OUTPUT:
	RETVAL

float
nci_ftft( c_func, t0, f1, t2 )
	SV* c_func
	char * t0
	float f1
	char * t2
PREINIT:
	float (*func)( char *, float, char * );
CODE:
	func   = INT2PTR(float(*)( char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2 );
OUTPUT:
	RETVAL

float
nci_ftfi( c_func, t0, f1, i2 )
	SV* c_func
	char * t0
	float f1
	int i2
PREINIT:
	float (*func)( char *, float, int );
CODE:
	func   = INT2PTR(float(*)( char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2 );
OUTPUT:
	RETVAL

float
nci_fttd( c_func, t0, t1, d2 )
	SV* c_func
	char * t0
	char * t1
	double d2
PREINIT:
	float (*func)( char *, char *, double );
CODE:
	func   = INT2PTR(float(*)( char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2 );
OUTPUT:
	RETVAL

float
nci_ftts( c_func, t0, t1, s2 )
	SV* c_func
	char * t0
	char * t1
	short s2
PREINIT:
	float (*func)( char *, char *, short );
CODE:
	func   = INT2PTR(float(*)( char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2 );
OUTPUT:
	RETVAL

float
nci_fttf( c_func, t0, t1, f2 )
	SV* c_func
	char * t0
	char * t1
	float f2
PREINIT:
	float (*func)( char *, char *, float );
CODE:
	func   = INT2PTR(float(*)( char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2 );
OUTPUT:
	RETVAL

float
nci_fttt( c_func, t0, t1, t2 )
	SV* c_func
	char * t0
	char * t1
	char * t2
PREINIT:
	float (*func)( char *, char *, char * );
CODE:
	func   = INT2PTR(float(*)( char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2 );
OUTPUT:
	RETVAL

float
nci_ftti( c_func, t0, t1, i2 )
	SV* c_func
	char * t0
	char * t1
	int i2
PREINIT:
	float (*func)( char *, char *, int );
CODE:
	func   = INT2PTR(float(*)( char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2 );
OUTPUT:
	RETVAL

float
nci_ftid( c_func, t0, i1, d2 )
	SV* c_func
	char * t0
	int i1
	double d2
PREINIT:
	float (*func)( char *, int, double );
CODE:
	func   = INT2PTR(float(*)( char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2 );
OUTPUT:
	RETVAL

float
nci_ftis( c_func, t0, i1, s2 )
	SV* c_func
	char * t0
	int i1
	short s2
PREINIT:
	float (*func)( char *, int, short );
CODE:
	func   = INT2PTR(float(*)( char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2 );
OUTPUT:
	RETVAL

float
nci_ftif( c_func, t0, i1, f2 )
	SV* c_func
	char * t0
	int i1
	float f2
PREINIT:
	float (*func)( char *, int, float );
CODE:
	func   = INT2PTR(float(*)( char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2 );
OUTPUT:
	RETVAL

float
nci_ftit( c_func, t0, i1, t2 )
	SV* c_func
	char * t0
	int i1
	char * t2
PREINIT:
	float (*func)( char *, int, char * );
CODE:
	func   = INT2PTR(float(*)( char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2 );
OUTPUT:
	RETVAL

float
nci_ftii( c_func, t0, i1, i2 )
	SV* c_func
	char * t0
	int i1
	int i2
PREINIT:
	float (*func)( char *, int, int );
CODE:
	func   = INT2PTR(float(*)( char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2 );
OUTPUT:
	RETVAL

float
nci_fidd( c_func, i0, d1, d2 )
	SV* c_func
	int i0
	double d1
	double d2
PREINIT:
	float (*func)( int, double, double );
CODE:
	func   = INT2PTR(float(*)( int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2 );
OUTPUT:
	RETVAL

float
nci_fids( c_func, i0, d1, s2 )
	SV* c_func
	int i0
	double d1
	short s2
PREINIT:
	float (*func)( int, double, short );
CODE:
	func   = INT2PTR(float(*)( int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2 );
OUTPUT:
	RETVAL

float
nci_fidf( c_func, i0, d1, f2 )
	SV* c_func
	int i0
	double d1
	float f2
PREINIT:
	float (*func)( int, double, float );
CODE:
	func   = INT2PTR(float(*)( int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2 );
OUTPUT:
	RETVAL

float
nci_fidt( c_func, i0, d1, t2 )
	SV* c_func
	int i0
	double d1
	char * t2
PREINIT:
	float (*func)( int, double, char * );
CODE:
	func   = INT2PTR(float(*)( int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2 );
OUTPUT:
	RETVAL

float
nci_fidi( c_func, i0, d1, i2 )
	SV* c_func
	int i0
	double d1
	int i2
PREINIT:
	float (*func)( int, double, int );
CODE:
	func   = INT2PTR(float(*)( int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2 );
OUTPUT:
	RETVAL

float
nci_fisd( c_func, i0, s1, d2 )
	SV* c_func
	int i0
	short s1
	double d2
PREINIT:
	float (*func)( int, short, double );
CODE:
	func   = INT2PTR(float(*)( int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2 );
OUTPUT:
	RETVAL

float
nci_fiss( c_func, i0, s1, s2 )
	SV* c_func
	int i0
	short s1
	short s2
PREINIT:
	float (*func)( int, short, short );
CODE:
	func   = INT2PTR(float(*)( int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2 );
OUTPUT:
	RETVAL

float
nci_fisf( c_func, i0, s1, f2 )
	SV* c_func
	int i0
	short s1
	float f2
PREINIT:
	float (*func)( int, short, float );
CODE:
	func   = INT2PTR(float(*)( int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2 );
OUTPUT:
	RETVAL

float
nci_fist( c_func, i0, s1, t2 )
	SV* c_func
	int i0
	short s1
	char * t2
PREINIT:
	float (*func)( int, short, char * );
CODE:
	func   = INT2PTR(float(*)( int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2 );
OUTPUT:
	RETVAL

float
nci_fisi( c_func, i0, s1, i2 )
	SV* c_func
	int i0
	short s1
	int i2
PREINIT:
	float (*func)( int, short, int );
CODE:
	func   = INT2PTR(float(*)( int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2 );
OUTPUT:
	RETVAL

float
nci_fifd( c_func, i0, f1, d2 )
	SV* c_func
	int i0
	float f1
	double d2
PREINIT:
	float (*func)( int, float, double );
CODE:
	func   = INT2PTR(float(*)( int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2 );
OUTPUT:
	RETVAL

float
nci_fifs( c_func, i0, f1, s2 )
	SV* c_func
	int i0
	float f1
	short s2
PREINIT:
	float (*func)( int, float, short );
CODE:
	func   = INT2PTR(float(*)( int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2 );
OUTPUT:
	RETVAL

float
nci_fiff( c_func, i0, f1, f2 )
	SV* c_func
	int i0
	float f1
	float f2
PREINIT:
	float (*func)( int, float, float );
CODE:
	func   = INT2PTR(float(*)( int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2 );
OUTPUT:
	RETVAL

float
nci_fift( c_func, i0, f1, t2 )
	SV* c_func
	int i0
	float f1
	char * t2
PREINIT:
	float (*func)( int, float, char * );
CODE:
	func   = INT2PTR(float(*)( int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2 );
OUTPUT:
	RETVAL

float
nci_fifi( c_func, i0, f1, i2 )
	SV* c_func
	int i0
	float f1
	int i2
PREINIT:
	float (*func)( int, float, int );
CODE:
	func   = INT2PTR(float(*)( int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2 );
OUTPUT:
	RETVAL

float
nci_fitd( c_func, i0, t1, d2 )
	SV* c_func
	int i0
	char * t1
	double d2
PREINIT:
	float (*func)( int, char *, double );
CODE:
	func   = INT2PTR(float(*)( int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2 );
OUTPUT:
	RETVAL

float
nci_fits( c_func, i0, t1, s2 )
	SV* c_func
	int i0
	char * t1
	short s2
PREINIT:
	float (*func)( int, char *, short );
CODE:
	func   = INT2PTR(float(*)( int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2 );
OUTPUT:
	RETVAL

float
nci_fitf( c_func, i0, t1, f2 )
	SV* c_func
	int i0
	char * t1
	float f2
PREINIT:
	float (*func)( int, char *, float );
CODE:
	func   = INT2PTR(float(*)( int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2 );
OUTPUT:
	RETVAL

float
nci_fitt( c_func, i0, t1, t2 )
	SV* c_func
	int i0
	char * t1
	char * t2
PREINIT:
	float (*func)( int, char *, char * );
CODE:
	func   = INT2PTR(float(*)( int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2 );
OUTPUT:
	RETVAL

float
nci_fiti( c_func, i0, t1, i2 )
	SV* c_func
	int i0
	char * t1
	int i2
PREINIT:
	float (*func)( int, char *, int );
CODE:
	func   = INT2PTR(float(*)( int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2 );
OUTPUT:
	RETVAL

float
nci_fiid( c_func, i0, i1, d2 )
	SV* c_func
	int i0
	int i1
	double d2
PREINIT:
	float (*func)( int, int, double );
CODE:
	func   = INT2PTR(float(*)( int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2 );
OUTPUT:
	RETVAL

float
nci_fiis( c_func, i0, i1, s2 )
	SV* c_func
	int i0
	int i1
	short s2
PREINIT:
	float (*func)( int, int, short );
CODE:
	func   = INT2PTR(float(*)( int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2 );
OUTPUT:
	RETVAL

float
nci_fiif( c_func, i0, i1, f2 )
	SV* c_func
	int i0
	int i1
	float f2
PREINIT:
	float (*func)( int, int, float );
CODE:
	func   = INT2PTR(float(*)( int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2 );
OUTPUT:
	RETVAL

float
nci_fiit( c_func, i0, i1, t2 )
	SV* c_func
	int i0
	int i1
	char * t2
PREINIT:
	float (*func)( int, int, char * );
CODE:
	func   = INT2PTR(float(*)( int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2 );
OUTPUT:
	RETVAL

float
nci_fiii( c_func, i0, i1, i2 )
	SV* c_func
	int i0
	int i1
	int i2
PREINIT:
	float (*func)( int, int, int );
CODE:
	func   = INT2PTR(float(*)( int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2 );
OUTPUT:
	RETVAL

char *
nci_tddd( c_func, d0, d1, d2 )
	SV* c_func
	double d0
	double d1
	double d2
PREINIT:
	char * (*func)( double, double, double );
CODE:
	func   = INT2PTR(char *(*)( double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2 );
OUTPUT:
	RETVAL

char *
nci_tdds( c_func, d0, d1, s2 )
	SV* c_func
	double d0
	double d1
	short s2
PREINIT:
	char * (*func)( double, double, short );
CODE:
	func   = INT2PTR(char *(*)( double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2 );
OUTPUT:
	RETVAL

char *
nci_tddf( c_func, d0, d1, f2 )
	SV* c_func
	double d0
	double d1
	float f2
PREINIT:
	char * (*func)( double, double, float );
CODE:
	func   = INT2PTR(char *(*)( double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2 );
OUTPUT:
	RETVAL

char *
nci_tddt( c_func, d0, d1, t2 )
	SV* c_func
	double d0
	double d1
	char * t2
PREINIT:
	char * (*func)( double, double, char * );
CODE:
	func   = INT2PTR(char *(*)( double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2 );
OUTPUT:
	RETVAL

char *
nci_tddi( c_func, d0, d1, i2 )
	SV* c_func
	double d0
	double d1
	int i2
PREINIT:
	char * (*func)( double, double, int );
CODE:
	func   = INT2PTR(char *(*)( double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2 );
OUTPUT:
	RETVAL

char *
nci_tdsd( c_func, d0, s1, d2 )
	SV* c_func
	double d0
	short s1
	double d2
PREINIT:
	char * (*func)( double, short, double );
CODE:
	func   = INT2PTR(char *(*)( double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2 );
OUTPUT:
	RETVAL

char *
nci_tdss( c_func, d0, s1, s2 )
	SV* c_func
	double d0
	short s1
	short s2
PREINIT:
	char * (*func)( double, short, short );
CODE:
	func   = INT2PTR(char *(*)( double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2 );
OUTPUT:
	RETVAL

char *
nci_tdsf( c_func, d0, s1, f2 )
	SV* c_func
	double d0
	short s1
	float f2
PREINIT:
	char * (*func)( double, short, float );
CODE:
	func   = INT2PTR(char *(*)( double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2 );
OUTPUT:
	RETVAL

char *
nci_tdst( c_func, d0, s1, t2 )
	SV* c_func
	double d0
	short s1
	char * t2
PREINIT:
	char * (*func)( double, short, char * );
CODE:
	func   = INT2PTR(char *(*)( double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2 );
OUTPUT:
	RETVAL

char *
nci_tdsi( c_func, d0, s1, i2 )
	SV* c_func
	double d0
	short s1
	int i2
PREINIT:
	char * (*func)( double, short, int );
CODE:
	func   = INT2PTR(char *(*)( double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2 );
OUTPUT:
	RETVAL

char *
nci_tdfd( c_func, d0, f1, d2 )
	SV* c_func
	double d0
	float f1
	double d2
PREINIT:
	char * (*func)( double, float, double );
CODE:
	func   = INT2PTR(char *(*)( double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2 );
OUTPUT:
	RETVAL

char *
nci_tdfs( c_func, d0, f1, s2 )
	SV* c_func
	double d0
	float f1
	short s2
PREINIT:
	char * (*func)( double, float, short );
CODE:
	func   = INT2PTR(char *(*)( double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2 );
OUTPUT:
	RETVAL

char *
nci_tdff( c_func, d0, f1, f2 )
	SV* c_func
	double d0
	float f1
	float f2
PREINIT:
	char * (*func)( double, float, float );
CODE:
	func   = INT2PTR(char *(*)( double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2 );
OUTPUT:
	RETVAL

char *
nci_tdft( c_func, d0, f1, t2 )
	SV* c_func
	double d0
	float f1
	char * t2
PREINIT:
	char * (*func)( double, float, char * );
CODE:
	func   = INT2PTR(char *(*)( double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2 );
OUTPUT:
	RETVAL

char *
nci_tdfi( c_func, d0, f1, i2 )
	SV* c_func
	double d0
	float f1
	int i2
PREINIT:
	char * (*func)( double, float, int );
CODE:
	func   = INT2PTR(char *(*)( double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2 );
OUTPUT:
	RETVAL

char *
nci_tdtd( c_func, d0, t1, d2 )
	SV* c_func
	double d0
	char * t1
	double d2
PREINIT:
	char * (*func)( double, char *, double );
CODE:
	func   = INT2PTR(char *(*)( double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2 );
OUTPUT:
	RETVAL

char *
nci_tdts( c_func, d0, t1, s2 )
	SV* c_func
	double d0
	char * t1
	short s2
PREINIT:
	char * (*func)( double, char *, short );
CODE:
	func   = INT2PTR(char *(*)( double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2 );
OUTPUT:
	RETVAL

char *
nci_tdtf( c_func, d0, t1, f2 )
	SV* c_func
	double d0
	char * t1
	float f2
PREINIT:
	char * (*func)( double, char *, float );
CODE:
	func   = INT2PTR(char *(*)( double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2 );
OUTPUT:
	RETVAL

char *
nci_tdtt( c_func, d0, t1, t2 )
	SV* c_func
	double d0
	char * t1
	char * t2
PREINIT:
	char * (*func)( double, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2 );
OUTPUT:
	RETVAL

char *
nci_tdti( c_func, d0, t1, i2 )
	SV* c_func
	double d0
	char * t1
	int i2
PREINIT:
	char * (*func)( double, char *, int );
CODE:
	func   = INT2PTR(char *(*)( double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2 );
OUTPUT:
	RETVAL

char *
nci_tdid( c_func, d0, i1, d2 )
	SV* c_func
	double d0
	int i1
	double d2
PREINIT:
	char * (*func)( double, int, double );
CODE:
	func   = INT2PTR(char *(*)( double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2 );
OUTPUT:
	RETVAL

char *
nci_tdis( c_func, d0, i1, s2 )
	SV* c_func
	double d0
	int i1
	short s2
PREINIT:
	char * (*func)( double, int, short );
CODE:
	func   = INT2PTR(char *(*)( double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2 );
OUTPUT:
	RETVAL

char *
nci_tdif( c_func, d0, i1, f2 )
	SV* c_func
	double d0
	int i1
	float f2
PREINIT:
	char * (*func)( double, int, float );
CODE:
	func   = INT2PTR(char *(*)( double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2 );
OUTPUT:
	RETVAL

char *
nci_tdit( c_func, d0, i1, t2 )
	SV* c_func
	double d0
	int i1
	char * t2
PREINIT:
	char * (*func)( double, int, char * );
CODE:
	func   = INT2PTR(char *(*)( double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2 );
OUTPUT:
	RETVAL

char *
nci_tdii( c_func, d0, i1, i2 )
	SV* c_func
	double d0
	int i1
	int i2
PREINIT:
	char * (*func)( double, int, int );
CODE:
	func   = INT2PTR(char *(*)( double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2 );
OUTPUT:
	RETVAL

char *
nci_tsdd( c_func, s0, d1, d2 )
	SV* c_func
	short s0
	double d1
	double d2
PREINIT:
	char * (*func)( short, double, double );
CODE:
	func   = INT2PTR(char *(*)( short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2 );
OUTPUT:
	RETVAL

char *
nci_tsds( c_func, s0, d1, s2 )
	SV* c_func
	short s0
	double d1
	short s2
PREINIT:
	char * (*func)( short, double, short );
CODE:
	func   = INT2PTR(char *(*)( short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2 );
OUTPUT:
	RETVAL

char *
nci_tsdf( c_func, s0, d1, f2 )
	SV* c_func
	short s0
	double d1
	float f2
PREINIT:
	char * (*func)( short, double, float );
CODE:
	func   = INT2PTR(char *(*)( short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2 );
OUTPUT:
	RETVAL

char *
nci_tsdt( c_func, s0, d1, t2 )
	SV* c_func
	short s0
	double d1
	char * t2
PREINIT:
	char * (*func)( short, double, char * );
CODE:
	func   = INT2PTR(char *(*)( short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2 );
OUTPUT:
	RETVAL

char *
nci_tsdi( c_func, s0, d1, i2 )
	SV* c_func
	short s0
	double d1
	int i2
PREINIT:
	char * (*func)( short, double, int );
CODE:
	func   = INT2PTR(char *(*)( short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2 );
OUTPUT:
	RETVAL

char *
nci_tssd( c_func, s0, s1, d2 )
	SV* c_func
	short s0
	short s1
	double d2
PREINIT:
	char * (*func)( short, short, double );
CODE:
	func   = INT2PTR(char *(*)( short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2 );
OUTPUT:
	RETVAL

char *
nci_tsss( c_func, s0, s1, s2 )
	SV* c_func
	short s0
	short s1
	short s2
PREINIT:
	char * (*func)( short, short, short );
CODE:
	func   = INT2PTR(char *(*)( short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2 );
OUTPUT:
	RETVAL

char *
nci_tssf( c_func, s0, s1, f2 )
	SV* c_func
	short s0
	short s1
	float f2
PREINIT:
	char * (*func)( short, short, float );
CODE:
	func   = INT2PTR(char *(*)( short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2 );
OUTPUT:
	RETVAL

char *
nci_tsst( c_func, s0, s1, t2 )
	SV* c_func
	short s0
	short s1
	char * t2
PREINIT:
	char * (*func)( short, short, char * );
CODE:
	func   = INT2PTR(char *(*)( short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2 );
OUTPUT:
	RETVAL

char *
nci_tssi( c_func, s0, s1, i2 )
	SV* c_func
	short s0
	short s1
	int i2
PREINIT:
	char * (*func)( short, short, int );
CODE:
	func   = INT2PTR(char *(*)( short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2 );
OUTPUT:
	RETVAL

char *
nci_tsfd( c_func, s0, f1, d2 )
	SV* c_func
	short s0
	float f1
	double d2
PREINIT:
	char * (*func)( short, float, double );
CODE:
	func   = INT2PTR(char *(*)( short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2 );
OUTPUT:
	RETVAL

char *
nci_tsfs( c_func, s0, f1, s2 )
	SV* c_func
	short s0
	float f1
	short s2
PREINIT:
	char * (*func)( short, float, short );
CODE:
	func   = INT2PTR(char *(*)( short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2 );
OUTPUT:
	RETVAL

char *
nci_tsff( c_func, s0, f1, f2 )
	SV* c_func
	short s0
	float f1
	float f2
PREINIT:
	char * (*func)( short, float, float );
CODE:
	func   = INT2PTR(char *(*)( short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2 );
OUTPUT:
	RETVAL

char *
nci_tsft( c_func, s0, f1, t2 )
	SV* c_func
	short s0
	float f1
	char * t2
PREINIT:
	char * (*func)( short, float, char * );
CODE:
	func   = INT2PTR(char *(*)( short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2 );
OUTPUT:
	RETVAL

char *
nci_tsfi( c_func, s0, f1, i2 )
	SV* c_func
	short s0
	float f1
	int i2
PREINIT:
	char * (*func)( short, float, int );
CODE:
	func   = INT2PTR(char *(*)( short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2 );
OUTPUT:
	RETVAL

char *
nci_tstd( c_func, s0, t1, d2 )
	SV* c_func
	short s0
	char * t1
	double d2
PREINIT:
	char * (*func)( short, char *, double );
CODE:
	func   = INT2PTR(char *(*)( short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2 );
OUTPUT:
	RETVAL

char *
nci_tsts( c_func, s0, t1, s2 )
	SV* c_func
	short s0
	char * t1
	short s2
PREINIT:
	char * (*func)( short, char *, short );
CODE:
	func   = INT2PTR(char *(*)( short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2 );
OUTPUT:
	RETVAL

char *
nci_tstf( c_func, s0, t1, f2 )
	SV* c_func
	short s0
	char * t1
	float f2
PREINIT:
	char * (*func)( short, char *, float );
CODE:
	func   = INT2PTR(char *(*)( short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2 );
OUTPUT:
	RETVAL

char *
nci_tstt( c_func, s0, t1, t2 )
	SV* c_func
	short s0
	char * t1
	char * t2
PREINIT:
	char * (*func)( short, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2 );
OUTPUT:
	RETVAL

char *
nci_tsti( c_func, s0, t1, i2 )
	SV* c_func
	short s0
	char * t1
	int i2
PREINIT:
	char * (*func)( short, char *, int );
CODE:
	func   = INT2PTR(char *(*)( short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2 );
OUTPUT:
	RETVAL

char *
nci_tsid( c_func, s0, i1, d2 )
	SV* c_func
	short s0
	int i1
	double d2
PREINIT:
	char * (*func)( short, int, double );
CODE:
	func   = INT2PTR(char *(*)( short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2 );
OUTPUT:
	RETVAL

char *
nci_tsis( c_func, s0, i1, s2 )
	SV* c_func
	short s0
	int i1
	short s2
PREINIT:
	char * (*func)( short, int, short );
CODE:
	func   = INT2PTR(char *(*)( short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2 );
OUTPUT:
	RETVAL

char *
nci_tsif( c_func, s0, i1, f2 )
	SV* c_func
	short s0
	int i1
	float f2
PREINIT:
	char * (*func)( short, int, float );
CODE:
	func   = INT2PTR(char *(*)( short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2 );
OUTPUT:
	RETVAL

char *
nci_tsit( c_func, s0, i1, t2 )
	SV* c_func
	short s0
	int i1
	char * t2
PREINIT:
	char * (*func)( short, int, char * );
CODE:
	func   = INT2PTR(char *(*)( short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2 );
OUTPUT:
	RETVAL

char *
nci_tsii( c_func, s0, i1, i2 )
	SV* c_func
	short s0
	int i1
	int i2
PREINIT:
	char * (*func)( short, int, int );
CODE:
	func   = INT2PTR(char *(*)( short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2 );
OUTPUT:
	RETVAL

char *
nci_tfdd( c_func, f0, d1, d2 )
	SV* c_func
	float f0
	double d1
	double d2
PREINIT:
	char * (*func)( float, double, double );
CODE:
	func   = INT2PTR(char *(*)( float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2 );
OUTPUT:
	RETVAL

char *
nci_tfds( c_func, f0, d1, s2 )
	SV* c_func
	float f0
	double d1
	short s2
PREINIT:
	char * (*func)( float, double, short );
CODE:
	func   = INT2PTR(char *(*)( float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2 );
OUTPUT:
	RETVAL

char *
nci_tfdf( c_func, f0, d1, f2 )
	SV* c_func
	float f0
	double d1
	float f2
PREINIT:
	char * (*func)( float, double, float );
CODE:
	func   = INT2PTR(char *(*)( float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2 );
OUTPUT:
	RETVAL

char *
nci_tfdt( c_func, f0, d1, t2 )
	SV* c_func
	float f0
	double d1
	char * t2
PREINIT:
	char * (*func)( float, double, char * );
CODE:
	func   = INT2PTR(char *(*)( float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2 );
OUTPUT:
	RETVAL

char *
nci_tfdi( c_func, f0, d1, i2 )
	SV* c_func
	float f0
	double d1
	int i2
PREINIT:
	char * (*func)( float, double, int );
CODE:
	func   = INT2PTR(char *(*)( float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2 );
OUTPUT:
	RETVAL

char *
nci_tfsd( c_func, f0, s1, d2 )
	SV* c_func
	float f0
	short s1
	double d2
PREINIT:
	char * (*func)( float, short, double );
CODE:
	func   = INT2PTR(char *(*)( float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2 );
OUTPUT:
	RETVAL

char *
nci_tfss( c_func, f0, s1, s2 )
	SV* c_func
	float f0
	short s1
	short s2
PREINIT:
	char * (*func)( float, short, short );
CODE:
	func   = INT2PTR(char *(*)( float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2 );
OUTPUT:
	RETVAL

char *
nci_tfsf( c_func, f0, s1, f2 )
	SV* c_func
	float f0
	short s1
	float f2
PREINIT:
	char * (*func)( float, short, float );
CODE:
	func   = INT2PTR(char *(*)( float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2 );
OUTPUT:
	RETVAL

char *
nci_tfst( c_func, f0, s1, t2 )
	SV* c_func
	float f0
	short s1
	char * t2
PREINIT:
	char * (*func)( float, short, char * );
CODE:
	func   = INT2PTR(char *(*)( float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2 );
OUTPUT:
	RETVAL

char *
nci_tfsi( c_func, f0, s1, i2 )
	SV* c_func
	float f0
	short s1
	int i2
PREINIT:
	char * (*func)( float, short, int );
CODE:
	func   = INT2PTR(char *(*)( float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2 );
OUTPUT:
	RETVAL

char *
nci_tffd( c_func, f0, f1, d2 )
	SV* c_func
	float f0
	float f1
	double d2
PREINIT:
	char * (*func)( float, float, double );
CODE:
	func   = INT2PTR(char *(*)( float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2 );
OUTPUT:
	RETVAL

char *
nci_tffs( c_func, f0, f1, s2 )
	SV* c_func
	float f0
	float f1
	short s2
PREINIT:
	char * (*func)( float, float, short );
CODE:
	func   = INT2PTR(char *(*)( float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2 );
OUTPUT:
	RETVAL

char *
nci_tfff( c_func, f0, f1, f2 )
	SV* c_func
	float f0
	float f1
	float f2
PREINIT:
	char * (*func)( float, float, float );
CODE:
	func   = INT2PTR(char *(*)( float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2 );
OUTPUT:
	RETVAL

char *
nci_tfft( c_func, f0, f1, t2 )
	SV* c_func
	float f0
	float f1
	char * t2
PREINIT:
	char * (*func)( float, float, char * );
CODE:
	func   = INT2PTR(char *(*)( float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2 );
OUTPUT:
	RETVAL

char *
nci_tffi( c_func, f0, f1, i2 )
	SV* c_func
	float f0
	float f1
	int i2
PREINIT:
	char * (*func)( float, float, int );
CODE:
	func   = INT2PTR(char *(*)( float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2 );
OUTPUT:
	RETVAL

char *
nci_tftd( c_func, f0, t1, d2 )
	SV* c_func
	float f0
	char * t1
	double d2
PREINIT:
	char * (*func)( float, char *, double );
CODE:
	func   = INT2PTR(char *(*)( float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2 );
OUTPUT:
	RETVAL

char *
nci_tfts( c_func, f0, t1, s2 )
	SV* c_func
	float f0
	char * t1
	short s2
PREINIT:
	char * (*func)( float, char *, short );
CODE:
	func   = INT2PTR(char *(*)( float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2 );
OUTPUT:
	RETVAL

char *
nci_tftf( c_func, f0, t1, f2 )
	SV* c_func
	float f0
	char * t1
	float f2
PREINIT:
	char * (*func)( float, char *, float );
CODE:
	func   = INT2PTR(char *(*)( float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2 );
OUTPUT:
	RETVAL

char *
nci_tftt( c_func, f0, t1, t2 )
	SV* c_func
	float f0
	char * t1
	char * t2
PREINIT:
	char * (*func)( float, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2 );
OUTPUT:
	RETVAL

char *
nci_tfti( c_func, f0, t1, i2 )
	SV* c_func
	float f0
	char * t1
	int i2
PREINIT:
	char * (*func)( float, char *, int );
CODE:
	func   = INT2PTR(char *(*)( float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2 );
OUTPUT:
	RETVAL

char *
nci_tfid( c_func, f0, i1, d2 )
	SV* c_func
	float f0
	int i1
	double d2
PREINIT:
	char * (*func)( float, int, double );
CODE:
	func   = INT2PTR(char *(*)( float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2 );
OUTPUT:
	RETVAL

char *
nci_tfis( c_func, f0, i1, s2 )
	SV* c_func
	float f0
	int i1
	short s2
PREINIT:
	char * (*func)( float, int, short );
CODE:
	func   = INT2PTR(char *(*)( float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2 );
OUTPUT:
	RETVAL

char *
nci_tfif( c_func, f0, i1, f2 )
	SV* c_func
	float f0
	int i1
	float f2
PREINIT:
	char * (*func)( float, int, float );
CODE:
	func   = INT2PTR(char *(*)( float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2 );
OUTPUT:
	RETVAL

char *
nci_tfit( c_func, f0, i1, t2 )
	SV* c_func
	float f0
	int i1
	char * t2
PREINIT:
	char * (*func)( float, int, char * );
CODE:
	func   = INT2PTR(char *(*)( float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2 );
OUTPUT:
	RETVAL

char *
nci_tfii( c_func, f0, i1, i2 )
	SV* c_func
	float f0
	int i1
	int i2
PREINIT:
	char * (*func)( float, int, int );
CODE:
	func   = INT2PTR(char *(*)( float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2 );
OUTPUT:
	RETVAL

char *
nci_ttdd( c_func, t0, d1, d2 )
	SV* c_func
	char * t0
	double d1
	double d2
PREINIT:
	char * (*func)( char *, double, double );
CODE:
	func   = INT2PTR(char *(*)( char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2 );
OUTPUT:
	RETVAL

char *
nci_ttds( c_func, t0, d1, s2 )
	SV* c_func
	char * t0
	double d1
	short s2
PREINIT:
	char * (*func)( char *, double, short );
CODE:
	func   = INT2PTR(char *(*)( char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2 );
OUTPUT:
	RETVAL

char *
nci_ttdf( c_func, t0, d1, f2 )
	SV* c_func
	char * t0
	double d1
	float f2
PREINIT:
	char * (*func)( char *, double, float );
CODE:
	func   = INT2PTR(char *(*)( char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2 );
OUTPUT:
	RETVAL

char *
nci_ttdt( c_func, t0, d1, t2 )
	SV* c_func
	char * t0
	double d1
	char * t2
PREINIT:
	char * (*func)( char *, double, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2 );
OUTPUT:
	RETVAL

char *
nci_ttdi( c_func, t0, d1, i2 )
	SV* c_func
	char * t0
	double d1
	int i2
PREINIT:
	char * (*func)( char *, double, int );
CODE:
	func   = INT2PTR(char *(*)( char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2 );
OUTPUT:
	RETVAL

char *
nci_ttsd( c_func, t0, s1, d2 )
	SV* c_func
	char * t0
	short s1
	double d2
PREINIT:
	char * (*func)( char *, short, double );
CODE:
	func   = INT2PTR(char *(*)( char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2 );
OUTPUT:
	RETVAL

char *
nci_ttss( c_func, t0, s1, s2 )
	SV* c_func
	char * t0
	short s1
	short s2
PREINIT:
	char * (*func)( char *, short, short );
CODE:
	func   = INT2PTR(char *(*)( char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2 );
OUTPUT:
	RETVAL

char *
nci_ttsf( c_func, t0, s1, f2 )
	SV* c_func
	char * t0
	short s1
	float f2
PREINIT:
	char * (*func)( char *, short, float );
CODE:
	func   = INT2PTR(char *(*)( char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2 );
OUTPUT:
	RETVAL

char *
nci_ttst( c_func, t0, s1, t2 )
	SV* c_func
	char * t0
	short s1
	char * t2
PREINIT:
	char * (*func)( char *, short, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2 );
OUTPUT:
	RETVAL

char *
nci_ttsi( c_func, t0, s1, i2 )
	SV* c_func
	char * t0
	short s1
	int i2
PREINIT:
	char * (*func)( char *, short, int );
CODE:
	func   = INT2PTR(char *(*)( char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2 );
OUTPUT:
	RETVAL

char *
nci_ttfd( c_func, t0, f1, d2 )
	SV* c_func
	char * t0
	float f1
	double d2
PREINIT:
	char * (*func)( char *, float, double );
CODE:
	func   = INT2PTR(char *(*)( char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2 );
OUTPUT:
	RETVAL

char *
nci_ttfs( c_func, t0, f1, s2 )
	SV* c_func
	char * t0
	float f1
	short s2
PREINIT:
	char * (*func)( char *, float, short );
CODE:
	func   = INT2PTR(char *(*)( char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2 );
OUTPUT:
	RETVAL

char *
nci_ttff( c_func, t0, f1, f2 )
	SV* c_func
	char * t0
	float f1
	float f2
PREINIT:
	char * (*func)( char *, float, float );
CODE:
	func   = INT2PTR(char *(*)( char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2 );
OUTPUT:
	RETVAL

char *
nci_ttft( c_func, t0, f1, t2 )
	SV* c_func
	char * t0
	float f1
	char * t2
PREINIT:
	char * (*func)( char *, float, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2 );
OUTPUT:
	RETVAL

char *
nci_ttfi( c_func, t0, f1, i2 )
	SV* c_func
	char * t0
	float f1
	int i2
PREINIT:
	char * (*func)( char *, float, int );
CODE:
	func   = INT2PTR(char *(*)( char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2 );
OUTPUT:
	RETVAL

char *
nci_tttd( c_func, t0, t1, d2 )
	SV* c_func
	char * t0
	char * t1
	double d2
PREINIT:
	char * (*func)( char *, char *, double );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2 );
OUTPUT:
	RETVAL

char *
nci_ttts( c_func, t0, t1, s2 )
	SV* c_func
	char * t0
	char * t1
	short s2
PREINIT:
	char * (*func)( char *, char *, short );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2 );
OUTPUT:
	RETVAL

char *
nci_tttf( c_func, t0, t1, f2 )
	SV* c_func
	char * t0
	char * t1
	float f2
PREINIT:
	char * (*func)( char *, char *, float );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2 );
OUTPUT:
	RETVAL

char *
nci_tttt( c_func, t0, t1, t2 )
	SV* c_func
	char * t0
	char * t1
	char * t2
PREINIT:
	char * (*func)( char *, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2 );
OUTPUT:
	RETVAL

char *
nci_ttti( c_func, t0, t1, i2 )
	SV* c_func
	char * t0
	char * t1
	int i2
PREINIT:
	char * (*func)( char *, char *, int );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2 );
OUTPUT:
	RETVAL

char *
nci_ttid( c_func, t0, i1, d2 )
	SV* c_func
	char * t0
	int i1
	double d2
PREINIT:
	char * (*func)( char *, int, double );
CODE:
	func   = INT2PTR(char *(*)( char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2 );
OUTPUT:
	RETVAL

char *
nci_ttis( c_func, t0, i1, s2 )
	SV* c_func
	char * t0
	int i1
	short s2
PREINIT:
	char * (*func)( char *, int, short );
CODE:
	func   = INT2PTR(char *(*)( char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2 );
OUTPUT:
	RETVAL

char *
nci_ttif( c_func, t0, i1, f2 )
	SV* c_func
	char * t0
	int i1
	float f2
PREINIT:
	char * (*func)( char *, int, float );
CODE:
	func   = INT2PTR(char *(*)( char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2 );
OUTPUT:
	RETVAL

char *
nci_ttit( c_func, t0, i1, t2 )
	SV* c_func
	char * t0
	int i1
	char * t2
PREINIT:
	char * (*func)( char *, int, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2 );
OUTPUT:
	RETVAL

char *
nci_ttii( c_func, t0, i1, i2 )
	SV* c_func
	char * t0
	int i1
	int i2
PREINIT:
	char * (*func)( char *, int, int );
CODE:
	func   = INT2PTR(char *(*)( char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2 );
OUTPUT:
	RETVAL

char *
nci_tidd( c_func, i0, d1, d2 )
	SV* c_func
	int i0
	double d1
	double d2
PREINIT:
	char * (*func)( int, double, double );
CODE:
	func   = INT2PTR(char *(*)( int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2 );
OUTPUT:
	RETVAL

char *
nci_tids( c_func, i0, d1, s2 )
	SV* c_func
	int i0
	double d1
	short s2
PREINIT:
	char * (*func)( int, double, short );
CODE:
	func   = INT2PTR(char *(*)( int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2 );
OUTPUT:
	RETVAL

char *
nci_tidf( c_func, i0, d1, f2 )
	SV* c_func
	int i0
	double d1
	float f2
PREINIT:
	char * (*func)( int, double, float );
CODE:
	func   = INT2PTR(char *(*)( int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2 );
OUTPUT:
	RETVAL

char *
nci_tidt( c_func, i0, d1, t2 )
	SV* c_func
	int i0
	double d1
	char * t2
PREINIT:
	char * (*func)( int, double, char * );
CODE:
	func   = INT2PTR(char *(*)( int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2 );
OUTPUT:
	RETVAL

char *
nci_tidi( c_func, i0, d1, i2 )
	SV* c_func
	int i0
	double d1
	int i2
PREINIT:
	char * (*func)( int, double, int );
CODE:
	func   = INT2PTR(char *(*)( int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2 );
OUTPUT:
	RETVAL

char *
nci_tisd( c_func, i0, s1, d2 )
	SV* c_func
	int i0
	short s1
	double d2
PREINIT:
	char * (*func)( int, short, double );
CODE:
	func   = INT2PTR(char *(*)( int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2 );
OUTPUT:
	RETVAL

char *
nci_tiss( c_func, i0, s1, s2 )
	SV* c_func
	int i0
	short s1
	short s2
PREINIT:
	char * (*func)( int, short, short );
CODE:
	func   = INT2PTR(char *(*)( int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2 );
OUTPUT:
	RETVAL

char *
nci_tisf( c_func, i0, s1, f2 )
	SV* c_func
	int i0
	short s1
	float f2
PREINIT:
	char * (*func)( int, short, float );
CODE:
	func   = INT2PTR(char *(*)( int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2 );
OUTPUT:
	RETVAL

char *
nci_tist( c_func, i0, s1, t2 )
	SV* c_func
	int i0
	short s1
	char * t2
PREINIT:
	char * (*func)( int, short, char * );
CODE:
	func   = INT2PTR(char *(*)( int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2 );
OUTPUT:
	RETVAL

char *
nci_tisi( c_func, i0, s1, i2 )
	SV* c_func
	int i0
	short s1
	int i2
PREINIT:
	char * (*func)( int, short, int );
CODE:
	func   = INT2PTR(char *(*)( int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2 );
OUTPUT:
	RETVAL

char *
nci_tifd( c_func, i0, f1, d2 )
	SV* c_func
	int i0
	float f1
	double d2
PREINIT:
	char * (*func)( int, float, double );
CODE:
	func   = INT2PTR(char *(*)( int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2 );
OUTPUT:
	RETVAL

char *
nci_tifs( c_func, i0, f1, s2 )
	SV* c_func
	int i0
	float f1
	short s2
PREINIT:
	char * (*func)( int, float, short );
CODE:
	func   = INT2PTR(char *(*)( int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2 );
OUTPUT:
	RETVAL

char *
nci_tiff( c_func, i0, f1, f2 )
	SV* c_func
	int i0
	float f1
	float f2
PREINIT:
	char * (*func)( int, float, float );
CODE:
	func   = INT2PTR(char *(*)( int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2 );
OUTPUT:
	RETVAL

char *
nci_tift( c_func, i0, f1, t2 )
	SV* c_func
	int i0
	float f1
	char * t2
PREINIT:
	char * (*func)( int, float, char * );
CODE:
	func   = INT2PTR(char *(*)( int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2 );
OUTPUT:
	RETVAL

char *
nci_tifi( c_func, i0, f1, i2 )
	SV* c_func
	int i0
	float f1
	int i2
PREINIT:
	char * (*func)( int, float, int );
CODE:
	func   = INT2PTR(char *(*)( int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2 );
OUTPUT:
	RETVAL

char *
nci_titd( c_func, i0, t1, d2 )
	SV* c_func
	int i0
	char * t1
	double d2
PREINIT:
	char * (*func)( int, char *, double );
CODE:
	func   = INT2PTR(char *(*)( int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2 );
OUTPUT:
	RETVAL

char *
nci_tits( c_func, i0, t1, s2 )
	SV* c_func
	int i0
	char * t1
	short s2
PREINIT:
	char * (*func)( int, char *, short );
CODE:
	func   = INT2PTR(char *(*)( int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2 );
OUTPUT:
	RETVAL

char *
nci_titf( c_func, i0, t1, f2 )
	SV* c_func
	int i0
	char * t1
	float f2
PREINIT:
	char * (*func)( int, char *, float );
CODE:
	func   = INT2PTR(char *(*)( int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2 );
OUTPUT:
	RETVAL

char *
nci_titt( c_func, i0, t1, t2 )
	SV* c_func
	int i0
	char * t1
	char * t2
PREINIT:
	char * (*func)( int, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2 );
OUTPUT:
	RETVAL

char *
nci_titi( c_func, i0, t1, i2 )
	SV* c_func
	int i0
	char * t1
	int i2
PREINIT:
	char * (*func)( int, char *, int );
CODE:
	func   = INT2PTR(char *(*)( int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2 );
OUTPUT:
	RETVAL

char *
nci_tiid( c_func, i0, i1, d2 )
	SV* c_func
	int i0
	int i1
	double d2
PREINIT:
	char * (*func)( int, int, double );
CODE:
	func   = INT2PTR(char *(*)( int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2 );
OUTPUT:
	RETVAL

char *
nci_tiis( c_func, i0, i1, s2 )
	SV* c_func
	int i0
	int i1
	short s2
PREINIT:
	char * (*func)( int, int, short );
CODE:
	func   = INT2PTR(char *(*)( int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2 );
OUTPUT:
	RETVAL

char *
nci_tiif( c_func, i0, i1, f2 )
	SV* c_func
	int i0
	int i1
	float f2
PREINIT:
	char * (*func)( int, int, float );
CODE:
	func   = INT2PTR(char *(*)( int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2 );
OUTPUT:
	RETVAL

char *
nci_tiit( c_func, i0, i1, t2 )
	SV* c_func
	int i0
	int i1
	char * t2
PREINIT:
	char * (*func)( int, int, char * );
CODE:
	func   = INT2PTR(char *(*)( int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2 );
OUTPUT:
	RETVAL

char *
nci_tiii( c_func, i0, i1, i2 )
	SV* c_func
	int i0
	int i1
	int i2
PREINIT:
	char * (*func)( int, int, int );
CODE:
	func   = INT2PTR(char *(*)( int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2 );
OUTPUT:
	RETVAL

int
nci_iddd( c_func, d0, d1, d2 )
	SV* c_func
	double d0
	double d1
	double d2
PREINIT:
	int (*func)( double, double, double );
CODE:
	func   = INT2PTR(int(*)( double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2 );
OUTPUT:
	RETVAL

int
nci_idds( c_func, d0, d1, s2 )
	SV* c_func
	double d0
	double d1
	short s2
PREINIT:
	int (*func)( double, double, short );
CODE:
	func   = INT2PTR(int(*)( double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2 );
OUTPUT:
	RETVAL

int
nci_iddf( c_func, d0, d1, f2 )
	SV* c_func
	double d0
	double d1
	float f2
PREINIT:
	int (*func)( double, double, float );
CODE:
	func   = INT2PTR(int(*)( double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2 );
OUTPUT:
	RETVAL

int
nci_iddt( c_func, d0, d1, t2 )
	SV* c_func
	double d0
	double d1
	char * t2
PREINIT:
	int (*func)( double, double, char * );
CODE:
	func   = INT2PTR(int(*)( double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2 );
OUTPUT:
	RETVAL

int
nci_iddi( c_func, d0, d1, i2 )
	SV* c_func
	double d0
	double d1
	int i2
PREINIT:
	int (*func)( double, double, int );
CODE:
	func   = INT2PTR(int(*)( double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2 );
OUTPUT:
	RETVAL

int
nci_idsd( c_func, d0, s1, d2 )
	SV* c_func
	double d0
	short s1
	double d2
PREINIT:
	int (*func)( double, short, double );
CODE:
	func   = INT2PTR(int(*)( double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2 );
OUTPUT:
	RETVAL

int
nci_idss( c_func, d0, s1, s2 )
	SV* c_func
	double d0
	short s1
	short s2
PREINIT:
	int (*func)( double, short, short );
CODE:
	func   = INT2PTR(int(*)( double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2 );
OUTPUT:
	RETVAL

int
nci_idsf( c_func, d0, s1, f2 )
	SV* c_func
	double d0
	short s1
	float f2
PREINIT:
	int (*func)( double, short, float );
CODE:
	func   = INT2PTR(int(*)( double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2 );
OUTPUT:
	RETVAL

int
nci_idst( c_func, d0, s1, t2 )
	SV* c_func
	double d0
	short s1
	char * t2
PREINIT:
	int (*func)( double, short, char * );
CODE:
	func   = INT2PTR(int(*)( double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2 );
OUTPUT:
	RETVAL

int
nci_idsi( c_func, d0, s1, i2 )
	SV* c_func
	double d0
	short s1
	int i2
PREINIT:
	int (*func)( double, short, int );
CODE:
	func   = INT2PTR(int(*)( double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2 );
OUTPUT:
	RETVAL

int
nci_idfd( c_func, d0, f1, d2 )
	SV* c_func
	double d0
	float f1
	double d2
PREINIT:
	int (*func)( double, float, double );
CODE:
	func   = INT2PTR(int(*)( double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2 );
OUTPUT:
	RETVAL

int
nci_idfs( c_func, d0, f1, s2 )
	SV* c_func
	double d0
	float f1
	short s2
PREINIT:
	int (*func)( double, float, short );
CODE:
	func   = INT2PTR(int(*)( double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2 );
OUTPUT:
	RETVAL

int
nci_idff( c_func, d0, f1, f2 )
	SV* c_func
	double d0
	float f1
	float f2
PREINIT:
	int (*func)( double, float, float );
CODE:
	func   = INT2PTR(int(*)( double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2 );
OUTPUT:
	RETVAL

int
nci_idft( c_func, d0, f1, t2 )
	SV* c_func
	double d0
	float f1
	char * t2
PREINIT:
	int (*func)( double, float, char * );
CODE:
	func   = INT2PTR(int(*)( double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2 );
OUTPUT:
	RETVAL

int
nci_idfi( c_func, d0, f1, i2 )
	SV* c_func
	double d0
	float f1
	int i2
PREINIT:
	int (*func)( double, float, int );
CODE:
	func   = INT2PTR(int(*)( double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2 );
OUTPUT:
	RETVAL

int
nci_idtd( c_func, d0, t1, d2 )
	SV* c_func
	double d0
	char * t1
	double d2
PREINIT:
	int (*func)( double, char *, double );
CODE:
	func   = INT2PTR(int(*)( double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2 );
OUTPUT:
	RETVAL

int
nci_idts( c_func, d0, t1, s2 )
	SV* c_func
	double d0
	char * t1
	short s2
PREINIT:
	int (*func)( double, char *, short );
CODE:
	func   = INT2PTR(int(*)( double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2 );
OUTPUT:
	RETVAL

int
nci_idtf( c_func, d0, t1, f2 )
	SV* c_func
	double d0
	char * t1
	float f2
PREINIT:
	int (*func)( double, char *, float );
CODE:
	func   = INT2PTR(int(*)( double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2 );
OUTPUT:
	RETVAL

int
nci_idtt( c_func, d0, t1, t2 )
	SV* c_func
	double d0
	char * t1
	char * t2
PREINIT:
	int (*func)( double, char *, char * );
CODE:
	func   = INT2PTR(int(*)( double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2 );
OUTPUT:
	RETVAL

int
nci_idti( c_func, d0, t1, i2 )
	SV* c_func
	double d0
	char * t1
	int i2
PREINIT:
	int (*func)( double, char *, int );
CODE:
	func   = INT2PTR(int(*)( double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2 );
OUTPUT:
	RETVAL

int
nci_idid( c_func, d0, i1, d2 )
	SV* c_func
	double d0
	int i1
	double d2
PREINIT:
	int (*func)( double, int, double );
CODE:
	func   = INT2PTR(int(*)( double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2 );
OUTPUT:
	RETVAL

int
nci_idis( c_func, d0, i1, s2 )
	SV* c_func
	double d0
	int i1
	short s2
PREINIT:
	int (*func)( double, int, short );
CODE:
	func   = INT2PTR(int(*)( double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2 );
OUTPUT:
	RETVAL

int
nci_idif( c_func, d0, i1, f2 )
	SV* c_func
	double d0
	int i1
	float f2
PREINIT:
	int (*func)( double, int, float );
CODE:
	func   = INT2PTR(int(*)( double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2 );
OUTPUT:
	RETVAL

int
nci_idit( c_func, d0, i1, t2 )
	SV* c_func
	double d0
	int i1
	char * t2
PREINIT:
	int (*func)( double, int, char * );
CODE:
	func   = INT2PTR(int(*)( double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2 );
OUTPUT:
	RETVAL

int
nci_idii( c_func, d0, i1, i2 )
	SV* c_func
	double d0
	int i1
	int i2
PREINIT:
	int (*func)( double, int, int );
CODE:
	func   = INT2PTR(int(*)( double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2 );
OUTPUT:
	RETVAL

int
nci_isdd( c_func, s0, d1, d2 )
	SV* c_func
	short s0
	double d1
	double d2
PREINIT:
	int (*func)( short, double, double );
CODE:
	func   = INT2PTR(int(*)( short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2 );
OUTPUT:
	RETVAL

int
nci_isds( c_func, s0, d1, s2 )
	SV* c_func
	short s0
	double d1
	short s2
PREINIT:
	int (*func)( short, double, short );
CODE:
	func   = INT2PTR(int(*)( short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2 );
OUTPUT:
	RETVAL

int
nci_isdf( c_func, s0, d1, f2 )
	SV* c_func
	short s0
	double d1
	float f2
PREINIT:
	int (*func)( short, double, float );
CODE:
	func   = INT2PTR(int(*)( short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2 );
OUTPUT:
	RETVAL

int
nci_isdt( c_func, s0, d1, t2 )
	SV* c_func
	short s0
	double d1
	char * t2
PREINIT:
	int (*func)( short, double, char * );
CODE:
	func   = INT2PTR(int(*)( short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2 );
OUTPUT:
	RETVAL

int
nci_isdi( c_func, s0, d1, i2 )
	SV* c_func
	short s0
	double d1
	int i2
PREINIT:
	int (*func)( short, double, int );
CODE:
	func   = INT2PTR(int(*)( short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2 );
OUTPUT:
	RETVAL

int
nci_issd( c_func, s0, s1, d2 )
	SV* c_func
	short s0
	short s1
	double d2
PREINIT:
	int (*func)( short, short, double );
CODE:
	func   = INT2PTR(int(*)( short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2 );
OUTPUT:
	RETVAL

int
nci_isss( c_func, s0, s1, s2 )
	SV* c_func
	short s0
	short s1
	short s2
PREINIT:
	int (*func)( short, short, short );
CODE:
	func   = INT2PTR(int(*)( short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2 );
OUTPUT:
	RETVAL

int
nci_issf( c_func, s0, s1, f2 )
	SV* c_func
	short s0
	short s1
	float f2
PREINIT:
	int (*func)( short, short, float );
CODE:
	func   = INT2PTR(int(*)( short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2 );
OUTPUT:
	RETVAL

int
nci_isst( c_func, s0, s1, t2 )
	SV* c_func
	short s0
	short s1
	char * t2
PREINIT:
	int (*func)( short, short, char * );
CODE:
	func   = INT2PTR(int(*)( short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2 );
OUTPUT:
	RETVAL

int
nci_issi( c_func, s0, s1, i2 )
	SV* c_func
	short s0
	short s1
	int i2
PREINIT:
	int (*func)( short, short, int );
CODE:
	func   = INT2PTR(int(*)( short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2 );
OUTPUT:
	RETVAL

int
nci_isfd( c_func, s0, f1, d2 )
	SV* c_func
	short s0
	float f1
	double d2
PREINIT:
	int (*func)( short, float, double );
CODE:
	func   = INT2PTR(int(*)( short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2 );
OUTPUT:
	RETVAL

int
nci_isfs( c_func, s0, f1, s2 )
	SV* c_func
	short s0
	float f1
	short s2
PREINIT:
	int (*func)( short, float, short );
CODE:
	func   = INT2PTR(int(*)( short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2 );
OUTPUT:
	RETVAL

int
nci_isff( c_func, s0, f1, f2 )
	SV* c_func
	short s0
	float f1
	float f2
PREINIT:
	int (*func)( short, float, float );
CODE:
	func   = INT2PTR(int(*)( short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2 );
OUTPUT:
	RETVAL

int
nci_isft( c_func, s0, f1, t2 )
	SV* c_func
	short s0
	float f1
	char * t2
PREINIT:
	int (*func)( short, float, char * );
CODE:
	func   = INT2PTR(int(*)( short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2 );
OUTPUT:
	RETVAL

int
nci_isfi( c_func, s0, f1, i2 )
	SV* c_func
	short s0
	float f1
	int i2
PREINIT:
	int (*func)( short, float, int );
CODE:
	func   = INT2PTR(int(*)( short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2 );
OUTPUT:
	RETVAL

int
nci_istd( c_func, s0, t1, d2 )
	SV* c_func
	short s0
	char * t1
	double d2
PREINIT:
	int (*func)( short, char *, double );
CODE:
	func   = INT2PTR(int(*)( short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2 );
OUTPUT:
	RETVAL

int
nci_ists( c_func, s0, t1, s2 )
	SV* c_func
	short s0
	char * t1
	short s2
PREINIT:
	int (*func)( short, char *, short );
CODE:
	func   = INT2PTR(int(*)( short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2 );
OUTPUT:
	RETVAL

int
nci_istf( c_func, s0, t1, f2 )
	SV* c_func
	short s0
	char * t1
	float f2
PREINIT:
	int (*func)( short, char *, float );
CODE:
	func   = INT2PTR(int(*)( short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2 );
OUTPUT:
	RETVAL

int
nci_istt( c_func, s0, t1, t2 )
	SV* c_func
	short s0
	char * t1
	char * t2
PREINIT:
	int (*func)( short, char *, char * );
CODE:
	func   = INT2PTR(int(*)( short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2 );
OUTPUT:
	RETVAL

int
nci_isti( c_func, s0, t1, i2 )
	SV* c_func
	short s0
	char * t1
	int i2
PREINIT:
	int (*func)( short, char *, int );
CODE:
	func   = INT2PTR(int(*)( short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2 );
OUTPUT:
	RETVAL

int
nci_isid( c_func, s0, i1, d2 )
	SV* c_func
	short s0
	int i1
	double d2
PREINIT:
	int (*func)( short, int, double );
CODE:
	func   = INT2PTR(int(*)( short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2 );
OUTPUT:
	RETVAL

int
nci_isis( c_func, s0, i1, s2 )
	SV* c_func
	short s0
	int i1
	short s2
PREINIT:
	int (*func)( short, int, short );
CODE:
	func   = INT2PTR(int(*)( short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2 );
OUTPUT:
	RETVAL

int
nci_isif( c_func, s0, i1, f2 )
	SV* c_func
	short s0
	int i1
	float f2
PREINIT:
	int (*func)( short, int, float );
CODE:
	func   = INT2PTR(int(*)( short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2 );
OUTPUT:
	RETVAL

int
nci_isit( c_func, s0, i1, t2 )
	SV* c_func
	short s0
	int i1
	char * t2
PREINIT:
	int (*func)( short, int, char * );
CODE:
	func   = INT2PTR(int(*)( short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2 );
OUTPUT:
	RETVAL

int
nci_isii( c_func, s0, i1, i2 )
	SV* c_func
	short s0
	int i1
	int i2
PREINIT:
	int (*func)( short, int, int );
CODE:
	func   = INT2PTR(int(*)( short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2 );
OUTPUT:
	RETVAL

int
nci_ifdd( c_func, f0, d1, d2 )
	SV* c_func
	float f0
	double d1
	double d2
PREINIT:
	int (*func)( float, double, double );
CODE:
	func   = INT2PTR(int(*)( float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2 );
OUTPUT:
	RETVAL

int
nci_ifds( c_func, f0, d1, s2 )
	SV* c_func
	float f0
	double d1
	short s2
PREINIT:
	int (*func)( float, double, short );
CODE:
	func   = INT2PTR(int(*)( float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2 );
OUTPUT:
	RETVAL

int
nci_ifdf( c_func, f0, d1, f2 )
	SV* c_func
	float f0
	double d1
	float f2
PREINIT:
	int (*func)( float, double, float );
CODE:
	func   = INT2PTR(int(*)( float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2 );
OUTPUT:
	RETVAL

int
nci_ifdt( c_func, f0, d1, t2 )
	SV* c_func
	float f0
	double d1
	char * t2
PREINIT:
	int (*func)( float, double, char * );
CODE:
	func   = INT2PTR(int(*)( float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2 );
OUTPUT:
	RETVAL

int
nci_ifdi( c_func, f0, d1, i2 )
	SV* c_func
	float f0
	double d1
	int i2
PREINIT:
	int (*func)( float, double, int );
CODE:
	func   = INT2PTR(int(*)( float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2 );
OUTPUT:
	RETVAL

int
nci_ifsd( c_func, f0, s1, d2 )
	SV* c_func
	float f0
	short s1
	double d2
PREINIT:
	int (*func)( float, short, double );
CODE:
	func   = INT2PTR(int(*)( float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2 );
OUTPUT:
	RETVAL

int
nci_ifss( c_func, f0, s1, s2 )
	SV* c_func
	float f0
	short s1
	short s2
PREINIT:
	int (*func)( float, short, short );
CODE:
	func   = INT2PTR(int(*)( float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2 );
OUTPUT:
	RETVAL

int
nci_ifsf( c_func, f0, s1, f2 )
	SV* c_func
	float f0
	short s1
	float f2
PREINIT:
	int (*func)( float, short, float );
CODE:
	func   = INT2PTR(int(*)( float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2 );
OUTPUT:
	RETVAL

int
nci_ifst( c_func, f0, s1, t2 )
	SV* c_func
	float f0
	short s1
	char * t2
PREINIT:
	int (*func)( float, short, char * );
CODE:
	func   = INT2PTR(int(*)( float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2 );
OUTPUT:
	RETVAL

int
nci_ifsi( c_func, f0, s1, i2 )
	SV* c_func
	float f0
	short s1
	int i2
PREINIT:
	int (*func)( float, short, int );
CODE:
	func   = INT2PTR(int(*)( float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2 );
OUTPUT:
	RETVAL

int
nci_iffd( c_func, f0, f1, d2 )
	SV* c_func
	float f0
	float f1
	double d2
PREINIT:
	int (*func)( float, float, double );
CODE:
	func   = INT2PTR(int(*)( float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2 );
OUTPUT:
	RETVAL

int
nci_iffs( c_func, f0, f1, s2 )
	SV* c_func
	float f0
	float f1
	short s2
PREINIT:
	int (*func)( float, float, short );
CODE:
	func   = INT2PTR(int(*)( float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2 );
OUTPUT:
	RETVAL

int
nci_ifff( c_func, f0, f1, f2 )
	SV* c_func
	float f0
	float f1
	float f2
PREINIT:
	int (*func)( float, float, float );
CODE:
	func   = INT2PTR(int(*)( float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2 );
OUTPUT:
	RETVAL

int
nci_ifft( c_func, f0, f1, t2 )
	SV* c_func
	float f0
	float f1
	char * t2
PREINIT:
	int (*func)( float, float, char * );
CODE:
	func   = INT2PTR(int(*)( float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2 );
OUTPUT:
	RETVAL

int
nci_iffi( c_func, f0, f1, i2 )
	SV* c_func
	float f0
	float f1
	int i2
PREINIT:
	int (*func)( float, float, int );
CODE:
	func   = INT2PTR(int(*)( float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2 );
OUTPUT:
	RETVAL

int
nci_iftd( c_func, f0, t1, d2 )
	SV* c_func
	float f0
	char * t1
	double d2
PREINIT:
	int (*func)( float, char *, double );
CODE:
	func   = INT2PTR(int(*)( float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2 );
OUTPUT:
	RETVAL

int
nci_ifts( c_func, f0, t1, s2 )
	SV* c_func
	float f0
	char * t1
	short s2
PREINIT:
	int (*func)( float, char *, short );
CODE:
	func   = INT2PTR(int(*)( float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2 );
OUTPUT:
	RETVAL

int
nci_iftf( c_func, f0, t1, f2 )
	SV* c_func
	float f0
	char * t1
	float f2
PREINIT:
	int (*func)( float, char *, float );
CODE:
	func   = INT2PTR(int(*)( float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2 );
OUTPUT:
	RETVAL

int
nci_iftt( c_func, f0, t1, t2 )
	SV* c_func
	float f0
	char * t1
	char * t2
PREINIT:
	int (*func)( float, char *, char * );
CODE:
	func   = INT2PTR(int(*)( float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2 );
OUTPUT:
	RETVAL

int
nci_ifti( c_func, f0, t1, i2 )
	SV* c_func
	float f0
	char * t1
	int i2
PREINIT:
	int (*func)( float, char *, int );
CODE:
	func   = INT2PTR(int(*)( float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2 );
OUTPUT:
	RETVAL

int
nci_ifid( c_func, f0, i1, d2 )
	SV* c_func
	float f0
	int i1
	double d2
PREINIT:
	int (*func)( float, int, double );
CODE:
	func   = INT2PTR(int(*)( float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2 );
OUTPUT:
	RETVAL

int
nci_ifis( c_func, f0, i1, s2 )
	SV* c_func
	float f0
	int i1
	short s2
PREINIT:
	int (*func)( float, int, short );
CODE:
	func   = INT2PTR(int(*)( float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2 );
OUTPUT:
	RETVAL

int
nci_ifif( c_func, f0, i1, f2 )
	SV* c_func
	float f0
	int i1
	float f2
PREINIT:
	int (*func)( float, int, float );
CODE:
	func   = INT2PTR(int(*)( float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2 );
OUTPUT:
	RETVAL

int
nci_ifit( c_func, f0, i1, t2 )
	SV* c_func
	float f0
	int i1
	char * t2
PREINIT:
	int (*func)( float, int, char * );
CODE:
	func   = INT2PTR(int(*)( float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2 );
OUTPUT:
	RETVAL

int
nci_ifii( c_func, f0, i1, i2 )
	SV* c_func
	float f0
	int i1
	int i2
PREINIT:
	int (*func)( float, int, int );
CODE:
	func   = INT2PTR(int(*)( float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2 );
OUTPUT:
	RETVAL

int
nci_itdd( c_func, t0, d1, d2 )
	SV* c_func
	char * t0
	double d1
	double d2
PREINIT:
	int (*func)( char *, double, double );
CODE:
	func   = INT2PTR(int(*)( char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2 );
OUTPUT:
	RETVAL

int
nci_itds( c_func, t0, d1, s2 )
	SV* c_func
	char * t0
	double d1
	short s2
PREINIT:
	int (*func)( char *, double, short );
CODE:
	func   = INT2PTR(int(*)( char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2 );
OUTPUT:
	RETVAL

int
nci_itdf( c_func, t0, d1, f2 )
	SV* c_func
	char * t0
	double d1
	float f2
PREINIT:
	int (*func)( char *, double, float );
CODE:
	func   = INT2PTR(int(*)( char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2 );
OUTPUT:
	RETVAL

int
nci_itdt( c_func, t0, d1, t2 )
	SV* c_func
	char * t0
	double d1
	char * t2
PREINIT:
	int (*func)( char *, double, char * );
CODE:
	func   = INT2PTR(int(*)( char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2 );
OUTPUT:
	RETVAL

int
nci_itdi( c_func, t0, d1, i2 )
	SV* c_func
	char * t0
	double d1
	int i2
PREINIT:
	int (*func)( char *, double, int );
CODE:
	func   = INT2PTR(int(*)( char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2 );
OUTPUT:
	RETVAL

int
nci_itsd( c_func, t0, s1, d2 )
	SV* c_func
	char * t0
	short s1
	double d2
PREINIT:
	int (*func)( char *, short, double );
CODE:
	func   = INT2PTR(int(*)( char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2 );
OUTPUT:
	RETVAL

int
nci_itss( c_func, t0, s1, s2 )
	SV* c_func
	char * t0
	short s1
	short s2
PREINIT:
	int (*func)( char *, short, short );
CODE:
	func   = INT2PTR(int(*)( char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2 );
OUTPUT:
	RETVAL

int
nci_itsf( c_func, t0, s1, f2 )
	SV* c_func
	char * t0
	short s1
	float f2
PREINIT:
	int (*func)( char *, short, float );
CODE:
	func   = INT2PTR(int(*)( char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2 );
OUTPUT:
	RETVAL

int
nci_itst( c_func, t0, s1, t2 )
	SV* c_func
	char * t0
	short s1
	char * t2
PREINIT:
	int (*func)( char *, short, char * );
CODE:
	func   = INT2PTR(int(*)( char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2 );
OUTPUT:
	RETVAL

int
nci_itsi( c_func, t0, s1, i2 )
	SV* c_func
	char * t0
	short s1
	int i2
PREINIT:
	int (*func)( char *, short, int );
CODE:
	func   = INT2PTR(int(*)( char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2 );
OUTPUT:
	RETVAL

int
nci_itfd( c_func, t0, f1, d2 )
	SV* c_func
	char * t0
	float f1
	double d2
PREINIT:
	int (*func)( char *, float, double );
CODE:
	func   = INT2PTR(int(*)( char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2 );
OUTPUT:
	RETVAL

int
nci_itfs( c_func, t0, f1, s2 )
	SV* c_func
	char * t0
	float f1
	short s2
PREINIT:
	int (*func)( char *, float, short );
CODE:
	func   = INT2PTR(int(*)( char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2 );
OUTPUT:
	RETVAL

int
nci_itff( c_func, t0, f1, f2 )
	SV* c_func
	char * t0
	float f1
	float f2
PREINIT:
	int (*func)( char *, float, float );
CODE:
	func   = INT2PTR(int(*)( char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2 );
OUTPUT:
	RETVAL

int
nci_itft( c_func, t0, f1, t2 )
	SV* c_func
	char * t0
	float f1
	char * t2
PREINIT:
	int (*func)( char *, float, char * );
CODE:
	func   = INT2PTR(int(*)( char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2 );
OUTPUT:
	RETVAL

int
nci_itfi( c_func, t0, f1, i2 )
	SV* c_func
	char * t0
	float f1
	int i2
PREINIT:
	int (*func)( char *, float, int );
CODE:
	func   = INT2PTR(int(*)( char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2 );
OUTPUT:
	RETVAL

int
nci_ittd( c_func, t0, t1, d2 )
	SV* c_func
	char * t0
	char * t1
	double d2
PREINIT:
	int (*func)( char *, char *, double );
CODE:
	func   = INT2PTR(int(*)( char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2 );
OUTPUT:
	RETVAL

int
nci_itts( c_func, t0, t1, s2 )
	SV* c_func
	char * t0
	char * t1
	short s2
PREINIT:
	int (*func)( char *, char *, short );
CODE:
	func   = INT2PTR(int(*)( char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2 );
OUTPUT:
	RETVAL

int
nci_ittf( c_func, t0, t1, f2 )
	SV* c_func
	char * t0
	char * t1
	float f2
PREINIT:
	int (*func)( char *, char *, float );
CODE:
	func   = INT2PTR(int(*)( char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2 );
OUTPUT:
	RETVAL

int
nci_ittt( c_func, t0, t1, t2 )
	SV* c_func
	char * t0
	char * t1
	char * t2
PREINIT:
	int (*func)( char *, char *, char * );
CODE:
	func   = INT2PTR(int(*)( char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2 );
OUTPUT:
	RETVAL

int
nci_itti( c_func, t0, t1, i2 )
	SV* c_func
	char * t0
	char * t1
	int i2
PREINIT:
	int (*func)( char *, char *, int );
CODE:
	func   = INT2PTR(int(*)( char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2 );
OUTPUT:
	RETVAL

int
nci_itid( c_func, t0, i1, d2 )
	SV* c_func
	char * t0
	int i1
	double d2
PREINIT:
	int (*func)( char *, int, double );
CODE:
	func   = INT2PTR(int(*)( char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2 );
OUTPUT:
	RETVAL

int
nci_itis( c_func, t0, i1, s2 )
	SV* c_func
	char * t0
	int i1
	short s2
PREINIT:
	int (*func)( char *, int, short );
CODE:
	func   = INT2PTR(int(*)( char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2 );
OUTPUT:
	RETVAL

int
nci_itif( c_func, t0, i1, f2 )
	SV* c_func
	char * t0
	int i1
	float f2
PREINIT:
	int (*func)( char *, int, float );
CODE:
	func   = INT2PTR(int(*)( char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2 );
OUTPUT:
	RETVAL

int
nci_itit( c_func, t0, i1, t2 )
	SV* c_func
	char * t0
	int i1
	char * t2
PREINIT:
	int (*func)( char *, int, char * );
CODE:
	func   = INT2PTR(int(*)( char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2 );
OUTPUT:
	RETVAL

int
nci_itii( c_func, t0, i1, i2 )
	SV* c_func
	char * t0
	int i1
	int i2
PREINIT:
	int (*func)( char *, int, int );
CODE:
	func   = INT2PTR(int(*)( char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2 );
OUTPUT:
	RETVAL

int
nci_iidd( c_func, i0, d1, d2 )
	SV* c_func
	int i0
	double d1
	double d2
PREINIT:
	int (*func)( int, double, double );
CODE:
	func   = INT2PTR(int(*)( int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2 );
OUTPUT:
	RETVAL

int
nci_iids( c_func, i0, d1, s2 )
	SV* c_func
	int i0
	double d1
	short s2
PREINIT:
	int (*func)( int, double, short );
CODE:
	func   = INT2PTR(int(*)( int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2 );
OUTPUT:
	RETVAL

int
nci_iidf( c_func, i0, d1, f2 )
	SV* c_func
	int i0
	double d1
	float f2
PREINIT:
	int (*func)( int, double, float );
CODE:
	func   = INT2PTR(int(*)( int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2 );
OUTPUT:
	RETVAL

int
nci_iidt( c_func, i0, d1, t2 )
	SV* c_func
	int i0
	double d1
	char * t2
PREINIT:
	int (*func)( int, double, char * );
CODE:
	func   = INT2PTR(int(*)( int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2 );
OUTPUT:
	RETVAL

int
nci_iidi( c_func, i0, d1, i2 )
	SV* c_func
	int i0
	double d1
	int i2
PREINIT:
	int (*func)( int, double, int );
CODE:
	func   = INT2PTR(int(*)( int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2 );
OUTPUT:
	RETVAL

int
nci_iisd( c_func, i0, s1, d2 )
	SV* c_func
	int i0
	short s1
	double d2
PREINIT:
	int (*func)( int, short, double );
CODE:
	func   = INT2PTR(int(*)( int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2 );
OUTPUT:
	RETVAL

int
nci_iiss( c_func, i0, s1, s2 )
	SV* c_func
	int i0
	short s1
	short s2
PREINIT:
	int (*func)( int, short, short );
CODE:
	func   = INT2PTR(int(*)( int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2 );
OUTPUT:
	RETVAL

int
nci_iisf( c_func, i0, s1, f2 )
	SV* c_func
	int i0
	short s1
	float f2
PREINIT:
	int (*func)( int, short, float );
CODE:
	func   = INT2PTR(int(*)( int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2 );
OUTPUT:
	RETVAL

int
nci_iist( c_func, i0, s1, t2 )
	SV* c_func
	int i0
	short s1
	char * t2
PREINIT:
	int (*func)( int, short, char * );
CODE:
	func   = INT2PTR(int(*)( int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2 );
OUTPUT:
	RETVAL

int
nci_iisi( c_func, i0, s1, i2 )
	SV* c_func
	int i0
	short s1
	int i2
PREINIT:
	int (*func)( int, short, int );
CODE:
	func   = INT2PTR(int(*)( int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2 );
OUTPUT:
	RETVAL

int
nci_iifd( c_func, i0, f1, d2 )
	SV* c_func
	int i0
	float f1
	double d2
PREINIT:
	int (*func)( int, float, double );
CODE:
	func   = INT2PTR(int(*)( int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2 );
OUTPUT:
	RETVAL

int
nci_iifs( c_func, i0, f1, s2 )
	SV* c_func
	int i0
	float f1
	short s2
PREINIT:
	int (*func)( int, float, short );
CODE:
	func   = INT2PTR(int(*)( int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2 );
OUTPUT:
	RETVAL

int
nci_iiff( c_func, i0, f1, f2 )
	SV* c_func
	int i0
	float f1
	float f2
PREINIT:
	int (*func)( int, float, float );
CODE:
	func   = INT2PTR(int(*)( int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2 );
OUTPUT:
	RETVAL

int
nci_iift( c_func, i0, f1, t2 )
	SV* c_func
	int i0
	float f1
	char * t2
PREINIT:
	int (*func)( int, float, char * );
CODE:
	func   = INT2PTR(int(*)( int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2 );
OUTPUT:
	RETVAL

int
nci_iifi( c_func, i0, f1, i2 )
	SV* c_func
	int i0
	float f1
	int i2
PREINIT:
	int (*func)( int, float, int );
CODE:
	func   = INT2PTR(int(*)( int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2 );
OUTPUT:
	RETVAL

int
nci_iitd( c_func, i0, t1, d2 )
	SV* c_func
	int i0
	char * t1
	double d2
PREINIT:
	int (*func)( int, char *, double );
CODE:
	func   = INT2PTR(int(*)( int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2 );
OUTPUT:
	RETVAL

int
nci_iits( c_func, i0, t1, s2 )
	SV* c_func
	int i0
	char * t1
	short s2
PREINIT:
	int (*func)( int, char *, short );
CODE:
	func   = INT2PTR(int(*)( int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2 );
OUTPUT:
	RETVAL

int
nci_iitf( c_func, i0, t1, f2 )
	SV* c_func
	int i0
	char * t1
	float f2
PREINIT:
	int (*func)( int, char *, float );
CODE:
	func   = INT2PTR(int(*)( int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2 );
OUTPUT:
	RETVAL

int
nci_iitt( c_func, i0, t1, t2 )
	SV* c_func
	int i0
	char * t1
	char * t2
PREINIT:
	int (*func)( int, char *, char * );
CODE:
	func   = INT2PTR(int(*)( int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2 );
OUTPUT:
	RETVAL

int
nci_iiti( c_func, i0, t1, i2 )
	SV* c_func
	int i0
	char * t1
	int i2
PREINIT:
	int (*func)( int, char *, int );
CODE:
	func   = INT2PTR(int(*)( int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2 );
OUTPUT:
	RETVAL

int
nci_iiid( c_func, i0, i1, d2 )
	SV* c_func
	int i0
	int i1
	double d2
PREINIT:
	int (*func)( int, int, double );
CODE:
	func   = INT2PTR(int(*)( int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2 );
OUTPUT:
	RETVAL

int
nci_iiis( c_func, i0, i1, s2 )
	SV* c_func
	int i0
	int i1
	short s2
PREINIT:
	int (*func)( int, int, short );
CODE:
	func   = INT2PTR(int(*)( int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2 );
OUTPUT:
	RETVAL

int
nci_iiif( c_func, i0, i1, f2 )
	SV* c_func
	int i0
	int i1
	float f2
PREINIT:
	int (*func)( int, int, float );
CODE:
	func   = INT2PTR(int(*)( int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2 );
OUTPUT:
	RETVAL

int
nci_iiit( c_func, i0, i1, t2 )
	SV* c_func
	int i0
	int i1
	char * t2
PREINIT:
	int (*func)( int, int, char * );
CODE:
	func   = INT2PTR(int(*)( int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2 );
OUTPUT:
	RETVAL

int
nci_iiii( c_func, i0, i1, i2 )
	SV* c_func
	int i0
	int i1
	int i2
PREINIT:
	int (*func)( int, int, int );
CODE:
	func   = INT2PTR(int(*)( int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2 );
OUTPUT:
	RETVAL

double
nci_ddddd( c_func, d0, d1, d2, d3 )
	SV* c_func
	double d0
	double d1
	double d2
	double d3
PREINIT:
	double (*func)( double, double, double, double );
CODE:
	func   = INT2PTR(double(*)( double, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dddds( c_func, d0, d1, d2, s3 )
	SV* c_func
	double d0
	double d1
	double d2
	short s3
PREINIT:
	double (*func)( double, double, double, short );
CODE:
	func   = INT2PTR(double(*)( double, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_ddddf( c_func, d0, d1, d2, f3 )
	SV* c_func
	double d0
	double d1
	double d2
	float f3
PREINIT:
	double (*func)( double, double, double, float );
CODE:
	func   = INT2PTR(double(*)( double, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_ddddt( c_func, d0, d1, d2, t3 )
	SV* c_func
	double d0
	double d1
	double d2
	char * t3
PREINIT:
	double (*func)( double, double, double, char * );
CODE:
	func   = INT2PTR(double(*)( double, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_ddddi( c_func, d0, d1, d2, i3 )
	SV* c_func
	double d0
	double d1
	double d2
	int i3
PREINIT:
	double (*func)( double, double, double, int );
CODE:
	func   = INT2PTR(double(*)( double, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dddsd( c_func, d0, d1, s2, d3 )
	SV* c_func
	double d0
	double d1
	short s2
	double d3
PREINIT:
	double (*func)( double, double, short, double );
CODE:
	func   = INT2PTR(double(*)( double, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dddss( c_func, d0, d1, s2, s3 )
	SV* c_func
	double d0
	double d1
	short s2
	short s3
PREINIT:
	double (*func)( double, double, short, short );
CODE:
	func   = INT2PTR(double(*)( double, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dddsf( c_func, d0, d1, s2, f3 )
	SV* c_func
	double d0
	double d1
	short s2
	float f3
PREINIT:
	double (*func)( double, double, short, float );
CODE:
	func   = INT2PTR(double(*)( double, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dddst( c_func, d0, d1, s2, t3 )
	SV* c_func
	double d0
	double d1
	short s2
	char * t3
PREINIT:
	double (*func)( double, double, short, char * );
CODE:
	func   = INT2PTR(double(*)( double, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dddsi( c_func, d0, d1, s2, i3 )
	SV* c_func
	double d0
	double d1
	short s2
	int i3
PREINIT:
	double (*func)( double, double, short, int );
CODE:
	func   = INT2PTR(double(*)( double, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dddfd( c_func, d0, d1, f2, d3 )
	SV* c_func
	double d0
	double d1
	float f2
	double d3
PREINIT:
	double (*func)( double, double, float, double );
CODE:
	func   = INT2PTR(double(*)( double, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dddfs( c_func, d0, d1, f2, s3 )
	SV* c_func
	double d0
	double d1
	float f2
	short s3
PREINIT:
	double (*func)( double, double, float, short );
CODE:
	func   = INT2PTR(double(*)( double, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dddff( c_func, d0, d1, f2, f3 )
	SV* c_func
	double d0
	double d1
	float f2
	float f3
PREINIT:
	double (*func)( double, double, float, float );
CODE:
	func   = INT2PTR(double(*)( double, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dddft( c_func, d0, d1, f2, t3 )
	SV* c_func
	double d0
	double d1
	float f2
	char * t3
PREINIT:
	double (*func)( double, double, float, char * );
CODE:
	func   = INT2PTR(double(*)( double, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dddfi( c_func, d0, d1, f2, i3 )
	SV* c_func
	double d0
	double d1
	float f2
	int i3
PREINIT:
	double (*func)( double, double, float, int );
CODE:
	func   = INT2PTR(double(*)( double, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dddtd( c_func, d0, d1, t2, d3 )
	SV* c_func
	double d0
	double d1
	char * t2
	double d3
PREINIT:
	double (*func)( double, double, char *, double );
CODE:
	func   = INT2PTR(double(*)( double, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dddts( c_func, d0, d1, t2, s3 )
	SV* c_func
	double d0
	double d1
	char * t2
	short s3
PREINIT:
	double (*func)( double, double, char *, short );
CODE:
	func   = INT2PTR(double(*)( double, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dddtf( c_func, d0, d1, t2, f3 )
	SV* c_func
	double d0
	double d1
	char * t2
	float f3
PREINIT:
	double (*func)( double, double, char *, float );
CODE:
	func   = INT2PTR(double(*)( double, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dddtt( c_func, d0, d1, t2, t3 )
	SV* c_func
	double d0
	double d1
	char * t2
	char * t3
PREINIT:
	double (*func)( double, double, char *, char * );
CODE:
	func   = INT2PTR(double(*)( double, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dddti( c_func, d0, d1, t2, i3 )
	SV* c_func
	double d0
	double d1
	char * t2
	int i3
PREINIT:
	double (*func)( double, double, char *, int );
CODE:
	func   = INT2PTR(double(*)( double, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dddid( c_func, d0, d1, i2, d3 )
	SV* c_func
	double d0
	double d1
	int i2
	double d3
PREINIT:
	double (*func)( double, double, int, double );
CODE:
	func   = INT2PTR(double(*)( double, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dddis( c_func, d0, d1, i2, s3 )
	SV* c_func
	double d0
	double d1
	int i2
	short s3
PREINIT:
	double (*func)( double, double, int, short );
CODE:
	func   = INT2PTR(double(*)( double, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dddif( c_func, d0, d1, i2, f3 )
	SV* c_func
	double d0
	double d1
	int i2
	float f3
PREINIT:
	double (*func)( double, double, int, float );
CODE:
	func   = INT2PTR(double(*)( double, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dddit( c_func, d0, d1, i2, t3 )
	SV* c_func
	double d0
	double d1
	int i2
	char * t3
PREINIT:
	double (*func)( double, double, int, char * );
CODE:
	func   = INT2PTR(double(*)( double, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dddii( c_func, d0, d1, i2, i3 )
	SV* c_func
	double d0
	double d1
	int i2
	int i3
PREINIT:
	double (*func)( double, double, int, int );
CODE:
	func   = INT2PTR(double(*)( double, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_ddsdd( c_func, d0, s1, d2, d3 )
	SV* c_func
	double d0
	short s1
	double d2
	double d3
PREINIT:
	double (*func)( double, short, double, double );
CODE:
	func   = INT2PTR(double(*)( double, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_ddsds( c_func, d0, s1, d2, s3 )
	SV* c_func
	double d0
	short s1
	double d2
	short s3
PREINIT:
	double (*func)( double, short, double, short );
CODE:
	func   = INT2PTR(double(*)( double, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_ddsdf( c_func, d0, s1, d2, f3 )
	SV* c_func
	double d0
	short s1
	double d2
	float f3
PREINIT:
	double (*func)( double, short, double, float );
CODE:
	func   = INT2PTR(double(*)( double, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_ddsdt( c_func, d0, s1, d2, t3 )
	SV* c_func
	double d0
	short s1
	double d2
	char * t3
PREINIT:
	double (*func)( double, short, double, char * );
CODE:
	func   = INT2PTR(double(*)( double, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_ddsdi( c_func, d0, s1, d2, i3 )
	SV* c_func
	double d0
	short s1
	double d2
	int i3
PREINIT:
	double (*func)( double, short, double, int );
CODE:
	func   = INT2PTR(double(*)( double, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_ddssd( c_func, d0, s1, s2, d3 )
	SV* c_func
	double d0
	short s1
	short s2
	double d3
PREINIT:
	double (*func)( double, short, short, double );
CODE:
	func   = INT2PTR(double(*)( double, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_ddsss( c_func, d0, s1, s2, s3 )
	SV* c_func
	double d0
	short s1
	short s2
	short s3
PREINIT:
	double (*func)( double, short, short, short );
CODE:
	func   = INT2PTR(double(*)( double, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_ddssf( c_func, d0, s1, s2, f3 )
	SV* c_func
	double d0
	short s1
	short s2
	float f3
PREINIT:
	double (*func)( double, short, short, float );
CODE:
	func   = INT2PTR(double(*)( double, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_ddsst( c_func, d0, s1, s2, t3 )
	SV* c_func
	double d0
	short s1
	short s2
	char * t3
PREINIT:
	double (*func)( double, short, short, char * );
CODE:
	func   = INT2PTR(double(*)( double, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_ddssi( c_func, d0, s1, s2, i3 )
	SV* c_func
	double d0
	short s1
	short s2
	int i3
PREINIT:
	double (*func)( double, short, short, int );
CODE:
	func   = INT2PTR(double(*)( double, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_ddsfd( c_func, d0, s1, f2, d3 )
	SV* c_func
	double d0
	short s1
	float f2
	double d3
PREINIT:
	double (*func)( double, short, float, double );
CODE:
	func   = INT2PTR(double(*)( double, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_ddsfs( c_func, d0, s1, f2, s3 )
	SV* c_func
	double d0
	short s1
	float f2
	short s3
PREINIT:
	double (*func)( double, short, float, short );
CODE:
	func   = INT2PTR(double(*)( double, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_ddsff( c_func, d0, s1, f2, f3 )
	SV* c_func
	double d0
	short s1
	float f2
	float f3
PREINIT:
	double (*func)( double, short, float, float );
CODE:
	func   = INT2PTR(double(*)( double, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_ddsft( c_func, d0, s1, f2, t3 )
	SV* c_func
	double d0
	short s1
	float f2
	char * t3
PREINIT:
	double (*func)( double, short, float, char * );
CODE:
	func   = INT2PTR(double(*)( double, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_ddsfi( c_func, d0, s1, f2, i3 )
	SV* c_func
	double d0
	short s1
	float f2
	int i3
PREINIT:
	double (*func)( double, short, float, int );
CODE:
	func   = INT2PTR(double(*)( double, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_ddstd( c_func, d0, s1, t2, d3 )
	SV* c_func
	double d0
	short s1
	char * t2
	double d3
PREINIT:
	double (*func)( double, short, char *, double );
CODE:
	func   = INT2PTR(double(*)( double, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_ddsts( c_func, d0, s1, t2, s3 )
	SV* c_func
	double d0
	short s1
	char * t2
	short s3
PREINIT:
	double (*func)( double, short, char *, short );
CODE:
	func   = INT2PTR(double(*)( double, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_ddstf( c_func, d0, s1, t2, f3 )
	SV* c_func
	double d0
	short s1
	char * t2
	float f3
PREINIT:
	double (*func)( double, short, char *, float );
CODE:
	func   = INT2PTR(double(*)( double, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_ddstt( c_func, d0, s1, t2, t3 )
	SV* c_func
	double d0
	short s1
	char * t2
	char * t3
PREINIT:
	double (*func)( double, short, char *, char * );
CODE:
	func   = INT2PTR(double(*)( double, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_ddsti( c_func, d0, s1, t2, i3 )
	SV* c_func
	double d0
	short s1
	char * t2
	int i3
PREINIT:
	double (*func)( double, short, char *, int );
CODE:
	func   = INT2PTR(double(*)( double, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_ddsid( c_func, d0, s1, i2, d3 )
	SV* c_func
	double d0
	short s1
	int i2
	double d3
PREINIT:
	double (*func)( double, short, int, double );
CODE:
	func   = INT2PTR(double(*)( double, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_ddsis( c_func, d0, s1, i2, s3 )
	SV* c_func
	double d0
	short s1
	int i2
	short s3
PREINIT:
	double (*func)( double, short, int, short );
CODE:
	func   = INT2PTR(double(*)( double, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_ddsif( c_func, d0, s1, i2, f3 )
	SV* c_func
	double d0
	short s1
	int i2
	float f3
PREINIT:
	double (*func)( double, short, int, float );
CODE:
	func   = INT2PTR(double(*)( double, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_ddsit( c_func, d0, s1, i2, t3 )
	SV* c_func
	double d0
	short s1
	int i2
	char * t3
PREINIT:
	double (*func)( double, short, int, char * );
CODE:
	func   = INT2PTR(double(*)( double, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_ddsii( c_func, d0, s1, i2, i3 )
	SV* c_func
	double d0
	short s1
	int i2
	int i3
PREINIT:
	double (*func)( double, short, int, int );
CODE:
	func   = INT2PTR(double(*)( double, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_ddfdd( c_func, d0, f1, d2, d3 )
	SV* c_func
	double d0
	float f1
	double d2
	double d3
PREINIT:
	double (*func)( double, float, double, double );
CODE:
	func   = INT2PTR(double(*)( double, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_ddfds( c_func, d0, f1, d2, s3 )
	SV* c_func
	double d0
	float f1
	double d2
	short s3
PREINIT:
	double (*func)( double, float, double, short );
CODE:
	func   = INT2PTR(double(*)( double, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_ddfdf( c_func, d0, f1, d2, f3 )
	SV* c_func
	double d0
	float f1
	double d2
	float f3
PREINIT:
	double (*func)( double, float, double, float );
CODE:
	func   = INT2PTR(double(*)( double, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_ddfdt( c_func, d0, f1, d2, t3 )
	SV* c_func
	double d0
	float f1
	double d2
	char * t3
PREINIT:
	double (*func)( double, float, double, char * );
CODE:
	func   = INT2PTR(double(*)( double, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_ddfdi( c_func, d0, f1, d2, i3 )
	SV* c_func
	double d0
	float f1
	double d2
	int i3
PREINIT:
	double (*func)( double, float, double, int );
CODE:
	func   = INT2PTR(double(*)( double, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_ddfsd( c_func, d0, f1, s2, d3 )
	SV* c_func
	double d0
	float f1
	short s2
	double d3
PREINIT:
	double (*func)( double, float, short, double );
CODE:
	func   = INT2PTR(double(*)( double, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_ddfss( c_func, d0, f1, s2, s3 )
	SV* c_func
	double d0
	float f1
	short s2
	short s3
PREINIT:
	double (*func)( double, float, short, short );
CODE:
	func   = INT2PTR(double(*)( double, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_ddfsf( c_func, d0, f1, s2, f3 )
	SV* c_func
	double d0
	float f1
	short s2
	float f3
PREINIT:
	double (*func)( double, float, short, float );
CODE:
	func   = INT2PTR(double(*)( double, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_ddfst( c_func, d0, f1, s2, t3 )
	SV* c_func
	double d0
	float f1
	short s2
	char * t3
PREINIT:
	double (*func)( double, float, short, char * );
CODE:
	func   = INT2PTR(double(*)( double, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_ddfsi( c_func, d0, f1, s2, i3 )
	SV* c_func
	double d0
	float f1
	short s2
	int i3
PREINIT:
	double (*func)( double, float, short, int );
CODE:
	func   = INT2PTR(double(*)( double, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_ddffd( c_func, d0, f1, f2, d3 )
	SV* c_func
	double d0
	float f1
	float f2
	double d3
PREINIT:
	double (*func)( double, float, float, double );
CODE:
	func   = INT2PTR(double(*)( double, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_ddffs( c_func, d0, f1, f2, s3 )
	SV* c_func
	double d0
	float f1
	float f2
	short s3
PREINIT:
	double (*func)( double, float, float, short );
CODE:
	func   = INT2PTR(double(*)( double, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_ddfff( c_func, d0, f1, f2, f3 )
	SV* c_func
	double d0
	float f1
	float f2
	float f3
PREINIT:
	double (*func)( double, float, float, float );
CODE:
	func   = INT2PTR(double(*)( double, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_ddfft( c_func, d0, f1, f2, t3 )
	SV* c_func
	double d0
	float f1
	float f2
	char * t3
PREINIT:
	double (*func)( double, float, float, char * );
CODE:
	func   = INT2PTR(double(*)( double, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_ddffi( c_func, d0, f1, f2, i3 )
	SV* c_func
	double d0
	float f1
	float f2
	int i3
PREINIT:
	double (*func)( double, float, float, int );
CODE:
	func   = INT2PTR(double(*)( double, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_ddftd( c_func, d0, f1, t2, d3 )
	SV* c_func
	double d0
	float f1
	char * t2
	double d3
PREINIT:
	double (*func)( double, float, char *, double );
CODE:
	func   = INT2PTR(double(*)( double, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_ddfts( c_func, d0, f1, t2, s3 )
	SV* c_func
	double d0
	float f1
	char * t2
	short s3
PREINIT:
	double (*func)( double, float, char *, short );
CODE:
	func   = INT2PTR(double(*)( double, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_ddftf( c_func, d0, f1, t2, f3 )
	SV* c_func
	double d0
	float f1
	char * t2
	float f3
PREINIT:
	double (*func)( double, float, char *, float );
CODE:
	func   = INT2PTR(double(*)( double, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_ddftt( c_func, d0, f1, t2, t3 )
	SV* c_func
	double d0
	float f1
	char * t2
	char * t3
PREINIT:
	double (*func)( double, float, char *, char * );
CODE:
	func   = INT2PTR(double(*)( double, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_ddfti( c_func, d0, f1, t2, i3 )
	SV* c_func
	double d0
	float f1
	char * t2
	int i3
PREINIT:
	double (*func)( double, float, char *, int );
CODE:
	func   = INT2PTR(double(*)( double, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_ddfid( c_func, d0, f1, i2, d3 )
	SV* c_func
	double d0
	float f1
	int i2
	double d3
PREINIT:
	double (*func)( double, float, int, double );
CODE:
	func   = INT2PTR(double(*)( double, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_ddfis( c_func, d0, f1, i2, s3 )
	SV* c_func
	double d0
	float f1
	int i2
	short s3
PREINIT:
	double (*func)( double, float, int, short );
CODE:
	func   = INT2PTR(double(*)( double, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_ddfif( c_func, d0, f1, i2, f3 )
	SV* c_func
	double d0
	float f1
	int i2
	float f3
PREINIT:
	double (*func)( double, float, int, float );
CODE:
	func   = INT2PTR(double(*)( double, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_ddfit( c_func, d0, f1, i2, t3 )
	SV* c_func
	double d0
	float f1
	int i2
	char * t3
PREINIT:
	double (*func)( double, float, int, char * );
CODE:
	func   = INT2PTR(double(*)( double, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_ddfii( c_func, d0, f1, i2, i3 )
	SV* c_func
	double d0
	float f1
	int i2
	int i3
PREINIT:
	double (*func)( double, float, int, int );
CODE:
	func   = INT2PTR(double(*)( double, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_ddtdd( c_func, d0, t1, d2, d3 )
	SV* c_func
	double d0
	char * t1
	double d2
	double d3
PREINIT:
	double (*func)( double, char *, double, double );
CODE:
	func   = INT2PTR(double(*)( double, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_ddtds( c_func, d0, t1, d2, s3 )
	SV* c_func
	double d0
	char * t1
	double d2
	short s3
PREINIT:
	double (*func)( double, char *, double, short );
CODE:
	func   = INT2PTR(double(*)( double, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_ddtdf( c_func, d0, t1, d2, f3 )
	SV* c_func
	double d0
	char * t1
	double d2
	float f3
PREINIT:
	double (*func)( double, char *, double, float );
CODE:
	func   = INT2PTR(double(*)( double, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_ddtdt( c_func, d0, t1, d2, t3 )
	SV* c_func
	double d0
	char * t1
	double d2
	char * t3
PREINIT:
	double (*func)( double, char *, double, char * );
CODE:
	func   = INT2PTR(double(*)( double, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_ddtdi( c_func, d0, t1, d2, i3 )
	SV* c_func
	double d0
	char * t1
	double d2
	int i3
PREINIT:
	double (*func)( double, char *, double, int );
CODE:
	func   = INT2PTR(double(*)( double, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_ddtsd( c_func, d0, t1, s2, d3 )
	SV* c_func
	double d0
	char * t1
	short s2
	double d3
PREINIT:
	double (*func)( double, char *, short, double );
CODE:
	func   = INT2PTR(double(*)( double, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_ddtss( c_func, d0, t1, s2, s3 )
	SV* c_func
	double d0
	char * t1
	short s2
	short s3
PREINIT:
	double (*func)( double, char *, short, short );
CODE:
	func   = INT2PTR(double(*)( double, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_ddtsf( c_func, d0, t1, s2, f3 )
	SV* c_func
	double d0
	char * t1
	short s2
	float f3
PREINIT:
	double (*func)( double, char *, short, float );
CODE:
	func   = INT2PTR(double(*)( double, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_ddtst( c_func, d0, t1, s2, t3 )
	SV* c_func
	double d0
	char * t1
	short s2
	char * t3
PREINIT:
	double (*func)( double, char *, short, char * );
CODE:
	func   = INT2PTR(double(*)( double, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_ddtsi( c_func, d0, t1, s2, i3 )
	SV* c_func
	double d0
	char * t1
	short s2
	int i3
PREINIT:
	double (*func)( double, char *, short, int );
CODE:
	func   = INT2PTR(double(*)( double, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_ddtfd( c_func, d0, t1, f2, d3 )
	SV* c_func
	double d0
	char * t1
	float f2
	double d3
PREINIT:
	double (*func)( double, char *, float, double );
CODE:
	func   = INT2PTR(double(*)( double, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_ddtfs( c_func, d0, t1, f2, s3 )
	SV* c_func
	double d0
	char * t1
	float f2
	short s3
PREINIT:
	double (*func)( double, char *, float, short );
CODE:
	func   = INT2PTR(double(*)( double, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_ddtff( c_func, d0, t1, f2, f3 )
	SV* c_func
	double d0
	char * t1
	float f2
	float f3
PREINIT:
	double (*func)( double, char *, float, float );
CODE:
	func   = INT2PTR(double(*)( double, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_ddtft( c_func, d0, t1, f2, t3 )
	SV* c_func
	double d0
	char * t1
	float f2
	char * t3
PREINIT:
	double (*func)( double, char *, float, char * );
CODE:
	func   = INT2PTR(double(*)( double, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_ddtfi( c_func, d0, t1, f2, i3 )
	SV* c_func
	double d0
	char * t1
	float f2
	int i3
PREINIT:
	double (*func)( double, char *, float, int );
CODE:
	func   = INT2PTR(double(*)( double, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_ddttd( c_func, d0, t1, t2, d3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	double d3
PREINIT:
	double (*func)( double, char *, char *, double );
CODE:
	func   = INT2PTR(double(*)( double, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_ddtts( c_func, d0, t1, t2, s3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	short s3
PREINIT:
	double (*func)( double, char *, char *, short );
CODE:
	func   = INT2PTR(double(*)( double, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_ddttf( c_func, d0, t1, t2, f3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	float f3
PREINIT:
	double (*func)( double, char *, char *, float );
CODE:
	func   = INT2PTR(double(*)( double, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_ddttt( c_func, d0, t1, t2, t3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	char * t3
PREINIT:
	double (*func)( double, char *, char *, char * );
CODE:
	func   = INT2PTR(double(*)( double, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_ddtti( c_func, d0, t1, t2, i3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	int i3
PREINIT:
	double (*func)( double, char *, char *, int );
CODE:
	func   = INT2PTR(double(*)( double, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_ddtid( c_func, d0, t1, i2, d3 )
	SV* c_func
	double d0
	char * t1
	int i2
	double d3
PREINIT:
	double (*func)( double, char *, int, double );
CODE:
	func   = INT2PTR(double(*)( double, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_ddtis( c_func, d0, t1, i2, s3 )
	SV* c_func
	double d0
	char * t1
	int i2
	short s3
PREINIT:
	double (*func)( double, char *, int, short );
CODE:
	func   = INT2PTR(double(*)( double, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_ddtif( c_func, d0, t1, i2, f3 )
	SV* c_func
	double d0
	char * t1
	int i2
	float f3
PREINIT:
	double (*func)( double, char *, int, float );
CODE:
	func   = INT2PTR(double(*)( double, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_ddtit( c_func, d0, t1, i2, t3 )
	SV* c_func
	double d0
	char * t1
	int i2
	char * t3
PREINIT:
	double (*func)( double, char *, int, char * );
CODE:
	func   = INT2PTR(double(*)( double, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_ddtii( c_func, d0, t1, i2, i3 )
	SV* c_func
	double d0
	char * t1
	int i2
	int i3
PREINIT:
	double (*func)( double, char *, int, int );
CODE:
	func   = INT2PTR(double(*)( double, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_ddidd( c_func, d0, i1, d2, d3 )
	SV* c_func
	double d0
	int i1
	double d2
	double d3
PREINIT:
	double (*func)( double, int, double, double );
CODE:
	func   = INT2PTR(double(*)( double, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_ddids( c_func, d0, i1, d2, s3 )
	SV* c_func
	double d0
	int i1
	double d2
	short s3
PREINIT:
	double (*func)( double, int, double, short );
CODE:
	func   = INT2PTR(double(*)( double, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_ddidf( c_func, d0, i1, d2, f3 )
	SV* c_func
	double d0
	int i1
	double d2
	float f3
PREINIT:
	double (*func)( double, int, double, float );
CODE:
	func   = INT2PTR(double(*)( double, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_ddidt( c_func, d0, i1, d2, t3 )
	SV* c_func
	double d0
	int i1
	double d2
	char * t3
PREINIT:
	double (*func)( double, int, double, char * );
CODE:
	func   = INT2PTR(double(*)( double, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_ddidi( c_func, d0, i1, d2, i3 )
	SV* c_func
	double d0
	int i1
	double d2
	int i3
PREINIT:
	double (*func)( double, int, double, int );
CODE:
	func   = INT2PTR(double(*)( double, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_ddisd( c_func, d0, i1, s2, d3 )
	SV* c_func
	double d0
	int i1
	short s2
	double d3
PREINIT:
	double (*func)( double, int, short, double );
CODE:
	func   = INT2PTR(double(*)( double, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_ddiss( c_func, d0, i1, s2, s3 )
	SV* c_func
	double d0
	int i1
	short s2
	short s3
PREINIT:
	double (*func)( double, int, short, short );
CODE:
	func   = INT2PTR(double(*)( double, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_ddisf( c_func, d0, i1, s2, f3 )
	SV* c_func
	double d0
	int i1
	short s2
	float f3
PREINIT:
	double (*func)( double, int, short, float );
CODE:
	func   = INT2PTR(double(*)( double, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_ddist( c_func, d0, i1, s2, t3 )
	SV* c_func
	double d0
	int i1
	short s2
	char * t3
PREINIT:
	double (*func)( double, int, short, char * );
CODE:
	func   = INT2PTR(double(*)( double, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_ddisi( c_func, d0, i1, s2, i3 )
	SV* c_func
	double d0
	int i1
	short s2
	int i3
PREINIT:
	double (*func)( double, int, short, int );
CODE:
	func   = INT2PTR(double(*)( double, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_ddifd( c_func, d0, i1, f2, d3 )
	SV* c_func
	double d0
	int i1
	float f2
	double d3
PREINIT:
	double (*func)( double, int, float, double );
CODE:
	func   = INT2PTR(double(*)( double, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_ddifs( c_func, d0, i1, f2, s3 )
	SV* c_func
	double d0
	int i1
	float f2
	short s3
PREINIT:
	double (*func)( double, int, float, short );
CODE:
	func   = INT2PTR(double(*)( double, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_ddiff( c_func, d0, i1, f2, f3 )
	SV* c_func
	double d0
	int i1
	float f2
	float f3
PREINIT:
	double (*func)( double, int, float, float );
CODE:
	func   = INT2PTR(double(*)( double, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_ddift( c_func, d0, i1, f2, t3 )
	SV* c_func
	double d0
	int i1
	float f2
	char * t3
PREINIT:
	double (*func)( double, int, float, char * );
CODE:
	func   = INT2PTR(double(*)( double, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_ddifi( c_func, d0, i1, f2, i3 )
	SV* c_func
	double d0
	int i1
	float f2
	int i3
PREINIT:
	double (*func)( double, int, float, int );
CODE:
	func   = INT2PTR(double(*)( double, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dditd( c_func, d0, i1, t2, d3 )
	SV* c_func
	double d0
	int i1
	char * t2
	double d3
PREINIT:
	double (*func)( double, int, char *, double );
CODE:
	func   = INT2PTR(double(*)( double, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_ddits( c_func, d0, i1, t2, s3 )
	SV* c_func
	double d0
	int i1
	char * t2
	short s3
PREINIT:
	double (*func)( double, int, char *, short );
CODE:
	func   = INT2PTR(double(*)( double, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dditf( c_func, d0, i1, t2, f3 )
	SV* c_func
	double d0
	int i1
	char * t2
	float f3
PREINIT:
	double (*func)( double, int, char *, float );
CODE:
	func   = INT2PTR(double(*)( double, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dditt( c_func, d0, i1, t2, t3 )
	SV* c_func
	double d0
	int i1
	char * t2
	char * t3
PREINIT:
	double (*func)( double, int, char *, char * );
CODE:
	func   = INT2PTR(double(*)( double, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dditi( c_func, d0, i1, t2, i3 )
	SV* c_func
	double d0
	int i1
	char * t2
	int i3
PREINIT:
	double (*func)( double, int, char *, int );
CODE:
	func   = INT2PTR(double(*)( double, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_ddiid( c_func, d0, i1, i2, d3 )
	SV* c_func
	double d0
	int i1
	int i2
	double d3
PREINIT:
	double (*func)( double, int, int, double );
CODE:
	func   = INT2PTR(double(*)( double, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_ddiis( c_func, d0, i1, i2, s3 )
	SV* c_func
	double d0
	int i1
	int i2
	short s3
PREINIT:
	double (*func)( double, int, int, short );
CODE:
	func   = INT2PTR(double(*)( double, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_ddiif( c_func, d0, i1, i2, f3 )
	SV* c_func
	double d0
	int i1
	int i2
	float f3
PREINIT:
	double (*func)( double, int, int, float );
CODE:
	func   = INT2PTR(double(*)( double, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_ddiit( c_func, d0, i1, i2, t3 )
	SV* c_func
	double d0
	int i1
	int i2
	char * t3
PREINIT:
	double (*func)( double, int, int, char * );
CODE:
	func   = INT2PTR(double(*)( double, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_ddiii( c_func, d0, i1, i2, i3 )
	SV* c_func
	double d0
	int i1
	int i2
	int i3
PREINIT:
	double (*func)( double, int, int, int );
CODE:
	func   = INT2PTR(double(*)( double, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dsddd( c_func, s0, d1, d2, d3 )
	SV* c_func
	short s0
	double d1
	double d2
	double d3
PREINIT:
	double (*func)( short, double, double, double );
CODE:
	func   = INT2PTR(double(*)( short, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dsdds( c_func, s0, d1, d2, s3 )
	SV* c_func
	short s0
	double d1
	double d2
	short s3
PREINIT:
	double (*func)( short, double, double, short );
CODE:
	func   = INT2PTR(double(*)( short, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dsddf( c_func, s0, d1, d2, f3 )
	SV* c_func
	short s0
	double d1
	double d2
	float f3
PREINIT:
	double (*func)( short, double, double, float );
CODE:
	func   = INT2PTR(double(*)( short, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dsddt( c_func, s0, d1, d2, t3 )
	SV* c_func
	short s0
	double d1
	double d2
	char * t3
PREINIT:
	double (*func)( short, double, double, char * );
CODE:
	func   = INT2PTR(double(*)( short, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dsddi( c_func, s0, d1, d2, i3 )
	SV* c_func
	short s0
	double d1
	double d2
	int i3
PREINIT:
	double (*func)( short, double, double, int );
CODE:
	func   = INT2PTR(double(*)( short, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dsdsd( c_func, s0, d1, s2, d3 )
	SV* c_func
	short s0
	double d1
	short s2
	double d3
PREINIT:
	double (*func)( short, double, short, double );
CODE:
	func   = INT2PTR(double(*)( short, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dsdss( c_func, s0, d1, s2, s3 )
	SV* c_func
	short s0
	double d1
	short s2
	short s3
PREINIT:
	double (*func)( short, double, short, short );
CODE:
	func   = INT2PTR(double(*)( short, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dsdsf( c_func, s0, d1, s2, f3 )
	SV* c_func
	short s0
	double d1
	short s2
	float f3
PREINIT:
	double (*func)( short, double, short, float );
CODE:
	func   = INT2PTR(double(*)( short, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dsdst( c_func, s0, d1, s2, t3 )
	SV* c_func
	short s0
	double d1
	short s2
	char * t3
PREINIT:
	double (*func)( short, double, short, char * );
CODE:
	func   = INT2PTR(double(*)( short, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dsdsi( c_func, s0, d1, s2, i3 )
	SV* c_func
	short s0
	double d1
	short s2
	int i3
PREINIT:
	double (*func)( short, double, short, int );
CODE:
	func   = INT2PTR(double(*)( short, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dsdfd( c_func, s0, d1, f2, d3 )
	SV* c_func
	short s0
	double d1
	float f2
	double d3
PREINIT:
	double (*func)( short, double, float, double );
CODE:
	func   = INT2PTR(double(*)( short, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dsdfs( c_func, s0, d1, f2, s3 )
	SV* c_func
	short s0
	double d1
	float f2
	short s3
PREINIT:
	double (*func)( short, double, float, short );
CODE:
	func   = INT2PTR(double(*)( short, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dsdff( c_func, s0, d1, f2, f3 )
	SV* c_func
	short s0
	double d1
	float f2
	float f3
PREINIT:
	double (*func)( short, double, float, float );
CODE:
	func   = INT2PTR(double(*)( short, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dsdft( c_func, s0, d1, f2, t3 )
	SV* c_func
	short s0
	double d1
	float f2
	char * t3
PREINIT:
	double (*func)( short, double, float, char * );
CODE:
	func   = INT2PTR(double(*)( short, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dsdfi( c_func, s0, d1, f2, i3 )
	SV* c_func
	short s0
	double d1
	float f2
	int i3
PREINIT:
	double (*func)( short, double, float, int );
CODE:
	func   = INT2PTR(double(*)( short, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dsdtd( c_func, s0, d1, t2, d3 )
	SV* c_func
	short s0
	double d1
	char * t2
	double d3
PREINIT:
	double (*func)( short, double, char *, double );
CODE:
	func   = INT2PTR(double(*)( short, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dsdts( c_func, s0, d1, t2, s3 )
	SV* c_func
	short s0
	double d1
	char * t2
	short s3
PREINIT:
	double (*func)( short, double, char *, short );
CODE:
	func   = INT2PTR(double(*)( short, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dsdtf( c_func, s0, d1, t2, f3 )
	SV* c_func
	short s0
	double d1
	char * t2
	float f3
PREINIT:
	double (*func)( short, double, char *, float );
CODE:
	func   = INT2PTR(double(*)( short, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dsdtt( c_func, s0, d1, t2, t3 )
	SV* c_func
	short s0
	double d1
	char * t2
	char * t3
PREINIT:
	double (*func)( short, double, char *, char * );
CODE:
	func   = INT2PTR(double(*)( short, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dsdti( c_func, s0, d1, t2, i3 )
	SV* c_func
	short s0
	double d1
	char * t2
	int i3
PREINIT:
	double (*func)( short, double, char *, int );
CODE:
	func   = INT2PTR(double(*)( short, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dsdid( c_func, s0, d1, i2, d3 )
	SV* c_func
	short s0
	double d1
	int i2
	double d3
PREINIT:
	double (*func)( short, double, int, double );
CODE:
	func   = INT2PTR(double(*)( short, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dsdis( c_func, s0, d1, i2, s3 )
	SV* c_func
	short s0
	double d1
	int i2
	short s3
PREINIT:
	double (*func)( short, double, int, short );
CODE:
	func   = INT2PTR(double(*)( short, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dsdif( c_func, s0, d1, i2, f3 )
	SV* c_func
	short s0
	double d1
	int i2
	float f3
PREINIT:
	double (*func)( short, double, int, float );
CODE:
	func   = INT2PTR(double(*)( short, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dsdit( c_func, s0, d1, i2, t3 )
	SV* c_func
	short s0
	double d1
	int i2
	char * t3
PREINIT:
	double (*func)( short, double, int, char * );
CODE:
	func   = INT2PTR(double(*)( short, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dsdii( c_func, s0, d1, i2, i3 )
	SV* c_func
	short s0
	double d1
	int i2
	int i3
PREINIT:
	double (*func)( short, double, int, int );
CODE:
	func   = INT2PTR(double(*)( short, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dssdd( c_func, s0, s1, d2, d3 )
	SV* c_func
	short s0
	short s1
	double d2
	double d3
PREINIT:
	double (*func)( short, short, double, double );
CODE:
	func   = INT2PTR(double(*)( short, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dssds( c_func, s0, s1, d2, s3 )
	SV* c_func
	short s0
	short s1
	double d2
	short s3
PREINIT:
	double (*func)( short, short, double, short );
CODE:
	func   = INT2PTR(double(*)( short, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dssdf( c_func, s0, s1, d2, f3 )
	SV* c_func
	short s0
	short s1
	double d2
	float f3
PREINIT:
	double (*func)( short, short, double, float );
CODE:
	func   = INT2PTR(double(*)( short, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dssdt( c_func, s0, s1, d2, t3 )
	SV* c_func
	short s0
	short s1
	double d2
	char * t3
PREINIT:
	double (*func)( short, short, double, char * );
CODE:
	func   = INT2PTR(double(*)( short, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dssdi( c_func, s0, s1, d2, i3 )
	SV* c_func
	short s0
	short s1
	double d2
	int i3
PREINIT:
	double (*func)( short, short, double, int );
CODE:
	func   = INT2PTR(double(*)( short, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dsssd( c_func, s0, s1, s2, d3 )
	SV* c_func
	short s0
	short s1
	short s2
	double d3
PREINIT:
	double (*func)( short, short, short, double );
CODE:
	func   = INT2PTR(double(*)( short, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dssss( c_func, s0, s1, s2, s3 )
	SV* c_func
	short s0
	short s1
	short s2
	short s3
PREINIT:
	double (*func)( short, short, short, short );
CODE:
	func   = INT2PTR(double(*)( short, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dsssf( c_func, s0, s1, s2, f3 )
	SV* c_func
	short s0
	short s1
	short s2
	float f3
PREINIT:
	double (*func)( short, short, short, float );
CODE:
	func   = INT2PTR(double(*)( short, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dssst( c_func, s0, s1, s2, t3 )
	SV* c_func
	short s0
	short s1
	short s2
	char * t3
PREINIT:
	double (*func)( short, short, short, char * );
CODE:
	func   = INT2PTR(double(*)( short, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dsssi( c_func, s0, s1, s2, i3 )
	SV* c_func
	short s0
	short s1
	short s2
	int i3
PREINIT:
	double (*func)( short, short, short, int );
CODE:
	func   = INT2PTR(double(*)( short, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dssfd( c_func, s0, s1, f2, d3 )
	SV* c_func
	short s0
	short s1
	float f2
	double d3
PREINIT:
	double (*func)( short, short, float, double );
CODE:
	func   = INT2PTR(double(*)( short, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dssfs( c_func, s0, s1, f2, s3 )
	SV* c_func
	short s0
	short s1
	float f2
	short s3
PREINIT:
	double (*func)( short, short, float, short );
CODE:
	func   = INT2PTR(double(*)( short, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dssff( c_func, s0, s1, f2, f3 )
	SV* c_func
	short s0
	short s1
	float f2
	float f3
PREINIT:
	double (*func)( short, short, float, float );
CODE:
	func   = INT2PTR(double(*)( short, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dssft( c_func, s0, s1, f2, t3 )
	SV* c_func
	short s0
	short s1
	float f2
	char * t3
PREINIT:
	double (*func)( short, short, float, char * );
CODE:
	func   = INT2PTR(double(*)( short, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dssfi( c_func, s0, s1, f2, i3 )
	SV* c_func
	short s0
	short s1
	float f2
	int i3
PREINIT:
	double (*func)( short, short, float, int );
CODE:
	func   = INT2PTR(double(*)( short, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dsstd( c_func, s0, s1, t2, d3 )
	SV* c_func
	short s0
	short s1
	char * t2
	double d3
PREINIT:
	double (*func)( short, short, char *, double );
CODE:
	func   = INT2PTR(double(*)( short, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dssts( c_func, s0, s1, t2, s3 )
	SV* c_func
	short s0
	short s1
	char * t2
	short s3
PREINIT:
	double (*func)( short, short, char *, short );
CODE:
	func   = INT2PTR(double(*)( short, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dsstf( c_func, s0, s1, t2, f3 )
	SV* c_func
	short s0
	short s1
	char * t2
	float f3
PREINIT:
	double (*func)( short, short, char *, float );
CODE:
	func   = INT2PTR(double(*)( short, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dsstt( c_func, s0, s1, t2, t3 )
	SV* c_func
	short s0
	short s1
	char * t2
	char * t3
PREINIT:
	double (*func)( short, short, char *, char * );
CODE:
	func   = INT2PTR(double(*)( short, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dssti( c_func, s0, s1, t2, i3 )
	SV* c_func
	short s0
	short s1
	char * t2
	int i3
PREINIT:
	double (*func)( short, short, char *, int );
CODE:
	func   = INT2PTR(double(*)( short, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dssid( c_func, s0, s1, i2, d3 )
	SV* c_func
	short s0
	short s1
	int i2
	double d3
PREINIT:
	double (*func)( short, short, int, double );
CODE:
	func   = INT2PTR(double(*)( short, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dssis( c_func, s0, s1, i2, s3 )
	SV* c_func
	short s0
	short s1
	int i2
	short s3
PREINIT:
	double (*func)( short, short, int, short );
CODE:
	func   = INT2PTR(double(*)( short, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dssif( c_func, s0, s1, i2, f3 )
	SV* c_func
	short s0
	short s1
	int i2
	float f3
PREINIT:
	double (*func)( short, short, int, float );
CODE:
	func   = INT2PTR(double(*)( short, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dssit( c_func, s0, s1, i2, t3 )
	SV* c_func
	short s0
	short s1
	int i2
	char * t3
PREINIT:
	double (*func)( short, short, int, char * );
CODE:
	func   = INT2PTR(double(*)( short, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dssii( c_func, s0, s1, i2, i3 )
	SV* c_func
	short s0
	short s1
	int i2
	int i3
PREINIT:
	double (*func)( short, short, int, int );
CODE:
	func   = INT2PTR(double(*)( short, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dsfdd( c_func, s0, f1, d2, d3 )
	SV* c_func
	short s0
	float f1
	double d2
	double d3
PREINIT:
	double (*func)( short, float, double, double );
CODE:
	func   = INT2PTR(double(*)( short, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dsfds( c_func, s0, f1, d2, s3 )
	SV* c_func
	short s0
	float f1
	double d2
	short s3
PREINIT:
	double (*func)( short, float, double, short );
CODE:
	func   = INT2PTR(double(*)( short, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dsfdf( c_func, s0, f1, d2, f3 )
	SV* c_func
	short s0
	float f1
	double d2
	float f3
PREINIT:
	double (*func)( short, float, double, float );
CODE:
	func   = INT2PTR(double(*)( short, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dsfdt( c_func, s0, f1, d2, t3 )
	SV* c_func
	short s0
	float f1
	double d2
	char * t3
PREINIT:
	double (*func)( short, float, double, char * );
CODE:
	func   = INT2PTR(double(*)( short, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dsfdi( c_func, s0, f1, d2, i3 )
	SV* c_func
	short s0
	float f1
	double d2
	int i3
PREINIT:
	double (*func)( short, float, double, int );
CODE:
	func   = INT2PTR(double(*)( short, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dsfsd( c_func, s0, f1, s2, d3 )
	SV* c_func
	short s0
	float f1
	short s2
	double d3
PREINIT:
	double (*func)( short, float, short, double );
CODE:
	func   = INT2PTR(double(*)( short, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dsfss( c_func, s0, f1, s2, s3 )
	SV* c_func
	short s0
	float f1
	short s2
	short s3
PREINIT:
	double (*func)( short, float, short, short );
CODE:
	func   = INT2PTR(double(*)( short, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dsfsf( c_func, s0, f1, s2, f3 )
	SV* c_func
	short s0
	float f1
	short s2
	float f3
PREINIT:
	double (*func)( short, float, short, float );
CODE:
	func   = INT2PTR(double(*)( short, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dsfst( c_func, s0, f1, s2, t3 )
	SV* c_func
	short s0
	float f1
	short s2
	char * t3
PREINIT:
	double (*func)( short, float, short, char * );
CODE:
	func   = INT2PTR(double(*)( short, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dsfsi( c_func, s0, f1, s2, i3 )
	SV* c_func
	short s0
	float f1
	short s2
	int i3
PREINIT:
	double (*func)( short, float, short, int );
CODE:
	func   = INT2PTR(double(*)( short, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dsffd( c_func, s0, f1, f2, d3 )
	SV* c_func
	short s0
	float f1
	float f2
	double d3
PREINIT:
	double (*func)( short, float, float, double );
CODE:
	func   = INT2PTR(double(*)( short, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dsffs( c_func, s0, f1, f2, s3 )
	SV* c_func
	short s0
	float f1
	float f2
	short s3
PREINIT:
	double (*func)( short, float, float, short );
CODE:
	func   = INT2PTR(double(*)( short, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dsfff( c_func, s0, f1, f2, f3 )
	SV* c_func
	short s0
	float f1
	float f2
	float f3
PREINIT:
	double (*func)( short, float, float, float );
CODE:
	func   = INT2PTR(double(*)( short, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dsfft( c_func, s0, f1, f2, t3 )
	SV* c_func
	short s0
	float f1
	float f2
	char * t3
PREINIT:
	double (*func)( short, float, float, char * );
CODE:
	func   = INT2PTR(double(*)( short, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dsffi( c_func, s0, f1, f2, i3 )
	SV* c_func
	short s0
	float f1
	float f2
	int i3
PREINIT:
	double (*func)( short, float, float, int );
CODE:
	func   = INT2PTR(double(*)( short, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dsftd( c_func, s0, f1, t2, d3 )
	SV* c_func
	short s0
	float f1
	char * t2
	double d3
PREINIT:
	double (*func)( short, float, char *, double );
CODE:
	func   = INT2PTR(double(*)( short, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dsfts( c_func, s0, f1, t2, s3 )
	SV* c_func
	short s0
	float f1
	char * t2
	short s3
PREINIT:
	double (*func)( short, float, char *, short );
CODE:
	func   = INT2PTR(double(*)( short, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dsftf( c_func, s0, f1, t2, f3 )
	SV* c_func
	short s0
	float f1
	char * t2
	float f3
PREINIT:
	double (*func)( short, float, char *, float );
CODE:
	func   = INT2PTR(double(*)( short, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dsftt( c_func, s0, f1, t2, t3 )
	SV* c_func
	short s0
	float f1
	char * t2
	char * t3
PREINIT:
	double (*func)( short, float, char *, char * );
CODE:
	func   = INT2PTR(double(*)( short, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dsfti( c_func, s0, f1, t2, i3 )
	SV* c_func
	short s0
	float f1
	char * t2
	int i3
PREINIT:
	double (*func)( short, float, char *, int );
CODE:
	func   = INT2PTR(double(*)( short, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dsfid( c_func, s0, f1, i2, d3 )
	SV* c_func
	short s0
	float f1
	int i2
	double d3
PREINIT:
	double (*func)( short, float, int, double );
CODE:
	func   = INT2PTR(double(*)( short, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dsfis( c_func, s0, f1, i2, s3 )
	SV* c_func
	short s0
	float f1
	int i2
	short s3
PREINIT:
	double (*func)( short, float, int, short );
CODE:
	func   = INT2PTR(double(*)( short, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dsfif( c_func, s0, f1, i2, f3 )
	SV* c_func
	short s0
	float f1
	int i2
	float f3
PREINIT:
	double (*func)( short, float, int, float );
CODE:
	func   = INT2PTR(double(*)( short, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dsfit( c_func, s0, f1, i2, t3 )
	SV* c_func
	short s0
	float f1
	int i2
	char * t3
PREINIT:
	double (*func)( short, float, int, char * );
CODE:
	func   = INT2PTR(double(*)( short, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dsfii( c_func, s0, f1, i2, i3 )
	SV* c_func
	short s0
	float f1
	int i2
	int i3
PREINIT:
	double (*func)( short, float, int, int );
CODE:
	func   = INT2PTR(double(*)( short, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dstdd( c_func, s0, t1, d2, d3 )
	SV* c_func
	short s0
	char * t1
	double d2
	double d3
PREINIT:
	double (*func)( short, char *, double, double );
CODE:
	func   = INT2PTR(double(*)( short, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dstds( c_func, s0, t1, d2, s3 )
	SV* c_func
	short s0
	char * t1
	double d2
	short s3
PREINIT:
	double (*func)( short, char *, double, short );
CODE:
	func   = INT2PTR(double(*)( short, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dstdf( c_func, s0, t1, d2, f3 )
	SV* c_func
	short s0
	char * t1
	double d2
	float f3
PREINIT:
	double (*func)( short, char *, double, float );
CODE:
	func   = INT2PTR(double(*)( short, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dstdt( c_func, s0, t1, d2, t3 )
	SV* c_func
	short s0
	char * t1
	double d2
	char * t3
PREINIT:
	double (*func)( short, char *, double, char * );
CODE:
	func   = INT2PTR(double(*)( short, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dstdi( c_func, s0, t1, d2, i3 )
	SV* c_func
	short s0
	char * t1
	double d2
	int i3
PREINIT:
	double (*func)( short, char *, double, int );
CODE:
	func   = INT2PTR(double(*)( short, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dstsd( c_func, s0, t1, s2, d3 )
	SV* c_func
	short s0
	char * t1
	short s2
	double d3
PREINIT:
	double (*func)( short, char *, short, double );
CODE:
	func   = INT2PTR(double(*)( short, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dstss( c_func, s0, t1, s2, s3 )
	SV* c_func
	short s0
	char * t1
	short s2
	short s3
PREINIT:
	double (*func)( short, char *, short, short );
CODE:
	func   = INT2PTR(double(*)( short, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dstsf( c_func, s0, t1, s2, f3 )
	SV* c_func
	short s0
	char * t1
	short s2
	float f3
PREINIT:
	double (*func)( short, char *, short, float );
CODE:
	func   = INT2PTR(double(*)( short, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dstst( c_func, s0, t1, s2, t3 )
	SV* c_func
	short s0
	char * t1
	short s2
	char * t3
PREINIT:
	double (*func)( short, char *, short, char * );
CODE:
	func   = INT2PTR(double(*)( short, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dstsi( c_func, s0, t1, s2, i3 )
	SV* c_func
	short s0
	char * t1
	short s2
	int i3
PREINIT:
	double (*func)( short, char *, short, int );
CODE:
	func   = INT2PTR(double(*)( short, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dstfd( c_func, s0, t1, f2, d3 )
	SV* c_func
	short s0
	char * t1
	float f2
	double d3
PREINIT:
	double (*func)( short, char *, float, double );
CODE:
	func   = INT2PTR(double(*)( short, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dstfs( c_func, s0, t1, f2, s3 )
	SV* c_func
	short s0
	char * t1
	float f2
	short s3
PREINIT:
	double (*func)( short, char *, float, short );
CODE:
	func   = INT2PTR(double(*)( short, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dstff( c_func, s0, t1, f2, f3 )
	SV* c_func
	short s0
	char * t1
	float f2
	float f3
PREINIT:
	double (*func)( short, char *, float, float );
CODE:
	func   = INT2PTR(double(*)( short, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dstft( c_func, s0, t1, f2, t3 )
	SV* c_func
	short s0
	char * t1
	float f2
	char * t3
PREINIT:
	double (*func)( short, char *, float, char * );
CODE:
	func   = INT2PTR(double(*)( short, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dstfi( c_func, s0, t1, f2, i3 )
	SV* c_func
	short s0
	char * t1
	float f2
	int i3
PREINIT:
	double (*func)( short, char *, float, int );
CODE:
	func   = INT2PTR(double(*)( short, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dsttd( c_func, s0, t1, t2, d3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	double d3
PREINIT:
	double (*func)( short, char *, char *, double );
CODE:
	func   = INT2PTR(double(*)( short, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dstts( c_func, s0, t1, t2, s3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	short s3
PREINIT:
	double (*func)( short, char *, char *, short );
CODE:
	func   = INT2PTR(double(*)( short, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dsttf( c_func, s0, t1, t2, f3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	float f3
PREINIT:
	double (*func)( short, char *, char *, float );
CODE:
	func   = INT2PTR(double(*)( short, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dsttt( c_func, s0, t1, t2, t3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	char * t3
PREINIT:
	double (*func)( short, char *, char *, char * );
CODE:
	func   = INT2PTR(double(*)( short, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dstti( c_func, s0, t1, t2, i3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	int i3
PREINIT:
	double (*func)( short, char *, char *, int );
CODE:
	func   = INT2PTR(double(*)( short, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dstid( c_func, s0, t1, i2, d3 )
	SV* c_func
	short s0
	char * t1
	int i2
	double d3
PREINIT:
	double (*func)( short, char *, int, double );
CODE:
	func   = INT2PTR(double(*)( short, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dstis( c_func, s0, t1, i2, s3 )
	SV* c_func
	short s0
	char * t1
	int i2
	short s3
PREINIT:
	double (*func)( short, char *, int, short );
CODE:
	func   = INT2PTR(double(*)( short, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dstif( c_func, s0, t1, i2, f3 )
	SV* c_func
	short s0
	char * t1
	int i2
	float f3
PREINIT:
	double (*func)( short, char *, int, float );
CODE:
	func   = INT2PTR(double(*)( short, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dstit( c_func, s0, t1, i2, t3 )
	SV* c_func
	short s0
	char * t1
	int i2
	char * t3
PREINIT:
	double (*func)( short, char *, int, char * );
CODE:
	func   = INT2PTR(double(*)( short, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dstii( c_func, s0, t1, i2, i3 )
	SV* c_func
	short s0
	char * t1
	int i2
	int i3
PREINIT:
	double (*func)( short, char *, int, int );
CODE:
	func   = INT2PTR(double(*)( short, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dsidd( c_func, s0, i1, d2, d3 )
	SV* c_func
	short s0
	int i1
	double d2
	double d3
PREINIT:
	double (*func)( short, int, double, double );
CODE:
	func   = INT2PTR(double(*)( short, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dsids( c_func, s0, i1, d2, s3 )
	SV* c_func
	short s0
	int i1
	double d2
	short s3
PREINIT:
	double (*func)( short, int, double, short );
CODE:
	func   = INT2PTR(double(*)( short, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dsidf( c_func, s0, i1, d2, f3 )
	SV* c_func
	short s0
	int i1
	double d2
	float f3
PREINIT:
	double (*func)( short, int, double, float );
CODE:
	func   = INT2PTR(double(*)( short, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dsidt( c_func, s0, i1, d2, t3 )
	SV* c_func
	short s0
	int i1
	double d2
	char * t3
PREINIT:
	double (*func)( short, int, double, char * );
CODE:
	func   = INT2PTR(double(*)( short, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dsidi( c_func, s0, i1, d2, i3 )
	SV* c_func
	short s0
	int i1
	double d2
	int i3
PREINIT:
	double (*func)( short, int, double, int );
CODE:
	func   = INT2PTR(double(*)( short, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dsisd( c_func, s0, i1, s2, d3 )
	SV* c_func
	short s0
	int i1
	short s2
	double d3
PREINIT:
	double (*func)( short, int, short, double );
CODE:
	func   = INT2PTR(double(*)( short, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dsiss( c_func, s0, i1, s2, s3 )
	SV* c_func
	short s0
	int i1
	short s2
	short s3
PREINIT:
	double (*func)( short, int, short, short );
CODE:
	func   = INT2PTR(double(*)( short, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dsisf( c_func, s0, i1, s2, f3 )
	SV* c_func
	short s0
	int i1
	short s2
	float f3
PREINIT:
	double (*func)( short, int, short, float );
CODE:
	func   = INT2PTR(double(*)( short, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dsist( c_func, s0, i1, s2, t3 )
	SV* c_func
	short s0
	int i1
	short s2
	char * t3
PREINIT:
	double (*func)( short, int, short, char * );
CODE:
	func   = INT2PTR(double(*)( short, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dsisi( c_func, s0, i1, s2, i3 )
	SV* c_func
	short s0
	int i1
	short s2
	int i3
PREINIT:
	double (*func)( short, int, short, int );
CODE:
	func   = INT2PTR(double(*)( short, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dsifd( c_func, s0, i1, f2, d3 )
	SV* c_func
	short s0
	int i1
	float f2
	double d3
PREINIT:
	double (*func)( short, int, float, double );
CODE:
	func   = INT2PTR(double(*)( short, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dsifs( c_func, s0, i1, f2, s3 )
	SV* c_func
	short s0
	int i1
	float f2
	short s3
PREINIT:
	double (*func)( short, int, float, short );
CODE:
	func   = INT2PTR(double(*)( short, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dsiff( c_func, s0, i1, f2, f3 )
	SV* c_func
	short s0
	int i1
	float f2
	float f3
PREINIT:
	double (*func)( short, int, float, float );
CODE:
	func   = INT2PTR(double(*)( short, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dsift( c_func, s0, i1, f2, t3 )
	SV* c_func
	short s0
	int i1
	float f2
	char * t3
PREINIT:
	double (*func)( short, int, float, char * );
CODE:
	func   = INT2PTR(double(*)( short, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dsifi( c_func, s0, i1, f2, i3 )
	SV* c_func
	short s0
	int i1
	float f2
	int i3
PREINIT:
	double (*func)( short, int, float, int );
CODE:
	func   = INT2PTR(double(*)( short, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dsitd( c_func, s0, i1, t2, d3 )
	SV* c_func
	short s0
	int i1
	char * t2
	double d3
PREINIT:
	double (*func)( short, int, char *, double );
CODE:
	func   = INT2PTR(double(*)( short, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dsits( c_func, s0, i1, t2, s3 )
	SV* c_func
	short s0
	int i1
	char * t2
	short s3
PREINIT:
	double (*func)( short, int, char *, short );
CODE:
	func   = INT2PTR(double(*)( short, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dsitf( c_func, s0, i1, t2, f3 )
	SV* c_func
	short s0
	int i1
	char * t2
	float f3
PREINIT:
	double (*func)( short, int, char *, float );
CODE:
	func   = INT2PTR(double(*)( short, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dsitt( c_func, s0, i1, t2, t3 )
	SV* c_func
	short s0
	int i1
	char * t2
	char * t3
PREINIT:
	double (*func)( short, int, char *, char * );
CODE:
	func   = INT2PTR(double(*)( short, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dsiti( c_func, s0, i1, t2, i3 )
	SV* c_func
	short s0
	int i1
	char * t2
	int i3
PREINIT:
	double (*func)( short, int, char *, int );
CODE:
	func   = INT2PTR(double(*)( short, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dsiid( c_func, s0, i1, i2, d3 )
	SV* c_func
	short s0
	int i1
	int i2
	double d3
PREINIT:
	double (*func)( short, int, int, double );
CODE:
	func   = INT2PTR(double(*)( short, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dsiis( c_func, s0, i1, i2, s3 )
	SV* c_func
	short s0
	int i1
	int i2
	short s3
PREINIT:
	double (*func)( short, int, int, short );
CODE:
	func   = INT2PTR(double(*)( short, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dsiif( c_func, s0, i1, i2, f3 )
	SV* c_func
	short s0
	int i1
	int i2
	float f3
PREINIT:
	double (*func)( short, int, int, float );
CODE:
	func   = INT2PTR(double(*)( short, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dsiit( c_func, s0, i1, i2, t3 )
	SV* c_func
	short s0
	int i1
	int i2
	char * t3
PREINIT:
	double (*func)( short, int, int, char * );
CODE:
	func   = INT2PTR(double(*)( short, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dsiii( c_func, s0, i1, i2, i3 )
	SV* c_func
	short s0
	int i1
	int i2
	int i3
PREINIT:
	double (*func)( short, int, int, int );
CODE:
	func   = INT2PTR(double(*)( short, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dfddd( c_func, f0, d1, d2, d3 )
	SV* c_func
	float f0
	double d1
	double d2
	double d3
PREINIT:
	double (*func)( float, double, double, double );
CODE:
	func   = INT2PTR(double(*)( float, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dfdds( c_func, f0, d1, d2, s3 )
	SV* c_func
	float f0
	double d1
	double d2
	short s3
PREINIT:
	double (*func)( float, double, double, short );
CODE:
	func   = INT2PTR(double(*)( float, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dfddf( c_func, f0, d1, d2, f3 )
	SV* c_func
	float f0
	double d1
	double d2
	float f3
PREINIT:
	double (*func)( float, double, double, float );
CODE:
	func   = INT2PTR(double(*)( float, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dfddt( c_func, f0, d1, d2, t3 )
	SV* c_func
	float f0
	double d1
	double d2
	char * t3
PREINIT:
	double (*func)( float, double, double, char * );
CODE:
	func   = INT2PTR(double(*)( float, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dfddi( c_func, f0, d1, d2, i3 )
	SV* c_func
	float f0
	double d1
	double d2
	int i3
PREINIT:
	double (*func)( float, double, double, int );
CODE:
	func   = INT2PTR(double(*)( float, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dfdsd( c_func, f0, d1, s2, d3 )
	SV* c_func
	float f0
	double d1
	short s2
	double d3
PREINIT:
	double (*func)( float, double, short, double );
CODE:
	func   = INT2PTR(double(*)( float, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dfdss( c_func, f0, d1, s2, s3 )
	SV* c_func
	float f0
	double d1
	short s2
	short s3
PREINIT:
	double (*func)( float, double, short, short );
CODE:
	func   = INT2PTR(double(*)( float, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dfdsf( c_func, f0, d1, s2, f3 )
	SV* c_func
	float f0
	double d1
	short s2
	float f3
PREINIT:
	double (*func)( float, double, short, float );
CODE:
	func   = INT2PTR(double(*)( float, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dfdst( c_func, f0, d1, s2, t3 )
	SV* c_func
	float f0
	double d1
	short s2
	char * t3
PREINIT:
	double (*func)( float, double, short, char * );
CODE:
	func   = INT2PTR(double(*)( float, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dfdsi( c_func, f0, d1, s2, i3 )
	SV* c_func
	float f0
	double d1
	short s2
	int i3
PREINIT:
	double (*func)( float, double, short, int );
CODE:
	func   = INT2PTR(double(*)( float, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dfdfd( c_func, f0, d1, f2, d3 )
	SV* c_func
	float f0
	double d1
	float f2
	double d3
PREINIT:
	double (*func)( float, double, float, double );
CODE:
	func   = INT2PTR(double(*)( float, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dfdfs( c_func, f0, d1, f2, s3 )
	SV* c_func
	float f0
	double d1
	float f2
	short s3
PREINIT:
	double (*func)( float, double, float, short );
CODE:
	func   = INT2PTR(double(*)( float, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dfdff( c_func, f0, d1, f2, f3 )
	SV* c_func
	float f0
	double d1
	float f2
	float f3
PREINIT:
	double (*func)( float, double, float, float );
CODE:
	func   = INT2PTR(double(*)( float, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dfdft( c_func, f0, d1, f2, t3 )
	SV* c_func
	float f0
	double d1
	float f2
	char * t3
PREINIT:
	double (*func)( float, double, float, char * );
CODE:
	func   = INT2PTR(double(*)( float, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dfdfi( c_func, f0, d1, f2, i3 )
	SV* c_func
	float f0
	double d1
	float f2
	int i3
PREINIT:
	double (*func)( float, double, float, int );
CODE:
	func   = INT2PTR(double(*)( float, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dfdtd( c_func, f0, d1, t2, d3 )
	SV* c_func
	float f0
	double d1
	char * t2
	double d3
PREINIT:
	double (*func)( float, double, char *, double );
CODE:
	func   = INT2PTR(double(*)( float, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dfdts( c_func, f0, d1, t2, s3 )
	SV* c_func
	float f0
	double d1
	char * t2
	short s3
PREINIT:
	double (*func)( float, double, char *, short );
CODE:
	func   = INT2PTR(double(*)( float, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dfdtf( c_func, f0, d1, t2, f3 )
	SV* c_func
	float f0
	double d1
	char * t2
	float f3
PREINIT:
	double (*func)( float, double, char *, float );
CODE:
	func   = INT2PTR(double(*)( float, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dfdtt( c_func, f0, d1, t2, t3 )
	SV* c_func
	float f0
	double d1
	char * t2
	char * t3
PREINIT:
	double (*func)( float, double, char *, char * );
CODE:
	func   = INT2PTR(double(*)( float, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dfdti( c_func, f0, d1, t2, i3 )
	SV* c_func
	float f0
	double d1
	char * t2
	int i3
PREINIT:
	double (*func)( float, double, char *, int );
CODE:
	func   = INT2PTR(double(*)( float, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dfdid( c_func, f0, d1, i2, d3 )
	SV* c_func
	float f0
	double d1
	int i2
	double d3
PREINIT:
	double (*func)( float, double, int, double );
CODE:
	func   = INT2PTR(double(*)( float, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dfdis( c_func, f0, d1, i2, s3 )
	SV* c_func
	float f0
	double d1
	int i2
	short s3
PREINIT:
	double (*func)( float, double, int, short );
CODE:
	func   = INT2PTR(double(*)( float, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dfdif( c_func, f0, d1, i2, f3 )
	SV* c_func
	float f0
	double d1
	int i2
	float f3
PREINIT:
	double (*func)( float, double, int, float );
CODE:
	func   = INT2PTR(double(*)( float, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dfdit( c_func, f0, d1, i2, t3 )
	SV* c_func
	float f0
	double d1
	int i2
	char * t3
PREINIT:
	double (*func)( float, double, int, char * );
CODE:
	func   = INT2PTR(double(*)( float, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dfdii( c_func, f0, d1, i2, i3 )
	SV* c_func
	float f0
	double d1
	int i2
	int i3
PREINIT:
	double (*func)( float, double, int, int );
CODE:
	func   = INT2PTR(double(*)( float, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dfsdd( c_func, f0, s1, d2, d3 )
	SV* c_func
	float f0
	short s1
	double d2
	double d3
PREINIT:
	double (*func)( float, short, double, double );
CODE:
	func   = INT2PTR(double(*)( float, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dfsds( c_func, f0, s1, d2, s3 )
	SV* c_func
	float f0
	short s1
	double d2
	short s3
PREINIT:
	double (*func)( float, short, double, short );
CODE:
	func   = INT2PTR(double(*)( float, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dfsdf( c_func, f0, s1, d2, f3 )
	SV* c_func
	float f0
	short s1
	double d2
	float f3
PREINIT:
	double (*func)( float, short, double, float );
CODE:
	func   = INT2PTR(double(*)( float, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dfsdt( c_func, f0, s1, d2, t3 )
	SV* c_func
	float f0
	short s1
	double d2
	char * t3
PREINIT:
	double (*func)( float, short, double, char * );
CODE:
	func   = INT2PTR(double(*)( float, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dfsdi( c_func, f0, s1, d2, i3 )
	SV* c_func
	float f0
	short s1
	double d2
	int i3
PREINIT:
	double (*func)( float, short, double, int );
CODE:
	func   = INT2PTR(double(*)( float, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dfssd( c_func, f0, s1, s2, d3 )
	SV* c_func
	float f0
	short s1
	short s2
	double d3
PREINIT:
	double (*func)( float, short, short, double );
CODE:
	func   = INT2PTR(double(*)( float, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dfsss( c_func, f0, s1, s2, s3 )
	SV* c_func
	float f0
	short s1
	short s2
	short s3
PREINIT:
	double (*func)( float, short, short, short );
CODE:
	func   = INT2PTR(double(*)( float, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dfssf( c_func, f0, s1, s2, f3 )
	SV* c_func
	float f0
	short s1
	short s2
	float f3
PREINIT:
	double (*func)( float, short, short, float );
CODE:
	func   = INT2PTR(double(*)( float, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dfsst( c_func, f0, s1, s2, t3 )
	SV* c_func
	float f0
	short s1
	short s2
	char * t3
PREINIT:
	double (*func)( float, short, short, char * );
CODE:
	func   = INT2PTR(double(*)( float, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dfssi( c_func, f0, s1, s2, i3 )
	SV* c_func
	float f0
	short s1
	short s2
	int i3
PREINIT:
	double (*func)( float, short, short, int );
CODE:
	func   = INT2PTR(double(*)( float, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dfsfd( c_func, f0, s1, f2, d3 )
	SV* c_func
	float f0
	short s1
	float f2
	double d3
PREINIT:
	double (*func)( float, short, float, double );
CODE:
	func   = INT2PTR(double(*)( float, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dfsfs( c_func, f0, s1, f2, s3 )
	SV* c_func
	float f0
	short s1
	float f2
	short s3
PREINIT:
	double (*func)( float, short, float, short );
CODE:
	func   = INT2PTR(double(*)( float, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dfsff( c_func, f0, s1, f2, f3 )
	SV* c_func
	float f0
	short s1
	float f2
	float f3
PREINIT:
	double (*func)( float, short, float, float );
CODE:
	func   = INT2PTR(double(*)( float, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dfsft( c_func, f0, s1, f2, t3 )
	SV* c_func
	float f0
	short s1
	float f2
	char * t3
PREINIT:
	double (*func)( float, short, float, char * );
CODE:
	func   = INT2PTR(double(*)( float, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dfsfi( c_func, f0, s1, f2, i3 )
	SV* c_func
	float f0
	short s1
	float f2
	int i3
PREINIT:
	double (*func)( float, short, float, int );
CODE:
	func   = INT2PTR(double(*)( float, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dfstd( c_func, f0, s1, t2, d3 )
	SV* c_func
	float f0
	short s1
	char * t2
	double d3
PREINIT:
	double (*func)( float, short, char *, double );
CODE:
	func   = INT2PTR(double(*)( float, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dfsts( c_func, f0, s1, t2, s3 )
	SV* c_func
	float f0
	short s1
	char * t2
	short s3
PREINIT:
	double (*func)( float, short, char *, short );
CODE:
	func   = INT2PTR(double(*)( float, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dfstf( c_func, f0, s1, t2, f3 )
	SV* c_func
	float f0
	short s1
	char * t2
	float f3
PREINIT:
	double (*func)( float, short, char *, float );
CODE:
	func   = INT2PTR(double(*)( float, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dfstt( c_func, f0, s1, t2, t3 )
	SV* c_func
	float f0
	short s1
	char * t2
	char * t3
PREINIT:
	double (*func)( float, short, char *, char * );
CODE:
	func   = INT2PTR(double(*)( float, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dfsti( c_func, f0, s1, t2, i3 )
	SV* c_func
	float f0
	short s1
	char * t2
	int i3
PREINIT:
	double (*func)( float, short, char *, int );
CODE:
	func   = INT2PTR(double(*)( float, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dfsid( c_func, f0, s1, i2, d3 )
	SV* c_func
	float f0
	short s1
	int i2
	double d3
PREINIT:
	double (*func)( float, short, int, double );
CODE:
	func   = INT2PTR(double(*)( float, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dfsis( c_func, f0, s1, i2, s3 )
	SV* c_func
	float f0
	short s1
	int i2
	short s3
PREINIT:
	double (*func)( float, short, int, short );
CODE:
	func   = INT2PTR(double(*)( float, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dfsif( c_func, f0, s1, i2, f3 )
	SV* c_func
	float f0
	short s1
	int i2
	float f3
PREINIT:
	double (*func)( float, short, int, float );
CODE:
	func   = INT2PTR(double(*)( float, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dfsit( c_func, f0, s1, i2, t3 )
	SV* c_func
	float f0
	short s1
	int i2
	char * t3
PREINIT:
	double (*func)( float, short, int, char * );
CODE:
	func   = INT2PTR(double(*)( float, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dfsii( c_func, f0, s1, i2, i3 )
	SV* c_func
	float f0
	short s1
	int i2
	int i3
PREINIT:
	double (*func)( float, short, int, int );
CODE:
	func   = INT2PTR(double(*)( float, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dffdd( c_func, f0, f1, d2, d3 )
	SV* c_func
	float f0
	float f1
	double d2
	double d3
PREINIT:
	double (*func)( float, float, double, double );
CODE:
	func   = INT2PTR(double(*)( float, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dffds( c_func, f0, f1, d2, s3 )
	SV* c_func
	float f0
	float f1
	double d2
	short s3
PREINIT:
	double (*func)( float, float, double, short );
CODE:
	func   = INT2PTR(double(*)( float, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dffdf( c_func, f0, f1, d2, f3 )
	SV* c_func
	float f0
	float f1
	double d2
	float f3
PREINIT:
	double (*func)( float, float, double, float );
CODE:
	func   = INT2PTR(double(*)( float, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dffdt( c_func, f0, f1, d2, t3 )
	SV* c_func
	float f0
	float f1
	double d2
	char * t3
PREINIT:
	double (*func)( float, float, double, char * );
CODE:
	func   = INT2PTR(double(*)( float, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dffdi( c_func, f0, f1, d2, i3 )
	SV* c_func
	float f0
	float f1
	double d2
	int i3
PREINIT:
	double (*func)( float, float, double, int );
CODE:
	func   = INT2PTR(double(*)( float, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dffsd( c_func, f0, f1, s2, d3 )
	SV* c_func
	float f0
	float f1
	short s2
	double d3
PREINIT:
	double (*func)( float, float, short, double );
CODE:
	func   = INT2PTR(double(*)( float, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dffss( c_func, f0, f1, s2, s3 )
	SV* c_func
	float f0
	float f1
	short s2
	short s3
PREINIT:
	double (*func)( float, float, short, short );
CODE:
	func   = INT2PTR(double(*)( float, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dffsf( c_func, f0, f1, s2, f3 )
	SV* c_func
	float f0
	float f1
	short s2
	float f3
PREINIT:
	double (*func)( float, float, short, float );
CODE:
	func   = INT2PTR(double(*)( float, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dffst( c_func, f0, f1, s2, t3 )
	SV* c_func
	float f0
	float f1
	short s2
	char * t3
PREINIT:
	double (*func)( float, float, short, char * );
CODE:
	func   = INT2PTR(double(*)( float, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dffsi( c_func, f0, f1, s2, i3 )
	SV* c_func
	float f0
	float f1
	short s2
	int i3
PREINIT:
	double (*func)( float, float, short, int );
CODE:
	func   = INT2PTR(double(*)( float, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dfffd( c_func, f0, f1, f2, d3 )
	SV* c_func
	float f0
	float f1
	float f2
	double d3
PREINIT:
	double (*func)( float, float, float, double );
CODE:
	func   = INT2PTR(double(*)( float, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dfffs( c_func, f0, f1, f2, s3 )
	SV* c_func
	float f0
	float f1
	float f2
	short s3
PREINIT:
	double (*func)( float, float, float, short );
CODE:
	func   = INT2PTR(double(*)( float, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dffff( c_func, f0, f1, f2, f3 )
	SV* c_func
	float f0
	float f1
	float f2
	float f3
PREINIT:
	double (*func)( float, float, float, float );
CODE:
	func   = INT2PTR(double(*)( float, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dffft( c_func, f0, f1, f2, t3 )
	SV* c_func
	float f0
	float f1
	float f2
	char * t3
PREINIT:
	double (*func)( float, float, float, char * );
CODE:
	func   = INT2PTR(double(*)( float, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dfffi( c_func, f0, f1, f2, i3 )
	SV* c_func
	float f0
	float f1
	float f2
	int i3
PREINIT:
	double (*func)( float, float, float, int );
CODE:
	func   = INT2PTR(double(*)( float, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dfftd( c_func, f0, f1, t2, d3 )
	SV* c_func
	float f0
	float f1
	char * t2
	double d3
PREINIT:
	double (*func)( float, float, char *, double );
CODE:
	func   = INT2PTR(double(*)( float, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dffts( c_func, f0, f1, t2, s3 )
	SV* c_func
	float f0
	float f1
	char * t2
	short s3
PREINIT:
	double (*func)( float, float, char *, short );
CODE:
	func   = INT2PTR(double(*)( float, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dfftf( c_func, f0, f1, t2, f3 )
	SV* c_func
	float f0
	float f1
	char * t2
	float f3
PREINIT:
	double (*func)( float, float, char *, float );
CODE:
	func   = INT2PTR(double(*)( float, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dfftt( c_func, f0, f1, t2, t3 )
	SV* c_func
	float f0
	float f1
	char * t2
	char * t3
PREINIT:
	double (*func)( float, float, char *, char * );
CODE:
	func   = INT2PTR(double(*)( float, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dffti( c_func, f0, f1, t2, i3 )
	SV* c_func
	float f0
	float f1
	char * t2
	int i3
PREINIT:
	double (*func)( float, float, char *, int );
CODE:
	func   = INT2PTR(double(*)( float, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dffid( c_func, f0, f1, i2, d3 )
	SV* c_func
	float f0
	float f1
	int i2
	double d3
PREINIT:
	double (*func)( float, float, int, double );
CODE:
	func   = INT2PTR(double(*)( float, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dffis( c_func, f0, f1, i2, s3 )
	SV* c_func
	float f0
	float f1
	int i2
	short s3
PREINIT:
	double (*func)( float, float, int, short );
CODE:
	func   = INT2PTR(double(*)( float, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dffif( c_func, f0, f1, i2, f3 )
	SV* c_func
	float f0
	float f1
	int i2
	float f3
PREINIT:
	double (*func)( float, float, int, float );
CODE:
	func   = INT2PTR(double(*)( float, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dffit( c_func, f0, f1, i2, t3 )
	SV* c_func
	float f0
	float f1
	int i2
	char * t3
PREINIT:
	double (*func)( float, float, int, char * );
CODE:
	func   = INT2PTR(double(*)( float, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dffii( c_func, f0, f1, i2, i3 )
	SV* c_func
	float f0
	float f1
	int i2
	int i3
PREINIT:
	double (*func)( float, float, int, int );
CODE:
	func   = INT2PTR(double(*)( float, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dftdd( c_func, f0, t1, d2, d3 )
	SV* c_func
	float f0
	char * t1
	double d2
	double d3
PREINIT:
	double (*func)( float, char *, double, double );
CODE:
	func   = INT2PTR(double(*)( float, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dftds( c_func, f0, t1, d2, s3 )
	SV* c_func
	float f0
	char * t1
	double d2
	short s3
PREINIT:
	double (*func)( float, char *, double, short );
CODE:
	func   = INT2PTR(double(*)( float, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dftdf( c_func, f0, t1, d2, f3 )
	SV* c_func
	float f0
	char * t1
	double d2
	float f3
PREINIT:
	double (*func)( float, char *, double, float );
CODE:
	func   = INT2PTR(double(*)( float, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dftdt( c_func, f0, t1, d2, t3 )
	SV* c_func
	float f0
	char * t1
	double d2
	char * t3
PREINIT:
	double (*func)( float, char *, double, char * );
CODE:
	func   = INT2PTR(double(*)( float, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dftdi( c_func, f0, t1, d2, i3 )
	SV* c_func
	float f0
	char * t1
	double d2
	int i3
PREINIT:
	double (*func)( float, char *, double, int );
CODE:
	func   = INT2PTR(double(*)( float, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dftsd( c_func, f0, t1, s2, d3 )
	SV* c_func
	float f0
	char * t1
	short s2
	double d3
PREINIT:
	double (*func)( float, char *, short, double );
CODE:
	func   = INT2PTR(double(*)( float, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dftss( c_func, f0, t1, s2, s3 )
	SV* c_func
	float f0
	char * t1
	short s2
	short s3
PREINIT:
	double (*func)( float, char *, short, short );
CODE:
	func   = INT2PTR(double(*)( float, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dftsf( c_func, f0, t1, s2, f3 )
	SV* c_func
	float f0
	char * t1
	short s2
	float f3
PREINIT:
	double (*func)( float, char *, short, float );
CODE:
	func   = INT2PTR(double(*)( float, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dftst( c_func, f0, t1, s2, t3 )
	SV* c_func
	float f0
	char * t1
	short s2
	char * t3
PREINIT:
	double (*func)( float, char *, short, char * );
CODE:
	func   = INT2PTR(double(*)( float, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dftsi( c_func, f0, t1, s2, i3 )
	SV* c_func
	float f0
	char * t1
	short s2
	int i3
PREINIT:
	double (*func)( float, char *, short, int );
CODE:
	func   = INT2PTR(double(*)( float, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dftfd( c_func, f0, t1, f2, d3 )
	SV* c_func
	float f0
	char * t1
	float f2
	double d3
PREINIT:
	double (*func)( float, char *, float, double );
CODE:
	func   = INT2PTR(double(*)( float, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dftfs( c_func, f0, t1, f2, s3 )
	SV* c_func
	float f0
	char * t1
	float f2
	short s3
PREINIT:
	double (*func)( float, char *, float, short );
CODE:
	func   = INT2PTR(double(*)( float, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dftff( c_func, f0, t1, f2, f3 )
	SV* c_func
	float f0
	char * t1
	float f2
	float f3
PREINIT:
	double (*func)( float, char *, float, float );
CODE:
	func   = INT2PTR(double(*)( float, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dftft( c_func, f0, t1, f2, t3 )
	SV* c_func
	float f0
	char * t1
	float f2
	char * t3
PREINIT:
	double (*func)( float, char *, float, char * );
CODE:
	func   = INT2PTR(double(*)( float, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dftfi( c_func, f0, t1, f2, i3 )
	SV* c_func
	float f0
	char * t1
	float f2
	int i3
PREINIT:
	double (*func)( float, char *, float, int );
CODE:
	func   = INT2PTR(double(*)( float, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dfttd( c_func, f0, t1, t2, d3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	double d3
PREINIT:
	double (*func)( float, char *, char *, double );
CODE:
	func   = INT2PTR(double(*)( float, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dftts( c_func, f0, t1, t2, s3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	short s3
PREINIT:
	double (*func)( float, char *, char *, short );
CODE:
	func   = INT2PTR(double(*)( float, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dfttf( c_func, f0, t1, t2, f3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	float f3
PREINIT:
	double (*func)( float, char *, char *, float );
CODE:
	func   = INT2PTR(double(*)( float, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dfttt( c_func, f0, t1, t2, t3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	char * t3
PREINIT:
	double (*func)( float, char *, char *, char * );
CODE:
	func   = INT2PTR(double(*)( float, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dftti( c_func, f0, t1, t2, i3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	int i3
PREINIT:
	double (*func)( float, char *, char *, int );
CODE:
	func   = INT2PTR(double(*)( float, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dftid( c_func, f0, t1, i2, d3 )
	SV* c_func
	float f0
	char * t1
	int i2
	double d3
PREINIT:
	double (*func)( float, char *, int, double );
CODE:
	func   = INT2PTR(double(*)( float, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dftis( c_func, f0, t1, i2, s3 )
	SV* c_func
	float f0
	char * t1
	int i2
	short s3
PREINIT:
	double (*func)( float, char *, int, short );
CODE:
	func   = INT2PTR(double(*)( float, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dftif( c_func, f0, t1, i2, f3 )
	SV* c_func
	float f0
	char * t1
	int i2
	float f3
PREINIT:
	double (*func)( float, char *, int, float );
CODE:
	func   = INT2PTR(double(*)( float, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dftit( c_func, f0, t1, i2, t3 )
	SV* c_func
	float f0
	char * t1
	int i2
	char * t3
PREINIT:
	double (*func)( float, char *, int, char * );
CODE:
	func   = INT2PTR(double(*)( float, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dftii( c_func, f0, t1, i2, i3 )
	SV* c_func
	float f0
	char * t1
	int i2
	int i3
PREINIT:
	double (*func)( float, char *, int, int );
CODE:
	func   = INT2PTR(double(*)( float, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dfidd( c_func, f0, i1, d2, d3 )
	SV* c_func
	float f0
	int i1
	double d2
	double d3
PREINIT:
	double (*func)( float, int, double, double );
CODE:
	func   = INT2PTR(double(*)( float, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dfids( c_func, f0, i1, d2, s3 )
	SV* c_func
	float f0
	int i1
	double d2
	short s3
PREINIT:
	double (*func)( float, int, double, short );
CODE:
	func   = INT2PTR(double(*)( float, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dfidf( c_func, f0, i1, d2, f3 )
	SV* c_func
	float f0
	int i1
	double d2
	float f3
PREINIT:
	double (*func)( float, int, double, float );
CODE:
	func   = INT2PTR(double(*)( float, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dfidt( c_func, f0, i1, d2, t3 )
	SV* c_func
	float f0
	int i1
	double d2
	char * t3
PREINIT:
	double (*func)( float, int, double, char * );
CODE:
	func   = INT2PTR(double(*)( float, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dfidi( c_func, f0, i1, d2, i3 )
	SV* c_func
	float f0
	int i1
	double d2
	int i3
PREINIT:
	double (*func)( float, int, double, int );
CODE:
	func   = INT2PTR(double(*)( float, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dfisd( c_func, f0, i1, s2, d3 )
	SV* c_func
	float f0
	int i1
	short s2
	double d3
PREINIT:
	double (*func)( float, int, short, double );
CODE:
	func   = INT2PTR(double(*)( float, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dfiss( c_func, f0, i1, s2, s3 )
	SV* c_func
	float f0
	int i1
	short s2
	short s3
PREINIT:
	double (*func)( float, int, short, short );
CODE:
	func   = INT2PTR(double(*)( float, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dfisf( c_func, f0, i1, s2, f3 )
	SV* c_func
	float f0
	int i1
	short s2
	float f3
PREINIT:
	double (*func)( float, int, short, float );
CODE:
	func   = INT2PTR(double(*)( float, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dfist( c_func, f0, i1, s2, t3 )
	SV* c_func
	float f0
	int i1
	short s2
	char * t3
PREINIT:
	double (*func)( float, int, short, char * );
CODE:
	func   = INT2PTR(double(*)( float, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dfisi( c_func, f0, i1, s2, i3 )
	SV* c_func
	float f0
	int i1
	short s2
	int i3
PREINIT:
	double (*func)( float, int, short, int );
CODE:
	func   = INT2PTR(double(*)( float, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dfifd( c_func, f0, i1, f2, d3 )
	SV* c_func
	float f0
	int i1
	float f2
	double d3
PREINIT:
	double (*func)( float, int, float, double );
CODE:
	func   = INT2PTR(double(*)( float, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dfifs( c_func, f0, i1, f2, s3 )
	SV* c_func
	float f0
	int i1
	float f2
	short s3
PREINIT:
	double (*func)( float, int, float, short );
CODE:
	func   = INT2PTR(double(*)( float, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dfiff( c_func, f0, i1, f2, f3 )
	SV* c_func
	float f0
	int i1
	float f2
	float f3
PREINIT:
	double (*func)( float, int, float, float );
CODE:
	func   = INT2PTR(double(*)( float, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dfift( c_func, f0, i1, f2, t3 )
	SV* c_func
	float f0
	int i1
	float f2
	char * t3
PREINIT:
	double (*func)( float, int, float, char * );
CODE:
	func   = INT2PTR(double(*)( float, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dfifi( c_func, f0, i1, f2, i3 )
	SV* c_func
	float f0
	int i1
	float f2
	int i3
PREINIT:
	double (*func)( float, int, float, int );
CODE:
	func   = INT2PTR(double(*)( float, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dfitd( c_func, f0, i1, t2, d3 )
	SV* c_func
	float f0
	int i1
	char * t2
	double d3
PREINIT:
	double (*func)( float, int, char *, double );
CODE:
	func   = INT2PTR(double(*)( float, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dfits( c_func, f0, i1, t2, s3 )
	SV* c_func
	float f0
	int i1
	char * t2
	short s3
PREINIT:
	double (*func)( float, int, char *, short );
CODE:
	func   = INT2PTR(double(*)( float, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dfitf( c_func, f0, i1, t2, f3 )
	SV* c_func
	float f0
	int i1
	char * t2
	float f3
PREINIT:
	double (*func)( float, int, char *, float );
CODE:
	func   = INT2PTR(double(*)( float, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dfitt( c_func, f0, i1, t2, t3 )
	SV* c_func
	float f0
	int i1
	char * t2
	char * t3
PREINIT:
	double (*func)( float, int, char *, char * );
CODE:
	func   = INT2PTR(double(*)( float, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dfiti( c_func, f0, i1, t2, i3 )
	SV* c_func
	float f0
	int i1
	char * t2
	int i3
PREINIT:
	double (*func)( float, int, char *, int );
CODE:
	func   = INT2PTR(double(*)( float, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dfiid( c_func, f0, i1, i2, d3 )
	SV* c_func
	float f0
	int i1
	int i2
	double d3
PREINIT:
	double (*func)( float, int, int, double );
CODE:
	func   = INT2PTR(double(*)( float, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dfiis( c_func, f0, i1, i2, s3 )
	SV* c_func
	float f0
	int i1
	int i2
	short s3
PREINIT:
	double (*func)( float, int, int, short );
CODE:
	func   = INT2PTR(double(*)( float, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dfiif( c_func, f0, i1, i2, f3 )
	SV* c_func
	float f0
	int i1
	int i2
	float f3
PREINIT:
	double (*func)( float, int, int, float );
CODE:
	func   = INT2PTR(double(*)( float, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dfiit( c_func, f0, i1, i2, t3 )
	SV* c_func
	float f0
	int i1
	int i2
	char * t3
PREINIT:
	double (*func)( float, int, int, char * );
CODE:
	func   = INT2PTR(double(*)( float, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dfiii( c_func, f0, i1, i2, i3 )
	SV* c_func
	float f0
	int i1
	int i2
	int i3
PREINIT:
	double (*func)( float, int, int, int );
CODE:
	func   = INT2PTR(double(*)( float, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dtddd( c_func, t0, d1, d2, d3 )
	SV* c_func
	char * t0
	double d1
	double d2
	double d3
PREINIT:
	double (*func)( char *, double, double, double );
CODE:
	func   = INT2PTR(double(*)( char *, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dtdds( c_func, t0, d1, d2, s3 )
	SV* c_func
	char * t0
	double d1
	double d2
	short s3
PREINIT:
	double (*func)( char *, double, double, short );
CODE:
	func   = INT2PTR(double(*)( char *, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dtddf( c_func, t0, d1, d2, f3 )
	SV* c_func
	char * t0
	double d1
	double d2
	float f3
PREINIT:
	double (*func)( char *, double, double, float );
CODE:
	func   = INT2PTR(double(*)( char *, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dtddt( c_func, t0, d1, d2, t3 )
	SV* c_func
	char * t0
	double d1
	double d2
	char * t3
PREINIT:
	double (*func)( char *, double, double, char * );
CODE:
	func   = INT2PTR(double(*)( char *, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dtddi( c_func, t0, d1, d2, i3 )
	SV* c_func
	char * t0
	double d1
	double d2
	int i3
PREINIT:
	double (*func)( char *, double, double, int );
CODE:
	func   = INT2PTR(double(*)( char *, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dtdsd( c_func, t0, d1, s2, d3 )
	SV* c_func
	char * t0
	double d1
	short s2
	double d3
PREINIT:
	double (*func)( char *, double, short, double );
CODE:
	func   = INT2PTR(double(*)( char *, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dtdss( c_func, t0, d1, s2, s3 )
	SV* c_func
	char * t0
	double d1
	short s2
	short s3
PREINIT:
	double (*func)( char *, double, short, short );
CODE:
	func   = INT2PTR(double(*)( char *, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dtdsf( c_func, t0, d1, s2, f3 )
	SV* c_func
	char * t0
	double d1
	short s2
	float f3
PREINIT:
	double (*func)( char *, double, short, float );
CODE:
	func   = INT2PTR(double(*)( char *, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dtdst( c_func, t0, d1, s2, t3 )
	SV* c_func
	char * t0
	double d1
	short s2
	char * t3
PREINIT:
	double (*func)( char *, double, short, char * );
CODE:
	func   = INT2PTR(double(*)( char *, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dtdsi( c_func, t0, d1, s2, i3 )
	SV* c_func
	char * t0
	double d1
	short s2
	int i3
PREINIT:
	double (*func)( char *, double, short, int );
CODE:
	func   = INT2PTR(double(*)( char *, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dtdfd( c_func, t0, d1, f2, d3 )
	SV* c_func
	char * t0
	double d1
	float f2
	double d3
PREINIT:
	double (*func)( char *, double, float, double );
CODE:
	func   = INT2PTR(double(*)( char *, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dtdfs( c_func, t0, d1, f2, s3 )
	SV* c_func
	char * t0
	double d1
	float f2
	short s3
PREINIT:
	double (*func)( char *, double, float, short );
CODE:
	func   = INT2PTR(double(*)( char *, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dtdff( c_func, t0, d1, f2, f3 )
	SV* c_func
	char * t0
	double d1
	float f2
	float f3
PREINIT:
	double (*func)( char *, double, float, float );
CODE:
	func   = INT2PTR(double(*)( char *, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dtdft( c_func, t0, d1, f2, t3 )
	SV* c_func
	char * t0
	double d1
	float f2
	char * t3
PREINIT:
	double (*func)( char *, double, float, char * );
CODE:
	func   = INT2PTR(double(*)( char *, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dtdfi( c_func, t0, d1, f2, i3 )
	SV* c_func
	char * t0
	double d1
	float f2
	int i3
PREINIT:
	double (*func)( char *, double, float, int );
CODE:
	func   = INT2PTR(double(*)( char *, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dtdtd( c_func, t0, d1, t2, d3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	double d3
PREINIT:
	double (*func)( char *, double, char *, double );
CODE:
	func   = INT2PTR(double(*)( char *, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dtdts( c_func, t0, d1, t2, s3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	short s3
PREINIT:
	double (*func)( char *, double, char *, short );
CODE:
	func   = INT2PTR(double(*)( char *, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dtdtf( c_func, t0, d1, t2, f3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	float f3
PREINIT:
	double (*func)( char *, double, char *, float );
CODE:
	func   = INT2PTR(double(*)( char *, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dtdtt( c_func, t0, d1, t2, t3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	char * t3
PREINIT:
	double (*func)( char *, double, char *, char * );
CODE:
	func   = INT2PTR(double(*)( char *, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dtdti( c_func, t0, d1, t2, i3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	int i3
PREINIT:
	double (*func)( char *, double, char *, int );
CODE:
	func   = INT2PTR(double(*)( char *, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dtdid( c_func, t0, d1, i2, d3 )
	SV* c_func
	char * t0
	double d1
	int i2
	double d3
PREINIT:
	double (*func)( char *, double, int, double );
CODE:
	func   = INT2PTR(double(*)( char *, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dtdis( c_func, t0, d1, i2, s3 )
	SV* c_func
	char * t0
	double d1
	int i2
	short s3
PREINIT:
	double (*func)( char *, double, int, short );
CODE:
	func   = INT2PTR(double(*)( char *, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dtdif( c_func, t0, d1, i2, f3 )
	SV* c_func
	char * t0
	double d1
	int i2
	float f3
PREINIT:
	double (*func)( char *, double, int, float );
CODE:
	func   = INT2PTR(double(*)( char *, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dtdit( c_func, t0, d1, i2, t3 )
	SV* c_func
	char * t0
	double d1
	int i2
	char * t3
PREINIT:
	double (*func)( char *, double, int, char * );
CODE:
	func   = INT2PTR(double(*)( char *, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dtdii( c_func, t0, d1, i2, i3 )
	SV* c_func
	char * t0
	double d1
	int i2
	int i3
PREINIT:
	double (*func)( char *, double, int, int );
CODE:
	func   = INT2PTR(double(*)( char *, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dtsdd( c_func, t0, s1, d2, d3 )
	SV* c_func
	char * t0
	short s1
	double d2
	double d3
PREINIT:
	double (*func)( char *, short, double, double );
CODE:
	func   = INT2PTR(double(*)( char *, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dtsds( c_func, t0, s1, d2, s3 )
	SV* c_func
	char * t0
	short s1
	double d2
	short s3
PREINIT:
	double (*func)( char *, short, double, short );
CODE:
	func   = INT2PTR(double(*)( char *, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dtsdf( c_func, t0, s1, d2, f3 )
	SV* c_func
	char * t0
	short s1
	double d2
	float f3
PREINIT:
	double (*func)( char *, short, double, float );
CODE:
	func   = INT2PTR(double(*)( char *, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dtsdt( c_func, t0, s1, d2, t3 )
	SV* c_func
	char * t0
	short s1
	double d2
	char * t3
PREINIT:
	double (*func)( char *, short, double, char * );
CODE:
	func   = INT2PTR(double(*)( char *, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dtsdi( c_func, t0, s1, d2, i3 )
	SV* c_func
	char * t0
	short s1
	double d2
	int i3
PREINIT:
	double (*func)( char *, short, double, int );
CODE:
	func   = INT2PTR(double(*)( char *, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dtssd( c_func, t0, s1, s2, d3 )
	SV* c_func
	char * t0
	short s1
	short s2
	double d3
PREINIT:
	double (*func)( char *, short, short, double );
CODE:
	func   = INT2PTR(double(*)( char *, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dtsss( c_func, t0, s1, s2, s3 )
	SV* c_func
	char * t0
	short s1
	short s2
	short s3
PREINIT:
	double (*func)( char *, short, short, short );
CODE:
	func   = INT2PTR(double(*)( char *, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dtssf( c_func, t0, s1, s2, f3 )
	SV* c_func
	char * t0
	short s1
	short s2
	float f3
PREINIT:
	double (*func)( char *, short, short, float );
CODE:
	func   = INT2PTR(double(*)( char *, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dtsst( c_func, t0, s1, s2, t3 )
	SV* c_func
	char * t0
	short s1
	short s2
	char * t3
PREINIT:
	double (*func)( char *, short, short, char * );
CODE:
	func   = INT2PTR(double(*)( char *, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dtssi( c_func, t0, s1, s2, i3 )
	SV* c_func
	char * t0
	short s1
	short s2
	int i3
PREINIT:
	double (*func)( char *, short, short, int );
CODE:
	func   = INT2PTR(double(*)( char *, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dtsfd( c_func, t0, s1, f2, d3 )
	SV* c_func
	char * t0
	short s1
	float f2
	double d3
PREINIT:
	double (*func)( char *, short, float, double );
CODE:
	func   = INT2PTR(double(*)( char *, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dtsfs( c_func, t0, s1, f2, s3 )
	SV* c_func
	char * t0
	short s1
	float f2
	short s3
PREINIT:
	double (*func)( char *, short, float, short );
CODE:
	func   = INT2PTR(double(*)( char *, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dtsff( c_func, t0, s1, f2, f3 )
	SV* c_func
	char * t0
	short s1
	float f2
	float f3
PREINIT:
	double (*func)( char *, short, float, float );
CODE:
	func   = INT2PTR(double(*)( char *, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dtsft( c_func, t0, s1, f2, t3 )
	SV* c_func
	char * t0
	short s1
	float f2
	char * t3
PREINIT:
	double (*func)( char *, short, float, char * );
CODE:
	func   = INT2PTR(double(*)( char *, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dtsfi( c_func, t0, s1, f2, i3 )
	SV* c_func
	char * t0
	short s1
	float f2
	int i3
PREINIT:
	double (*func)( char *, short, float, int );
CODE:
	func   = INT2PTR(double(*)( char *, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dtstd( c_func, t0, s1, t2, d3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	double d3
PREINIT:
	double (*func)( char *, short, char *, double );
CODE:
	func   = INT2PTR(double(*)( char *, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dtsts( c_func, t0, s1, t2, s3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	short s3
PREINIT:
	double (*func)( char *, short, char *, short );
CODE:
	func   = INT2PTR(double(*)( char *, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dtstf( c_func, t0, s1, t2, f3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	float f3
PREINIT:
	double (*func)( char *, short, char *, float );
CODE:
	func   = INT2PTR(double(*)( char *, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dtstt( c_func, t0, s1, t2, t3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	char * t3
PREINIT:
	double (*func)( char *, short, char *, char * );
CODE:
	func   = INT2PTR(double(*)( char *, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dtsti( c_func, t0, s1, t2, i3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	int i3
PREINIT:
	double (*func)( char *, short, char *, int );
CODE:
	func   = INT2PTR(double(*)( char *, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dtsid( c_func, t0, s1, i2, d3 )
	SV* c_func
	char * t0
	short s1
	int i2
	double d3
PREINIT:
	double (*func)( char *, short, int, double );
CODE:
	func   = INT2PTR(double(*)( char *, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dtsis( c_func, t0, s1, i2, s3 )
	SV* c_func
	char * t0
	short s1
	int i2
	short s3
PREINIT:
	double (*func)( char *, short, int, short );
CODE:
	func   = INT2PTR(double(*)( char *, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dtsif( c_func, t0, s1, i2, f3 )
	SV* c_func
	char * t0
	short s1
	int i2
	float f3
PREINIT:
	double (*func)( char *, short, int, float );
CODE:
	func   = INT2PTR(double(*)( char *, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dtsit( c_func, t0, s1, i2, t3 )
	SV* c_func
	char * t0
	short s1
	int i2
	char * t3
PREINIT:
	double (*func)( char *, short, int, char * );
CODE:
	func   = INT2PTR(double(*)( char *, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dtsii( c_func, t0, s1, i2, i3 )
	SV* c_func
	char * t0
	short s1
	int i2
	int i3
PREINIT:
	double (*func)( char *, short, int, int );
CODE:
	func   = INT2PTR(double(*)( char *, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dtfdd( c_func, t0, f1, d2, d3 )
	SV* c_func
	char * t0
	float f1
	double d2
	double d3
PREINIT:
	double (*func)( char *, float, double, double );
CODE:
	func   = INT2PTR(double(*)( char *, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dtfds( c_func, t0, f1, d2, s3 )
	SV* c_func
	char * t0
	float f1
	double d2
	short s3
PREINIT:
	double (*func)( char *, float, double, short );
CODE:
	func   = INT2PTR(double(*)( char *, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dtfdf( c_func, t0, f1, d2, f3 )
	SV* c_func
	char * t0
	float f1
	double d2
	float f3
PREINIT:
	double (*func)( char *, float, double, float );
CODE:
	func   = INT2PTR(double(*)( char *, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dtfdt( c_func, t0, f1, d2, t3 )
	SV* c_func
	char * t0
	float f1
	double d2
	char * t3
PREINIT:
	double (*func)( char *, float, double, char * );
CODE:
	func   = INT2PTR(double(*)( char *, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dtfdi( c_func, t0, f1, d2, i3 )
	SV* c_func
	char * t0
	float f1
	double d2
	int i3
PREINIT:
	double (*func)( char *, float, double, int );
CODE:
	func   = INT2PTR(double(*)( char *, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dtfsd( c_func, t0, f1, s2, d3 )
	SV* c_func
	char * t0
	float f1
	short s2
	double d3
PREINIT:
	double (*func)( char *, float, short, double );
CODE:
	func   = INT2PTR(double(*)( char *, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dtfss( c_func, t0, f1, s2, s3 )
	SV* c_func
	char * t0
	float f1
	short s2
	short s3
PREINIT:
	double (*func)( char *, float, short, short );
CODE:
	func   = INT2PTR(double(*)( char *, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dtfsf( c_func, t0, f1, s2, f3 )
	SV* c_func
	char * t0
	float f1
	short s2
	float f3
PREINIT:
	double (*func)( char *, float, short, float );
CODE:
	func   = INT2PTR(double(*)( char *, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dtfst( c_func, t0, f1, s2, t3 )
	SV* c_func
	char * t0
	float f1
	short s2
	char * t3
PREINIT:
	double (*func)( char *, float, short, char * );
CODE:
	func   = INT2PTR(double(*)( char *, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dtfsi( c_func, t0, f1, s2, i3 )
	SV* c_func
	char * t0
	float f1
	short s2
	int i3
PREINIT:
	double (*func)( char *, float, short, int );
CODE:
	func   = INT2PTR(double(*)( char *, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dtffd( c_func, t0, f1, f2, d3 )
	SV* c_func
	char * t0
	float f1
	float f2
	double d3
PREINIT:
	double (*func)( char *, float, float, double );
CODE:
	func   = INT2PTR(double(*)( char *, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dtffs( c_func, t0, f1, f2, s3 )
	SV* c_func
	char * t0
	float f1
	float f2
	short s3
PREINIT:
	double (*func)( char *, float, float, short );
CODE:
	func   = INT2PTR(double(*)( char *, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dtfff( c_func, t0, f1, f2, f3 )
	SV* c_func
	char * t0
	float f1
	float f2
	float f3
PREINIT:
	double (*func)( char *, float, float, float );
CODE:
	func   = INT2PTR(double(*)( char *, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dtfft( c_func, t0, f1, f2, t3 )
	SV* c_func
	char * t0
	float f1
	float f2
	char * t3
PREINIT:
	double (*func)( char *, float, float, char * );
CODE:
	func   = INT2PTR(double(*)( char *, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dtffi( c_func, t0, f1, f2, i3 )
	SV* c_func
	char * t0
	float f1
	float f2
	int i3
PREINIT:
	double (*func)( char *, float, float, int );
CODE:
	func   = INT2PTR(double(*)( char *, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dtftd( c_func, t0, f1, t2, d3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	double d3
PREINIT:
	double (*func)( char *, float, char *, double );
CODE:
	func   = INT2PTR(double(*)( char *, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dtfts( c_func, t0, f1, t2, s3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	short s3
PREINIT:
	double (*func)( char *, float, char *, short );
CODE:
	func   = INT2PTR(double(*)( char *, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dtftf( c_func, t0, f1, t2, f3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	float f3
PREINIT:
	double (*func)( char *, float, char *, float );
CODE:
	func   = INT2PTR(double(*)( char *, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dtftt( c_func, t0, f1, t2, t3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	char * t3
PREINIT:
	double (*func)( char *, float, char *, char * );
CODE:
	func   = INT2PTR(double(*)( char *, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dtfti( c_func, t0, f1, t2, i3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	int i3
PREINIT:
	double (*func)( char *, float, char *, int );
CODE:
	func   = INT2PTR(double(*)( char *, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dtfid( c_func, t0, f1, i2, d3 )
	SV* c_func
	char * t0
	float f1
	int i2
	double d3
PREINIT:
	double (*func)( char *, float, int, double );
CODE:
	func   = INT2PTR(double(*)( char *, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dtfis( c_func, t0, f1, i2, s3 )
	SV* c_func
	char * t0
	float f1
	int i2
	short s3
PREINIT:
	double (*func)( char *, float, int, short );
CODE:
	func   = INT2PTR(double(*)( char *, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dtfif( c_func, t0, f1, i2, f3 )
	SV* c_func
	char * t0
	float f1
	int i2
	float f3
PREINIT:
	double (*func)( char *, float, int, float );
CODE:
	func   = INT2PTR(double(*)( char *, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dtfit( c_func, t0, f1, i2, t3 )
	SV* c_func
	char * t0
	float f1
	int i2
	char * t3
PREINIT:
	double (*func)( char *, float, int, char * );
CODE:
	func   = INT2PTR(double(*)( char *, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dtfii( c_func, t0, f1, i2, i3 )
	SV* c_func
	char * t0
	float f1
	int i2
	int i3
PREINIT:
	double (*func)( char *, float, int, int );
CODE:
	func   = INT2PTR(double(*)( char *, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dttdd( c_func, t0, t1, d2, d3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	double d3
PREINIT:
	double (*func)( char *, char *, double, double );
CODE:
	func   = INT2PTR(double(*)( char *, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dttds( c_func, t0, t1, d2, s3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	short s3
PREINIT:
	double (*func)( char *, char *, double, short );
CODE:
	func   = INT2PTR(double(*)( char *, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dttdf( c_func, t0, t1, d2, f3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	float f3
PREINIT:
	double (*func)( char *, char *, double, float );
CODE:
	func   = INT2PTR(double(*)( char *, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dttdt( c_func, t0, t1, d2, t3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	char * t3
PREINIT:
	double (*func)( char *, char *, double, char * );
CODE:
	func   = INT2PTR(double(*)( char *, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dttdi( c_func, t0, t1, d2, i3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	int i3
PREINIT:
	double (*func)( char *, char *, double, int );
CODE:
	func   = INT2PTR(double(*)( char *, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dttsd( c_func, t0, t1, s2, d3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	double d3
PREINIT:
	double (*func)( char *, char *, short, double );
CODE:
	func   = INT2PTR(double(*)( char *, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dttss( c_func, t0, t1, s2, s3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	short s3
PREINIT:
	double (*func)( char *, char *, short, short );
CODE:
	func   = INT2PTR(double(*)( char *, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dttsf( c_func, t0, t1, s2, f3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	float f3
PREINIT:
	double (*func)( char *, char *, short, float );
CODE:
	func   = INT2PTR(double(*)( char *, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dttst( c_func, t0, t1, s2, t3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	char * t3
PREINIT:
	double (*func)( char *, char *, short, char * );
CODE:
	func   = INT2PTR(double(*)( char *, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dttsi( c_func, t0, t1, s2, i3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	int i3
PREINIT:
	double (*func)( char *, char *, short, int );
CODE:
	func   = INT2PTR(double(*)( char *, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dttfd( c_func, t0, t1, f2, d3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	double d3
PREINIT:
	double (*func)( char *, char *, float, double );
CODE:
	func   = INT2PTR(double(*)( char *, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dttfs( c_func, t0, t1, f2, s3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	short s3
PREINIT:
	double (*func)( char *, char *, float, short );
CODE:
	func   = INT2PTR(double(*)( char *, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dttff( c_func, t0, t1, f2, f3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	float f3
PREINIT:
	double (*func)( char *, char *, float, float );
CODE:
	func   = INT2PTR(double(*)( char *, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dttft( c_func, t0, t1, f2, t3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	char * t3
PREINIT:
	double (*func)( char *, char *, float, char * );
CODE:
	func   = INT2PTR(double(*)( char *, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dttfi( c_func, t0, t1, f2, i3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	int i3
PREINIT:
	double (*func)( char *, char *, float, int );
CODE:
	func   = INT2PTR(double(*)( char *, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dtttd( c_func, t0, t1, t2, d3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	double d3
PREINIT:
	double (*func)( char *, char *, char *, double );
CODE:
	func   = INT2PTR(double(*)( char *, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dttts( c_func, t0, t1, t2, s3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	short s3
PREINIT:
	double (*func)( char *, char *, char *, short );
CODE:
	func   = INT2PTR(double(*)( char *, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dtttf( c_func, t0, t1, t2, f3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	float f3
PREINIT:
	double (*func)( char *, char *, char *, float );
CODE:
	func   = INT2PTR(double(*)( char *, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dtttt( c_func, t0, t1, t2, t3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	char * t3
PREINIT:
	double (*func)( char *, char *, char *, char * );
CODE:
	func   = INT2PTR(double(*)( char *, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dttti( c_func, t0, t1, t2, i3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	int i3
PREINIT:
	double (*func)( char *, char *, char *, int );
CODE:
	func   = INT2PTR(double(*)( char *, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dttid( c_func, t0, t1, i2, d3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	double d3
PREINIT:
	double (*func)( char *, char *, int, double );
CODE:
	func   = INT2PTR(double(*)( char *, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dttis( c_func, t0, t1, i2, s3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	short s3
PREINIT:
	double (*func)( char *, char *, int, short );
CODE:
	func   = INT2PTR(double(*)( char *, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dttif( c_func, t0, t1, i2, f3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	float f3
PREINIT:
	double (*func)( char *, char *, int, float );
CODE:
	func   = INT2PTR(double(*)( char *, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dttit( c_func, t0, t1, i2, t3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	char * t3
PREINIT:
	double (*func)( char *, char *, int, char * );
CODE:
	func   = INT2PTR(double(*)( char *, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dttii( c_func, t0, t1, i2, i3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	int i3
PREINIT:
	double (*func)( char *, char *, int, int );
CODE:
	func   = INT2PTR(double(*)( char *, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_dtidd( c_func, t0, i1, d2, d3 )
	SV* c_func
	char * t0
	int i1
	double d2
	double d3
PREINIT:
	double (*func)( char *, int, double, double );
CODE:
	func   = INT2PTR(double(*)( char *, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_dtids( c_func, t0, i1, d2, s3 )
	SV* c_func
	char * t0
	int i1
	double d2
	short s3
PREINIT:
	double (*func)( char *, int, double, short );
CODE:
	func   = INT2PTR(double(*)( char *, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_dtidf( c_func, t0, i1, d2, f3 )
	SV* c_func
	char * t0
	int i1
	double d2
	float f3
PREINIT:
	double (*func)( char *, int, double, float );
CODE:
	func   = INT2PTR(double(*)( char *, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_dtidt( c_func, t0, i1, d2, t3 )
	SV* c_func
	char * t0
	int i1
	double d2
	char * t3
PREINIT:
	double (*func)( char *, int, double, char * );
CODE:
	func   = INT2PTR(double(*)( char *, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_dtidi( c_func, t0, i1, d2, i3 )
	SV* c_func
	char * t0
	int i1
	double d2
	int i3
PREINIT:
	double (*func)( char *, int, double, int );
CODE:
	func   = INT2PTR(double(*)( char *, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dtisd( c_func, t0, i1, s2, d3 )
	SV* c_func
	char * t0
	int i1
	short s2
	double d3
PREINIT:
	double (*func)( char *, int, short, double );
CODE:
	func   = INT2PTR(double(*)( char *, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_dtiss( c_func, t0, i1, s2, s3 )
	SV* c_func
	char * t0
	int i1
	short s2
	short s3
PREINIT:
	double (*func)( char *, int, short, short );
CODE:
	func   = INT2PTR(double(*)( char *, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dtisf( c_func, t0, i1, s2, f3 )
	SV* c_func
	char * t0
	int i1
	short s2
	float f3
PREINIT:
	double (*func)( char *, int, short, float );
CODE:
	func   = INT2PTR(double(*)( char *, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_dtist( c_func, t0, i1, s2, t3 )
	SV* c_func
	char * t0
	int i1
	short s2
	char * t3
PREINIT:
	double (*func)( char *, int, short, char * );
CODE:
	func   = INT2PTR(double(*)( char *, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dtisi( c_func, t0, i1, s2, i3 )
	SV* c_func
	char * t0
	int i1
	short s2
	int i3
PREINIT:
	double (*func)( char *, int, short, int );
CODE:
	func   = INT2PTR(double(*)( char *, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_dtifd( c_func, t0, i1, f2, d3 )
	SV* c_func
	char * t0
	int i1
	float f2
	double d3
PREINIT:
	double (*func)( char *, int, float, double );
CODE:
	func   = INT2PTR(double(*)( char *, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_dtifs( c_func, t0, i1, f2, s3 )
	SV* c_func
	char * t0
	int i1
	float f2
	short s3
PREINIT:
	double (*func)( char *, int, float, short );
CODE:
	func   = INT2PTR(double(*)( char *, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_dtiff( c_func, t0, i1, f2, f3 )
	SV* c_func
	char * t0
	int i1
	float f2
	float f3
PREINIT:
	double (*func)( char *, int, float, float );
CODE:
	func   = INT2PTR(double(*)( char *, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_dtift( c_func, t0, i1, f2, t3 )
	SV* c_func
	char * t0
	int i1
	float f2
	char * t3
PREINIT:
	double (*func)( char *, int, float, char * );
CODE:
	func   = INT2PTR(double(*)( char *, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_dtifi( c_func, t0, i1, f2, i3 )
	SV* c_func
	char * t0
	int i1
	float f2
	int i3
PREINIT:
	double (*func)( char *, int, float, int );
CODE:
	func   = INT2PTR(double(*)( char *, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dtitd( c_func, t0, i1, t2, d3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	double d3
PREINIT:
	double (*func)( char *, int, char *, double );
CODE:
	func   = INT2PTR(double(*)( char *, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dtits( c_func, t0, i1, t2, s3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	short s3
PREINIT:
	double (*func)( char *, int, char *, short );
CODE:
	func   = INT2PTR(double(*)( char *, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dtitf( c_func, t0, i1, t2, f3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	float f3
PREINIT:
	double (*func)( char *, int, char *, float );
CODE:
	func   = INT2PTR(double(*)( char *, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dtitt( c_func, t0, i1, t2, t3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	char * t3
PREINIT:
	double (*func)( char *, int, char *, char * );
CODE:
	func   = INT2PTR(double(*)( char *, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_dtiti( c_func, t0, i1, t2, i3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	int i3
PREINIT:
	double (*func)( char *, int, char *, int );
CODE:
	func   = INT2PTR(double(*)( char *, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_dtiid( c_func, t0, i1, i2, d3 )
	SV* c_func
	char * t0
	int i1
	int i2
	double d3
PREINIT:
	double (*func)( char *, int, int, double );
CODE:
	func   = INT2PTR(double(*)( char *, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_dtiis( c_func, t0, i1, i2, s3 )
	SV* c_func
	char * t0
	int i1
	int i2
	short s3
PREINIT:
	double (*func)( char *, int, int, short );
CODE:
	func   = INT2PTR(double(*)( char *, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_dtiif( c_func, t0, i1, i2, f3 )
	SV* c_func
	char * t0
	int i1
	int i2
	float f3
PREINIT:
	double (*func)( char *, int, int, float );
CODE:
	func   = INT2PTR(double(*)( char *, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_dtiit( c_func, t0, i1, i2, t3 )
	SV* c_func
	char * t0
	int i1
	int i2
	char * t3
PREINIT:
	double (*func)( char *, int, int, char * );
CODE:
	func   = INT2PTR(double(*)( char *, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_dtiii( c_func, t0, i1, i2, i3 )
	SV* c_func
	char * t0
	int i1
	int i2
	int i3
PREINIT:
	double (*func)( char *, int, int, int );
CODE:
	func   = INT2PTR(double(*)( char *, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_diddd( c_func, i0, d1, d2, d3 )
	SV* c_func
	int i0
	double d1
	double d2
	double d3
PREINIT:
	double (*func)( int, double, double, double );
CODE:
	func   = INT2PTR(double(*)( int, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_didds( c_func, i0, d1, d2, s3 )
	SV* c_func
	int i0
	double d1
	double d2
	short s3
PREINIT:
	double (*func)( int, double, double, short );
CODE:
	func   = INT2PTR(double(*)( int, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_diddf( c_func, i0, d1, d2, f3 )
	SV* c_func
	int i0
	double d1
	double d2
	float f3
PREINIT:
	double (*func)( int, double, double, float );
CODE:
	func   = INT2PTR(double(*)( int, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_diddt( c_func, i0, d1, d2, t3 )
	SV* c_func
	int i0
	double d1
	double d2
	char * t3
PREINIT:
	double (*func)( int, double, double, char * );
CODE:
	func   = INT2PTR(double(*)( int, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_diddi( c_func, i0, d1, d2, i3 )
	SV* c_func
	int i0
	double d1
	double d2
	int i3
PREINIT:
	double (*func)( int, double, double, int );
CODE:
	func   = INT2PTR(double(*)( int, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_didsd( c_func, i0, d1, s2, d3 )
	SV* c_func
	int i0
	double d1
	short s2
	double d3
PREINIT:
	double (*func)( int, double, short, double );
CODE:
	func   = INT2PTR(double(*)( int, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_didss( c_func, i0, d1, s2, s3 )
	SV* c_func
	int i0
	double d1
	short s2
	short s3
PREINIT:
	double (*func)( int, double, short, short );
CODE:
	func   = INT2PTR(double(*)( int, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_didsf( c_func, i0, d1, s2, f3 )
	SV* c_func
	int i0
	double d1
	short s2
	float f3
PREINIT:
	double (*func)( int, double, short, float );
CODE:
	func   = INT2PTR(double(*)( int, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_didst( c_func, i0, d1, s2, t3 )
	SV* c_func
	int i0
	double d1
	short s2
	char * t3
PREINIT:
	double (*func)( int, double, short, char * );
CODE:
	func   = INT2PTR(double(*)( int, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_didsi( c_func, i0, d1, s2, i3 )
	SV* c_func
	int i0
	double d1
	short s2
	int i3
PREINIT:
	double (*func)( int, double, short, int );
CODE:
	func   = INT2PTR(double(*)( int, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_didfd( c_func, i0, d1, f2, d3 )
	SV* c_func
	int i0
	double d1
	float f2
	double d3
PREINIT:
	double (*func)( int, double, float, double );
CODE:
	func   = INT2PTR(double(*)( int, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_didfs( c_func, i0, d1, f2, s3 )
	SV* c_func
	int i0
	double d1
	float f2
	short s3
PREINIT:
	double (*func)( int, double, float, short );
CODE:
	func   = INT2PTR(double(*)( int, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_didff( c_func, i0, d1, f2, f3 )
	SV* c_func
	int i0
	double d1
	float f2
	float f3
PREINIT:
	double (*func)( int, double, float, float );
CODE:
	func   = INT2PTR(double(*)( int, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_didft( c_func, i0, d1, f2, t3 )
	SV* c_func
	int i0
	double d1
	float f2
	char * t3
PREINIT:
	double (*func)( int, double, float, char * );
CODE:
	func   = INT2PTR(double(*)( int, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_didfi( c_func, i0, d1, f2, i3 )
	SV* c_func
	int i0
	double d1
	float f2
	int i3
PREINIT:
	double (*func)( int, double, float, int );
CODE:
	func   = INT2PTR(double(*)( int, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_didtd( c_func, i0, d1, t2, d3 )
	SV* c_func
	int i0
	double d1
	char * t2
	double d3
PREINIT:
	double (*func)( int, double, char *, double );
CODE:
	func   = INT2PTR(double(*)( int, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_didts( c_func, i0, d1, t2, s3 )
	SV* c_func
	int i0
	double d1
	char * t2
	short s3
PREINIT:
	double (*func)( int, double, char *, short );
CODE:
	func   = INT2PTR(double(*)( int, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_didtf( c_func, i0, d1, t2, f3 )
	SV* c_func
	int i0
	double d1
	char * t2
	float f3
PREINIT:
	double (*func)( int, double, char *, float );
CODE:
	func   = INT2PTR(double(*)( int, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_didtt( c_func, i0, d1, t2, t3 )
	SV* c_func
	int i0
	double d1
	char * t2
	char * t3
PREINIT:
	double (*func)( int, double, char *, char * );
CODE:
	func   = INT2PTR(double(*)( int, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_didti( c_func, i0, d1, t2, i3 )
	SV* c_func
	int i0
	double d1
	char * t2
	int i3
PREINIT:
	double (*func)( int, double, char *, int );
CODE:
	func   = INT2PTR(double(*)( int, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_didid( c_func, i0, d1, i2, d3 )
	SV* c_func
	int i0
	double d1
	int i2
	double d3
PREINIT:
	double (*func)( int, double, int, double );
CODE:
	func   = INT2PTR(double(*)( int, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_didis( c_func, i0, d1, i2, s3 )
	SV* c_func
	int i0
	double d1
	int i2
	short s3
PREINIT:
	double (*func)( int, double, int, short );
CODE:
	func   = INT2PTR(double(*)( int, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_didif( c_func, i0, d1, i2, f3 )
	SV* c_func
	int i0
	double d1
	int i2
	float f3
PREINIT:
	double (*func)( int, double, int, float );
CODE:
	func   = INT2PTR(double(*)( int, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_didit( c_func, i0, d1, i2, t3 )
	SV* c_func
	int i0
	double d1
	int i2
	char * t3
PREINIT:
	double (*func)( int, double, int, char * );
CODE:
	func   = INT2PTR(double(*)( int, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_didii( c_func, i0, d1, i2, i3 )
	SV* c_func
	int i0
	double d1
	int i2
	int i3
PREINIT:
	double (*func)( int, double, int, int );
CODE:
	func   = INT2PTR(double(*)( int, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_disdd( c_func, i0, s1, d2, d3 )
	SV* c_func
	int i0
	short s1
	double d2
	double d3
PREINIT:
	double (*func)( int, short, double, double );
CODE:
	func   = INT2PTR(double(*)( int, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_disds( c_func, i0, s1, d2, s3 )
	SV* c_func
	int i0
	short s1
	double d2
	short s3
PREINIT:
	double (*func)( int, short, double, short );
CODE:
	func   = INT2PTR(double(*)( int, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_disdf( c_func, i0, s1, d2, f3 )
	SV* c_func
	int i0
	short s1
	double d2
	float f3
PREINIT:
	double (*func)( int, short, double, float );
CODE:
	func   = INT2PTR(double(*)( int, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_disdt( c_func, i0, s1, d2, t3 )
	SV* c_func
	int i0
	short s1
	double d2
	char * t3
PREINIT:
	double (*func)( int, short, double, char * );
CODE:
	func   = INT2PTR(double(*)( int, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_disdi( c_func, i0, s1, d2, i3 )
	SV* c_func
	int i0
	short s1
	double d2
	int i3
PREINIT:
	double (*func)( int, short, double, int );
CODE:
	func   = INT2PTR(double(*)( int, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_dissd( c_func, i0, s1, s2, d3 )
	SV* c_func
	int i0
	short s1
	short s2
	double d3
PREINIT:
	double (*func)( int, short, short, double );
CODE:
	func   = INT2PTR(double(*)( int, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_disss( c_func, i0, s1, s2, s3 )
	SV* c_func
	int i0
	short s1
	short s2
	short s3
PREINIT:
	double (*func)( int, short, short, short );
CODE:
	func   = INT2PTR(double(*)( int, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_dissf( c_func, i0, s1, s2, f3 )
	SV* c_func
	int i0
	short s1
	short s2
	float f3
PREINIT:
	double (*func)( int, short, short, float );
CODE:
	func   = INT2PTR(double(*)( int, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_disst( c_func, i0, s1, s2, t3 )
	SV* c_func
	int i0
	short s1
	short s2
	char * t3
PREINIT:
	double (*func)( int, short, short, char * );
CODE:
	func   = INT2PTR(double(*)( int, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_dissi( c_func, i0, s1, s2, i3 )
	SV* c_func
	int i0
	short s1
	short s2
	int i3
PREINIT:
	double (*func)( int, short, short, int );
CODE:
	func   = INT2PTR(double(*)( int, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_disfd( c_func, i0, s1, f2, d3 )
	SV* c_func
	int i0
	short s1
	float f2
	double d3
PREINIT:
	double (*func)( int, short, float, double );
CODE:
	func   = INT2PTR(double(*)( int, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_disfs( c_func, i0, s1, f2, s3 )
	SV* c_func
	int i0
	short s1
	float f2
	short s3
PREINIT:
	double (*func)( int, short, float, short );
CODE:
	func   = INT2PTR(double(*)( int, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_disff( c_func, i0, s1, f2, f3 )
	SV* c_func
	int i0
	short s1
	float f2
	float f3
PREINIT:
	double (*func)( int, short, float, float );
CODE:
	func   = INT2PTR(double(*)( int, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_disft( c_func, i0, s1, f2, t3 )
	SV* c_func
	int i0
	short s1
	float f2
	char * t3
PREINIT:
	double (*func)( int, short, float, char * );
CODE:
	func   = INT2PTR(double(*)( int, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_disfi( c_func, i0, s1, f2, i3 )
	SV* c_func
	int i0
	short s1
	float f2
	int i3
PREINIT:
	double (*func)( int, short, float, int );
CODE:
	func   = INT2PTR(double(*)( int, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_distd( c_func, i0, s1, t2, d3 )
	SV* c_func
	int i0
	short s1
	char * t2
	double d3
PREINIT:
	double (*func)( int, short, char *, double );
CODE:
	func   = INT2PTR(double(*)( int, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_dists( c_func, i0, s1, t2, s3 )
	SV* c_func
	int i0
	short s1
	char * t2
	short s3
PREINIT:
	double (*func)( int, short, char *, short );
CODE:
	func   = INT2PTR(double(*)( int, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_distf( c_func, i0, s1, t2, f3 )
	SV* c_func
	int i0
	short s1
	char * t2
	float f3
PREINIT:
	double (*func)( int, short, char *, float );
CODE:
	func   = INT2PTR(double(*)( int, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_distt( c_func, i0, s1, t2, t3 )
	SV* c_func
	int i0
	short s1
	char * t2
	char * t3
PREINIT:
	double (*func)( int, short, char *, char * );
CODE:
	func   = INT2PTR(double(*)( int, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_disti( c_func, i0, s1, t2, i3 )
	SV* c_func
	int i0
	short s1
	char * t2
	int i3
PREINIT:
	double (*func)( int, short, char *, int );
CODE:
	func   = INT2PTR(double(*)( int, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_disid( c_func, i0, s1, i2, d3 )
	SV* c_func
	int i0
	short s1
	int i2
	double d3
PREINIT:
	double (*func)( int, short, int, double );
CODE:
	func   = INT2PTR(double(*)( int, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_disis( c_func, i0, s1, i2, s3 )
	SV* c_func
	int i0
	short s1
	int i2
	short s3
PREINIT:
	double (*func)( int, short, int, short );
CODE:
	func   = INT2PTR(double(*)( int, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_disif( c_func, i0, s1, i2, f3 )
	SV* c_func
	int i0
	short s1
	int i2
	float f3
PREINIT:
	double (*func)( int, short, int, float );
CODE:
	func   = INT2PTR(double(*)( int, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_disit( c_func, i0, s1, i2, t3 )
	SV* c_func
	int i0
	short s1
	int i2
	char * t3
PREINIT:
	double (*func)( int, short, int, char * );
CODE:
	func   = INT2PTR(double(*)( int, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_disii( c_func, i0, s1, i2, i3 )
	SV* c_func
	int i0
	short s1
	int i2
	int i3
PREINIT:
	double (*func)( int, short, int, int );
CODE:
	func   = INT2PTR(double(*)( int, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_difdd( c_func, i0, f1, d2, d3 )
	SV* c_func
	int i0
	float f1
	double d2
	double d3
PREINIT:
	double (*func)( int, float, double, double );
CODE:
	func   = INT2PTR(double(*)( int, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_difds( c_func, i0, f1, d2, s3 )
	SV* c_func
	int i0
	float f1
	double d2
	short s3
PREINIT:
	double (*func)( int, float, double, short );
CODE:
	func   = INT2PTR(double(*)( int, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_difdf( c_func, i0, f1, d2, f3 )
	SV* c_func
	int i0
	float f1
	double d2
	float f3
PREINIT:
	double (*func)( int, float, double, float );
CODE:
	func   = INT2PTR(double(*)( int, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_difdt( c_func, i0, f1, d2, t3 )
	SV* c_func
	int i0
	float f1
	double d2
	char * t3
PREINIT:
	double (*func)( int, float, double, char * );
CODE:
	func   = INT2PTR(double(*)( int, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_difdi( c_func, i0, f1, d2, i3 )
	SV* c_func
	int i0
	float f1
	double d2
	int i3
PREINIT:
	double (*func)( int, float, double, int );
CODE:
	func   = INT2PTR(double(*)( int, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_difsd( c_func, i0, f1, s2, d3 )
	SV* c_func
	int i0
	float f1
	short s2
	double d3
PREINIT:
	double (*func)( int, float, short, double );
CODE:
	func   = INT2PTR(double(*)( int, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_difss( c_func, i0, f1, s2, s3 )
	SV* c_func
	int i0
	float f1
	short s2
	short s3
PREINIT:
	double (*func)( int, float, short, short );
CODE:
	func   = INT2PTR(double(*)( int, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_difsf( c_func, i0, f1, s2, f3 )
	SV* c_func
	int i0
	float f1
	short s2
	float f3
PREINIT:
	double (*func)( int, float, short, float );
CODE:
	func   = INT2PTR(double(*)( int, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_difst( c_func, i0, f1, s2, t3 )
	SV* c_func
	int i0
	float f1
	short s2
	char * t3
PREINIT:
	double (*func)( int, float, short, char * );
CODE:
	func   = INT2PTR(double(*)( int, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_difsi( c_func, i0, f1, s2, i3 )
	SV* c_func
	int i0
	float f1
	short s2
	int i3
PREINIT:
	double (*func)( int, float, short, int );
CODE:
	func   = INT2PTR(double(*)( int, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_diffd( c_func, i0, f1, f2, d3 )
	SV* c_func
	int i0
	float f1
	float f2
	double d3
PREINIT:
	double (*func)( int, float, float, double );
CODE:
	func   = INT2PTR(double(*)( int, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_diffs( c_func, i0, f1, f2, s3 )
	SV* c_func
	int i0
	float f1
	float f2
	short s3
PREINIT:
	double (*func)( int, float, float, short );
CODE:
	func   = INT2PTR(double(*)( int, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_difff( c_func, i0, f1, f2, f3 )
	SV* c_func
	int i0
	float f1
	float f2
	float f3
PREINIT:
	double (*func)( int, float, float, float );
CODE:
	func   = INT2PTR(double(*)( int, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_difft( c_func, i0, f1, f2, t3 )
	SV* c_func
	int i0
	float f1
	float f2
	char * t3
PREINIT:
	double (*func)( int, float, float, char * );
CODE:
	func   = INT2PTR(double(*)( int, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_diffi( c_func, i0, f1, f2, i3 )
	SV* c_func
	int i0
	float f1
	float f2
	int i3
PREINIT:
	double (*func)( int, float, float, int );
CODE:
	func   = INT2PTR(double(*)( int, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_diftd( c_func, i0, f1, t2, d3 )
	SV* c_func
	int i0
	float f1
	char * t2
	double d3
PREINIT:
	double (*func)( int, float, char *, double );
CODE:
	func   = INT2PTR(double(*)( int, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_difts( c_func, i0, f1, t2, s3 )
	SV* c_func
	int i0
	float f1
	char * t2
	short s3
PREINIT:
	double (*func)( int, float, char *, short );
CODE:
	func   = INT2PTR(double(*)( int, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_diftf( c_func, i0, f1, t2, f3 )
	SV* c_func
	int i0
	float f1
	char * t2
	float f3
PREINIT:
	double (*func)( int, float, char *, float );
CODE:
	func   = INT2PTR(double(*)( int, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_diftt( c_func, i0, f1, t2, t3 )
	SV* c_func
	int i0
	float f1
	char * t2
	char * t3
PREINIT:
	double (*func)( int, float, char *, char * );
CODE:
	func   = INT2PTR(double(*)( int, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_difti( c_func, i0, f1, t2, i3 )
	SV* c_func
	int i0
	float f1
	char * t2
	int i3
PREINIT:
	double (*func)( int, float, char *, int );
CODE:
	func   = INT2PTR(double(*)( int, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_difid( c_func, i0, f1, i2, d3 )
	SV* c_func
	int i0
	float f1
	int i2
	double d3
PREINIT:
	double (*func)( int, float, int, double );
CODE:
	func   = INT2PTR(double(*)( int, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_difis( c_func, i0, f1, i2, s3 )
	SV* c_func
	int i0
	float f1
	int i2
	short s3
PREINIT:
	double (*func)( int, float, int, short );
CODE:
	func   = INT2PTR(double(*)( int, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_difif( c_func, i0, f1, i2, f3 )
	SV* c_func
	int i0
	float f1
	int i2
	float f3
PREINIT:
	double (*func)( int, float, int, float );
CODE:
	func   = INT2PTR(double(*)( int, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_difit( c_func, i0, f1, i2, t3 )
	SV* c_func
	int i0
	float f1
	int i2
	char * t3
PREINIT:
	double (*func)( int, float, int, char * );
CODE:
	func   = INT2PTR(double(*)( int, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_difii( c_func, i0, f1, i2, i3 )
	SV* c_func
	int i0
	float f1
	int i2
	int i3
PREINIT:
	double (*func)( int, float, int, int );
CODE:
	func   = INT2PTR(double(*)( int, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_ditdd( c_func, i0, t1, d2, d3 )
	SV* c_func
	int i0
	char * t1
	double d2
	double d3
PREINIT:
	double (*func)( int, char *, double, double );
CODE:
	func   = INT2PTR(double(*)( int, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_ditds( c_func, i0, t1, d2, s3 )
	SV* c_func
	int i0
	char * t1
	double d2
	short s3
PREINIT:
	double (*func)( int, char *, double, short );
CODE:
	func   = INT2PTR(double(*)( int, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_ditdf( c_func, i0, t1, d2, f3 )
	SV* c_func
	int i0
	char * t1
	double d2
	float f3
PREINIT:
	double (*func)( int, char *, double, float );
CODE:
	func   = INT2PTR(double(*)( int, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_ditdt( c_func, i0, t1, d2, t3 )
	SV* c_func
	int i0
	char * t1
	double d2
	char * t3
PREINIT:
	double (*func)( int, char *, double, char * );
CODE:
	func   = INT2PTR(double(*)( int, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_ditdi( c_func, i0, t1, d2, i3 )
	SV* c_func
	int i0
	char * t1
	double d2
	int i3
PREINIT:
	double (*func)( int, char *, double, int );
CODE:
	func   = INT2PTR(double(*)( int, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_ditsd( c_func, i0, t1, s2, d3 )
	SV* c_func
	int i0
	char * t1
	short s2
	double d3
PREINIT:
	double (*func)( int, char *, short, double );
CODE:
	func   = INT2PTR(double(*)( int, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_ditss( c_func, i0, t1, s2, s3 )
	SV* c_func
	int i0
	char * t1
	short s2
	short s3
PREINIT:
	double (*func)( int, char *, short, short );
CODE:
	func   = INT2PTR(double(*)( int, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_ditsf( c_func, i0, t1, s2, f3 )
	SV* c_func
	int i0
	char * t1
	short s2
	float f3
PREINIT:
	double (*func)( int, char *, short, float );
CODE:
	func   = INT2PTR(double(*)( int, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_ditst( c_func, i0, t1, s2, t3 )
	SV* c_func
	int i0
	char * t1
	short s2
	char * t3
PREINIT:
	double (*func)( int, char *, short, char * );
CODE:
	func   = INT2PTR(double(*)( int, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_ditsi( c_func, i0, t1, s2, i3 )
	SV* c_func
	int i0
	char * t1
	short s2
	int i3
PREINIT:
	double (*func)( int, char *, short, int );
CODE:
	func   = INT2PTR(double(*)( int, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_ditfd( c_func, i0, t1, f2, d3 )
	SV* c_func
	int i0
	char * t1
	float f2
	double d3
PREINIT:
	double (*func)( int, char *, float, double );
CODE:
	func   = INT2PTR(double(*)( int, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_ditfs( c_func, i0, t1, f2, s3 )
	SV* c_func
	int i0
	char * t1
	float f2
	short s3
PREINIT:
	double (*func)( int, char *, float, short );
CODE:
	func   = INT2PTR(double(*)( int, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_ditff( c_func, i0, t1, f2, f3 )
	SV* c_func
	int i0
	char * t1
	float f2
	float f3
PREINIT:
	double (*func)( int, char *, float, float );
CODE:
	func   = INT2PTR(double(*)( int, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_ditft( c_func, i0, t1, f2, t3 )
	SV* c_func
	int i0
	char * t1
	float f2
	char * t3
PREINIT:
	double (*func)( int, char *, float, char * );
CODE:
	func   = INT2PTR(double(*)( int, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_ditfi( c_func, i0, t1, f2, i3 )
	SV* c_func
	int i0
	char * t1
	float f2
	int i3
PREINIT:
	double (*func)( int, char *, float, int );
CODE:
	func   = INT2PTR(double(*)( int, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_dittd( c_func, i0, t1, t2, d3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	double d3
PREINIT:
	double (*func)( int, char *, char *, double );
CODE:
	func   = INT2PTR(double(*)( int, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_ditts( c_func, i0, t1, t2, s3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	short s3
PREINIT:
	double (*func)( int, char *, char *, short );
CODE:
	func   = INT2PTR(double(*)( int, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_dittf( c_func, i0, t1, t2, f3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	float f3
PREINIT:
	double (*func)( int, char *, char *, float );
CODE:
	func   = INT2PTR(double(*)( int, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_dittt( c_func, i0, t1, t2, t3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	char * t3
PREINIT:
	double (*func)( int, char *, char *, char * );
CODE:
	func   = INT2PTR(double(*)( int, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_ditti( c_func, i0, t1, t2, i3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	int i3
PREINIT:
	double (*func)( int, char *, char *, int );
CODE:
	func   = INT2PTR(double(*)( int, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_ditid( c_func, i0, t1, i2, d3 )
	SV* c_func
	int i0
	char * t1
	int i2
	double d3
PREINIT:
	double (*func)( int, char *, int, double );
CODE:
	func   = INT2PTR(double(*)( int, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_ditis( c_func, i0, t1, i2, s3 )
	SV* c_func
	int i0
	char * t1
	int i2
	short s3
PREINIT:
	double (*func)( int, char *, int, short );
CODE:
	func   = INT2PTR(double(*)( int, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_ditif( c_func, i0, t1, i2, f3 )
	SV* c_func
	int i0
	char * t1
	int i2
	float f3
PREINIT:
	double (*func)( int, char *, int, float );
CODE:
	func   = INT2PTR(double(*)( int, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_ditit( c_func, i0, t1, i2, t3 )
	SV* c_func
	int i0
	char * t1
	int i2
	char * t3
PREINIT:
	double (*func)( int, char *, int, char * );
CODE:
	func   = INT2PTR(double(*)( int, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_ditii( c_func, i0, t1, i2, i3 )
	SV* c_func
	int i0
	char * t1
	int i2
	int i3
PREINIT:
	double (*func)( int, char *, int, int );
CODE:
	func   = INT2PTR(double(*)( int, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, i3 );
OUTPUT:
	RETVAL

double
nci_diidd( c_func, i0, i1, d2, d3 )
	SV* c_func
	int i0
	int i1
	double d2
	double d3
PREINIT:
	double (*func)( int, int, double, double );
CODE:
	func   = INT2PTR(double(*)( int, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, d3 );
OUTPUT:
	RETVAL

double
nci_diids( c_func, i0, i1, d2, s3 )
	SV* c_func
	int i0
	int i1
	double d2
	short s3
PREINIT:
	double (*func)( int, int, double, short );
CODE:
	func   = INT2PTR(double(*)( int, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, s3 );
OUTPUT:
	RETVAL

double
nci_diidf( c_func, i0, i1, d2, f3 )
	SV* c_func
	int i0
	int i1
	double d2
	float f3
PREINIT:
	double (*func)( int, int, double, float );
CODE:
	func   = INT2PTR(double(*)( int, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, f3 );
OUTPUT:
	RETVAL

double
nci_diidt( c_func, i0, i1, d2, t3 )
	SV* c_func
	int i0
	int i1
	double d2
	char * t3
PREINIT:
	double (*func)( int, int, double, char * );
CODE:
	func   = INT2PTR(double(*)( int, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, t3 );
OUTPUT:
	RETVAL

double
nci_diidi( c_func, i0, i1, d2, i3 )
	SV* c_func
	int i0
	int i1
	double d2
	int i3
PREINIT:
	double (*func)( int, int, double, int );
CODE:
	func   = INT2PTR(double(*)( int, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, i3 );
OUTPUT:
	RETVAL

double
nci_diisd( c_func, i0, i1, s2, d3 )
	SV* c_func
	int i0
	int i1
	short s2
	double d3
PREINIT:
	double (*func)( int, int, short, double );
CODE:
	func   = INT2PTR(double(*)( int, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, d3 );
OUTPUT:
	RETVAL

double
nci_diiss( c_func, i0, i1, s2, s3 )
	SV* c_func
	int i0
	int i1
	short s2
	short s3
PREINIT:
	double (*func)( int, int, short, short );
CODE:
	func   = INT2PTR(double(*)( int, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, s3 );
OUTPUT:
	RETVAL

double
nci_diisf( c_func, i0, i1, s2, f3 )
	SV* c_func
	int i0
	int i1
	short s2
	float f3
PREINIT:
	double (*func)( int, int, short, float );
CODE:
	func   = INT2PTR(double(*)( int, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, f3 );
OUTPUT:
	RETVAL

double
nci_diist( c_func, i0, i1, s2, t3 )
	SV* c_func
	int i0
	int i1
	short s2
	char * t3
PREINIT:
	double (*func)( int, int, short, char * );
CODE:
	func   = INT2PTR(double(*)( int, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, t3 );
OUTPUT:
	RETVAL

double
nci_diisi( c_func, i0, i1, s2, i3 )
	SV* c_func
	int i0
	int i1
	short s2
	int i3
PREINIT:
	double (*func)( int, int, short, int );
CODE:
	func   = INT2PTR(double(*)( int, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, i3 );
OUTPUT:
	RETVAL

double
nci_diifd( c_func, i0, i1, f2, d3 )
	SV* c_func
	int i0
	int i1
	float f2
	double d3
PREINIT:
	double (*func)( int, int, float, double );
CODE:
	func   = INT2PTR(double(*)( int, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, d3 );
OUTPUT:
	RETVAL

double
nci_diifs( c_func, i0, i1, f2, s3 )
	SV* c_func
	int i0
	int i1
	float f2
	short s3
PREINIT:
	double (*func)( int, int, float, short );
CODE:
	func   = INT2PTR(double(*)( int, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, s3 );
OUTPUT:
	RETVAL

double
nci_diiff( c_func, i0, i1, f2, f3 )
	SV* c_func
	int i0
	int i1
	float f2
	float f3
PREINIT:
	double (*func)( int, int, float, float );
CODE:
	func   = INT2PTR(double(*)( int, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, f3 );
OUTPUT:
	RETVAL

double
nci_diift( c_func, i0, i1, f2, t3 )
	SV* c_func
	int i0
	int i1
	float f2
	char * t3
PREINIT:
	double (*func)( int, int, float, char * );
CODE:
	func   = INT2PTR(double(*)( int, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, t3 );
OUTPUT:
	RETVAL

double
nci_diifi( c_func, i0, i1, f2, i3 )
	SV* c_func
	int i0
	int i1
	float f2
	int i3
PREINIT:
	double (*func)( int, int, float, int );
CODE:
	func   = INT2PTR(double(*)( int, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, i3 );
OUTPUT:
	RETVAL

double
nci_diitd( c_func, i0, i1, t2, d3 )
	SV* c_func
	int i0
	int i1
	char * t2
	double d3
PREINIT:
	double (*func)( int, int, char *, double );
CODE:
	func   = INT2PTR(double(*)( int, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, d3 );
OUTPUT:
	RETVAL

double
nci_diits( c_func, i0, i1, t2, s3 )
	SV* c_func
	int i0
	int i1
	char * t2
	short s3
PREINIT:
	double (*func)( int, int, char *, short );
CODE:
	func   = INT2PTR(double(*)( int, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, s3 );
OUTPUT:
	RETVAL

double
nci_diitf( c_func, i0, i1, t2, f3 )
	SV* c_func
	int i0
	int i1
	char * t2
	float f3
PREINIT:
	double (*func)( int, int, char *, float );
CODE:
	func   = INT2PTR(double(*)( int, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, f3 );
OUTPUT:
	RETVAL

double
nci_diitt( c_func, i0, i1, t2, t3 )
	SV* c_func
	int i0
	int i1
	char * t2
	char * t3
PREINIT:
	double (*func)( int, int, char *, char * );
CODE:
	func   = INT2PTR(double(*)( int, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, t3 );
OUTPUT:
	RETVAL

double
nci_diiti( c_func, i0, i1, t2, i3 )
	SV* c_func
	int i0
	int i1
	char * t2
	int i3
PREINIT:
	double (*func)( int, int, char *, int );
CODE:
	func   = INT2PTR(double(*)( int, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, i3 );
OUTPUT:
	RETVAL

double
nci_diiid( c_func, i0, i1, i2, d3 )
	SV* c_func
	int i0
	int i1
	int i2
	double d3
PREINIT:
	double (*func)( int, int, int, double );
CODE:
	func   = INT2PTR(double(*)( int, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, d3 );
OUTPUT:
	RETVAL

double
nci_diiis( c_func, i0, i1, i2, s3 )
	SV* c_func
	int i0
	int i1
	int i2
	short s3
PREINIT:
	double (*func)( int, int, int, short );
CODE:
	func   = INT2PTR(double(*)( int, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, s3 );
OUTPUT:
	RETVAL

double
nci_diiif( c_func, i0, i1, i2, f3 )
	SV* c_func
	int i0
	int i1
	int i2
	float f3
PREINIT:
	double (*func)( int, int, int, float );
CODE:
	func   = INT2PTR(double(*)( int, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, f3 );
OUTPUT:
	RETVAL

double
nci_diiit( c_func, i0, i1, i2, t3 )
	SV* c_func
	int i0
	int i1
	int i2
	char * t3
PREINIT:
	double (*func)( int, int, int, char * );
CODE:
	func   = INT2PTR(double(*)( int, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, t3 );
OUTPUT:
	RETVAL

double
nci_diiii( c_func, i0, i1, i2, i3 )
	SV* c_func
	int i0
	int i1
	int i2
	int i3
PREINIT:
	double (*func)( int, int, int, int );
CODE:
	func   = INT2PTR(double(*)( int, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sdddd( c_func, d0, d1, d2, d3 )
	SV* c_func
	double d0
	double d1
	double d2
	double d3
PREINIT:
	short (*func)( double, double, double, double );
CODE:
	func   = INT2PTR(short(*)( double, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sddds( c_func, d0, d1, d2, s3 )
	SV* c_func
	double d0
	double d1
	double d2
	short s3
PREINIT:
	short (*func)( double, double, double, short );
CODE:
	func   = INT2PTR(short(*)( double, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sdddf( c_func, d0, d1, d2, f3 )
	SV* c_func
	double d0
	double d1
	double d2
	float f3
PREINIT:
	short (*func)( double, double, double, float );
CODE:
	func   = INT2PTR(short(*)( double, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sdddt( c_func, d0, d1, d2, t3 )
	SV* c_func
	double d0
	double d1
	double d2
	char * t3
PREINIT:
	short (*func)( double, double, double, char * );
CODE:
	func   = INT2PTR(short(*)( double, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sdddi( c_func, d0, d1, d2, i3 )
	SV* c_func
	double d0
	double d1
	double d2
	int i3
PREINIT:
	short (*func)( double, double, double, int );
CODE:
	func   = INT2PTR(short(*)( double, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sddsd( c_func, d0, d1, s2, d3 )
	SV* c_func
	double d0
	double d1
	short s2
	double d3
PREINIT:
	short (*func)( double, double, short, double );
CODE:
	func   = INT2PTR(short(*)( double, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sddss( c_func, d0, d1, s2, s3 )
	SV* c_func
	double d0
	double d1
	short s2
	short s3
PREINIT:
	short (*func)( double, double, short, short );
CODE:
	func   = INT2PTR(short(*)( double, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sddsf( c_func, d0, d1, s2, f3 )
	SV* c_func
	double d0
	double d1
	short s2
	float f3
PREINIT:
	short (*func)( double, double, short, float );
CODE:
	func   = INT2PTR(short(*)( double, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sddst( c_func, d0, d1, s2, t3 )
	SV* c_func
	double d0
	double d1
	short s2
	char * t3
PREINIT:
	short (*func)( double, double, short, char * );
CODE:
	func   = INT2PTR(short(*)( double, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sddsi( c_func, d0, d1, s2, i3 )
	SV* c_func
	double d0
	double d1
	short s2
	int i3
PREINIT:
	short (*func)( double, double, short, int );
CODE:
	func   = INT2PTR(short(*)( double, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sddfd( c_func, d0, d1, f2, d3 )
	SV* c_func
	double d0
	double d1
	float f2
	double d3
PREINIT:
	short (*func)( double, double, float, double );
CODE:
	func   = INT2PTR(short(*)( double, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sddfs( c_func, d0, d1, f2, s3 )
	SV* c_func
	double d0
	double d1
	float f2
	short s3
PREINIT:
	short (*func)( double, double, float, short );
CODE:
	func   = INT2PTR(short(*)( double, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sddff( c_func, d0, d1, f2, f3 )
	SV* c_func
	double d0
	double d1
	float f2
	float f3
PREINIT:
	short (*func)( double, double, float, float );
CODE:
	func   = INT2PTR(short(*)( double, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sddft( c_func, d0, d1, f2, t3 )
	SV* c_func
	double d0
	double d1
	float f2
	char * t3
PREINIT:
	short (*func)( double, double, float, char * );
CODE:
	func   = INT2PTR(short(*)( double, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sddfi( c_func, d0, d1, f2, i3 )
	SV* c_func
	double d0
	double d1
	float f2
	int i3
PREINIT:
	short (*func)( double, double, float, int );
CODE:
	func   = INT2PTR(short(*)( double, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sddtd( c_func, d0, d1, t2, d3 )
	SV* c_func
	double d0
	double d1
	char * t2
	double d3
PREINIT:
	short (*func)( double, double, char *, double );
CODE:
	func   = INT2PTR(short(*)( double, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sddts( c_func, d0, d1, t2, s3 )
	SV* c_func
	double d0
	double d1
	char * t2
	short s3
PREINIT:
	short (*func)( double, double, char *, short );
CODE:
	func   = INT2PTR(short(*)( double, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sddtf( c_func, d0, d1, t2, f3 )
	SV* c_func
	double d0
	double d1
	char * t2
	float f3
PREINIT:
	short (*func)( double, double, char *, float );
CODE:
	func   = INT2PTR(short(*)( double, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sddtt( c_func, d0, d1, t2, t3 )
	SV* c_func
	double d0
	double d1
	char * t2
	char * t3
PREINIT:
	short (*func)( double, double, char *, char * );
CODE:
	func   = INT2PTR(short(*)( double, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sddti( c_func, d0, d1, t2, i3 )
	SV* c_func
	double d0
	double d1
	char * t2
	int i3
PREINIT:
	short (*func)( double, double, char *, int );
CODE:
	func   = INT2PTR(short(*)( double, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sddid( c_func, d0, d1, i2, d3 )
	SV* c_func
	double d0
	double d1
	int i2
	double d3
PREINIT:
	short (*func)( double, double, int, double );
CODE:
	func   = INT2PTR(short(*)( double, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sddis( c_func, d0, d1, i2, s3 )
	SV* c_func
	double d0
	double d1
	int i2
	short s3
PREINIT:
	short (*func)( double, double, int, short );
CODE:
	func   = INT2PTR(short(*)( double, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sddif( c_func, d0, d1, i2, f3 )
	SV* c_func
	double d0
	double d1
	int i2
	float f3
PREINIT:
	short (*func)( double, double, int, float );
CODE:
	func   = INT2PTR(short(*)( double, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sddit( c_func, d0, d1, i2, t3 )
	SV* c_func
	double d0
	double d1
	int i2
	char * t3
PREINIT:
	short (*func)( double, double, int, char * );
CODE:
	func   = INT2PTR(short(*)( double, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sddii( c_func, d0, d1, i2, i3 )
	SV* c_func
	double d0
	double d1
	int i2
	int i3
PREINIT:
	short (*func)( double, double, int, int );
CODE:
	func   = INT2PTR(short(*)( double, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sdsdd( c_func, d0, s1, d2, d3 )
	SV* c_func
	double d0
	short s1
	double d2
	double d3
PREINIT:
	short (*func)( double, short, double, double );
CODE:
	func   = INT2PTR(short(*)( double, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sdsds( c_func, d0, s1, d2, s3 )
	SV* c_func
	double d0
	short s1
	double d2
	short s3
PREINIT:
	short (*func)( double, short, double, short );
CODE:
	func   = INT2PTR(short(*)( double, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sdsdf( c_func, d0, s1, d2, f3 )
	SV* c_func
	double d0
	short s1
	double d2
	float f3
PREINIT:
	short (*func)( double, short, double, float );
CODE:
	func   = INT2PTR(short(*)( double, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sdsdt( c_func, d0, s1, d2, t3 )
	SV* c_func
	double d0
	short s1
	double d2
	char * t3
PREINIT:
	short (*func)( double, short, double, char * );
CODE:
	func   = INT2PTR(short(*)( double, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sdsdi( c_func, d0, s1, d2, i3 )
	SV* c_func
	double d0
	short s1
	double d2
	int i3
PREINIT:
	short (*func)( double, short, double, int );
CODE:
	func   = INT2PTR(short(*)( double, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sdssd( c_func, d0, s1, s2, d3 )
	SV* c_func
	double d0
	short s1
	short s2
	double d3
PREINIT:
	short (*func)( double, short, short, double );
CODE:
	func   = INT2PTR(short(*)( double, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sdsss( c_func, d0, s1, s2, s3 )
	SV* c_func
	double d0
	short s1
	short s2
	short s3
PREINIT:
	short (*func)( double, short, short, short );
CODE:
	func   = INT2PTR(short(*)( double, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sdssf( c_func, d0, s1, s2, f3 )
	SV* c_func
	double d0
	short s1
	short s2
	float f3
PREINIT:
	short (*func)( double, short, short, float );
CODE:
	func   = INT2PTR(short(*)( double, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sdsst( c_func, d0, s1, s2, t3 )
	SV* c_func
	double d0
	short s1
	short s2
	char * t3
PREINIT:
	short (*func)( double, short, short, char * );
CODE:
	func   = INT2PTR(short(*)( double, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sdssi( c_func, d0, s1, s2, i3 )
	SV* c_func
	double d0
	short s1
	short s2
	int i3
PREINIT:
	short (*func)( double, short, short, int );
CODE:
	func   = INT2PTR(short(*)( double, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sdsfd( c_func, d0, s1, f2, d3 )
	SV* c_func
	double d0
	short s1
	float f2
	double d3
PREINIT:
	short (*func)( double, short, float, double );
CODE:
	func   = INT2PTR(short(*)( double, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sdsfs( c_func, d0, s1, f2, s3 )
	SV* c_func
	double d0
	short s1
	float f2
	short s3
PREINIT:
	short (*func)( double, short, float, short );
CODE:
	func   = INT2PTR(short(*)( double, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sdsff( c_func, d0, s1, f2, f3 )
	SV* c_func
	double d0
	short s1
	float f2
	float f3
PREINIT:
	short (*func)( double, short, float, float );
CODE:
	func   = INT2PTR(short(*)( double, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sdsft( c_func, d0, s1, f2, t3 )
	SV* c_func
	double d0
	short s1
	float f2
	char * t3
PREINIT:
	short (*func)( double, short, float, char * );
CODE:
	func   = INT2PTR(short(*)( double, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sdsfi( c_func, d0, s1, f2, i3 )
	SV* c_func
	double d0
	short s1
	float f2
	int i3
PREINIT:
	short (*func)( double, short, float, int );
CODE:
	func   = INT2PTR(short(*)( double, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sdstd( c_func, d0, s1, t2, d3 )
	SV* c_func
	double d0
	short s1
	char * t2
	double d3
PREINIT:
	short (*func)( double, short, char *, double );
CODE:
	func   = INT2PTR(short(*)( double, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sdsts( c_func, d0, s1, t2, s3 )
	SV* c_func
	double d0
	short s1
	char * t2
	short s3
PREINIT:
	short (*func)( double, short, char *, short );
CODE:
	func   = INT2PTR(short(*)( double, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sdstf( c_func, d0, s1, t2, f3 )
	SV* c_func
	double d0
	short s1
	char * t2
	float f3
PREINIT:
	short (*func)( double, short, char *, float );
CODE:
	func   = INT2PTR(short(*)( double, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sdstt( c_func, d0, s1, t2, t3 )
	SV* c_func
	double d0
	short s1
	char * t2
	char * t3
PREINIT:
	short (*func)( double, short, char *, char * );
CODE:
	func   = INT2PTR(short(*)( double, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sdsti( c_func, d0, s1, t2, i3 )
	SV* c_func
	double d0
	short s1
	char * t2
	int i3
PREINIT:
	short (*func)( double, short, char *, int );
CODE:
	func   = INT2PTR(short(*)( double, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sdsid( c_func, d0, s1, i2, d3 )
	SV* c_func
	double d0
	short s1
	int i2
	double d3
PREINIT:
	short (*func)( double, short, int, double );
CODE:
	func   = INT2PTR(short(*)( double, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sdsis( c_func, d0, s1, i2, s3 )
	SV* c_func
	double d0
	short s1
	int i2
	short s3
PREINIT:
	short (*func)( double, short, int, short );
CODE:
	func   = INT2PTR(short(*)( double, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sdsif( c_func, d0, s1, i2, f3 )
	SV* c_func
	double d0
	short s1
	int i2
	float f3
PREINIT:
	short (*func)( double, short, int, float );
CODE:
	func   = INT2PTR(short(*)( double, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sdsit( c_func, d0, s1, i2, t3 )
	SV* c_func
	double d0
	short s1
	int i2
	char * t3
PREINIT:
	short (*func)( double, short, int, char * );
CODE:
	func   = INT2PTR(short(*)( double, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sdsii( c_func, d0, s1, i2, i3 )
	SV* c_func
	double d0
	short s1
	int i2
	int i3
PREINIT:
	short (*func)( double, short, int, int );
CODE:
	func   = INT2PTR(short(*)( double, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sdfdd( c_func, d0, f1, d2, d3 )
	SV* c_func
	double d0
	float f1
	double d2
	double d3
PREINIT:
	short (*func)( double, float, double, double );
CODE:
	func   = INT2PTR(short(*)( double, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sdfds( c_func, d0, f1, d2, s3 )
	SV* c_func
	double d0
	float f1
	double d2
	short s3
PREINIT:
	short (*func)( double, float, double, short );
CODE:
	func   = INT2PTR(short(*)( double, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sdfdf( c_func, d0, f1, d2, f3 )
	SV* c_func
	double d0
	float f1
	double d2
	float f3
PREINIT:
	short (*func)( double, float, double, float );
CODE:
	func   = INT2PTR(short(*)( double, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sdfdt( c_func, d0, f1, d2, t3 )
	SV* c_func
	double d0
	float f1
	double d2
	char * t3
PREINIT:
	short (*func)( double, float, double, char * );
CODE:
	func   = INT2PTR(short(*)( double, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sdfdi( c_func, d0, f1, d2, i3 )
	SV* c_func
	double d0
	float f1
	double d2
	int i3
PREINIT:
	short (*func)( double, float, double, int );
CODE:
	func   = INT2PTR(short(*)( double, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sdfsd( c_func, d0, f1, s2, d3 )
	SV* c_func
	double d0
	float f1
	short s2
	double d3
PREINIT:
	short (*func)( double, float, short, double );
CODE:
	func   = INT2PTR(short(*)( double, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sdfss( c_func, d0, f1, s2, s3 )
	SV* c_func
	double d0
	float f1
	short s2
	short s3
PREINIT:
	short (*func)( double, float, short, short );
CODE:
	func   = INT2PTR(short(*)( double, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sdfsf( c_func, d0, f1, s2, f3 )
	SV* c_func
	double d0
	float f1
	short s2
	float f3
PREINIT:
	short (*func)( double, float, short, float );
CODE:
	func   = INT2PTR(short(*)( double, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sdfst( c_func, d0, f1, s2, t3 )
	SV* c_func
	double d0
	float f1
	short s2
	char * t3
PREINIT:
	short (*func)( double, float, short, char * );
CODE:
	func   = INT2PTR(short(*)( double, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sdfsi( c_func, d0, f1, s2, i3 )
	SV* c_func
	double d0
	float f1
	short s2
	int i3
PREINIT:
	short (*func)( double, float, short, int );
CODE:
	func   = INT2PTR(short(*)( double, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sdffd( c_func, d0, f1, f2, d3 )
	SV* c_func
	double d0
	float f1
	float f2
	double d3
PREINIT:
	short (*func)( double, float, float, double );
CODE:
	func   = INT2PTR(short(*)( double, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sdffs( c_func, d0, f1, f2, s3 )
	SV* c_func
	double d0
	float f1
	float f2
	short s3
PREINIT:
	short (*func)( double, float, float, short );
CODE:
	func   = INT2PTR(short(*)( double, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sdfff( c_func, d0, f1, f2, f3 )
	SV* c_func
	double d0
	float f1
	float f2
	float f3
PREINIT:
	short (*func)( double, float, float, float );
CODE:
	func   = INT2PTR(short(*)( double, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sdfft( c_func, d0, f1, f2, t3 )
	SV* c_func
	double d0
	float f1
	float f2
	char * t3
PREINIT:
	short (*func)( double, float, float, char * );
CODE:
	func   = INT2PTR(short(*)( double, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sdffi( c_func, d0, f1, f2, i3 )
	SV* c_func
	double d0
	float f1
	float f2
	int i3
PREINIT:
	short (*func)( double, float, float, int );
CODE:
	func   = INT2PTR(short(*)( double, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sdftd( c_func, d0, f1, t2, d3 )
	SV* c_func
	double d0
	float f1
	char * t2
	double d3
PREINIT:
	short (*func)( double, float, char *, double );
CODE:
	func   = INT2PTR(short(*)( double, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sdfts( c_func, d0, f1, t2, s3 )
	SV* c_func
	double d0
	float f1
	char * t2
	short s3
PREINIT:
	short (*func)( double, float, char *, short );
CODE:
	func   = INT2PTR(short(*)( double, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sdftf( c_func, d0, f1, t2, f3 )
	SV* c_func
	double d0
	float f1
	char * t2
	float f3
PREINIT:
	short (*func)( double, float, char *, float );
CODE:
	func   = INT2PTR(short(*)( double, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sdftt( c_func, d0, f1, t2, t3 )
	SV* c_func
	double d0
	float f1
	char * t2
	char * t3
PREINIT:
	short (*func)( double, float, char *, char * );
CODE:
	func   = INT2PTR(short(*)( double, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sdfti( c_func, d0, f1, t2, i3 )
	SV* c_func
	double d0
	float f1
	char * t2
	int i3
PREINIT:
	short (*func)( double, float, char *, int );
CODE:
	func   = INT2PTR(short(*)( double, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sdfid( c_func, d0, f1, i2, d3 )
	SV* c_func
	double d0
	float f1
	int i2
	double d3
PREINIT:
	short (*func)( double, float, int, double );
CODE:
	func   = INT2PTR(short(*)( double, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sdfis( c_func, d0, f1, i2, s3 )
	SV* c_func
	double d0
	float f1
	int i2
	short s3
PREINIT:
	short (*func)( double, float, int, short );
CODE:
	func   = INT2PTR(short(*)( double, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sdfif( c_func, d0, f1, i2, f3 )
	SV* c_func
	double d0
	float f1
	int i2
	float f3
PREINIT:
	short (*func)( double, float, int, float );
CODE:
	func   = INT2PTR(short(*)( double, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sdfit( c_func, d0, f1, i2, t3 )
	SV* c_func
	double d0
	float f1
	int i2
	char * t3
PREINIT:
	short (*func)( double, float, int, char * );
CODE:
	func   = INT2PTR(short(*)( double, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sdfii( c_func, d0, f1, i2, i3 )
	SV* c_func
	double d0
	float f1
	int i2
	int i3
PREINIT:
	short (*func)( double, float, int, int );
CODE:
	func   = INT2PTR(short(*)( double, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sdtdd( c_func, d0, t1, d2, d3 )
	SV* c_func
	double d0
	char * t1
	double d2
	double d3
PREINIT:
	short (*func)( double, char *, double, double );
CODE:
	func   = INT2PTR(short(*)( double, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sdtds( c_func, d0, t1, d2, s3 )
	SV* c_func
	double d0
	char * t1
	double d2
	short s3
PREINIT:
	short (*func)( double, char *, double, short );
CODE:
	func   = INT2PTR(short(*)( double, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sdtdf( c_func, d0, t1, d2, f3 )
	SV* c_func
	double d0
	char * t1
	double d2
	float f3
PREINIT:
	short (*func)( double, char *, double, float );
CODE:
	func   = INT2PTR(short(*)( double, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sdtdt( c_func, d0, t1, d2, t3 )
	SV* c_func
	double d0
	char * t1
	double d2
	char * t3
PREINIT:
	short (*func)( double, char *, double, char * );
CODE:
	func   = INT2PTR(short(*)( double, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sdtdi( c_func, d0, t1, d2, i3 )
	SV* c_func
	double d0
	char * t1
	double d2
	int i3
PREINIT:
	short (*func)( double, char *, double, int );
CODE:
	func   = INT2PTR(short(*)( double, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sdtsd( c_func, d0, t1, s2, d3 )
	SV* c_func
	double d0
	char * t1
	short s2
	double d3
PREINIT:
	short (*func)( double, char *, short, double );
CODE:
	func   = INT2PTR(short(*)( double, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sdtss( c_func, d0, t1, s2, s3 )
	SV* c_func
	double d0
	char * t1
	short s2
	short s3
PREINIT:
	short (*func)( double, char *, short, short );
CODE:
	func   = INT2PTR(short(*)( double, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sdtsf( c_func, d0, t1, s2, f3 )
	SV* c_func
	double d0
	char * t1
	short s2
	float f3
PREINIT:
	short (*func)( double, char *, short, float );
CODE:
	func   = INT2PTR(short(*)( double, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sdtst( c_func, d0, t1, s2, t3 )
	SV* c_func
	double d0
	char * t1
	short s2
	char * t3
PREINIT:
	short (*func)( double, char *, short, char * );
CODE:
	func   = INT2PTR(short(*)( double, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sdtsi( c_func, d0, t1, s2, i3 )
	SV* c_func
	double d0
	char * t1
	short s2
	int i3
PREINIT:
	short (*func)( double, char *, short, int );
CODE:
	func   = INT2PTR(short(*)( double, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sdtfd( c_func, d0, t1, f2, d3 )
	SV* c_func
	double d0
	char * t1
	float f2
	double d3
PREINIT:
	short (*func)( double, char *, float, double );
CODE:
	func   = INT2PTR(short(*)( double, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sdtfs( c_func, d0, t1, f2, s3 )
	SV* c_func
	double d0
	char * t1
	float f2
	short s3
PREINIT:
	short (*func)( double, char *, float, short );
CODE:
	func   = INT2PTR(short(*)( double, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sdtff( c_func, d0, t1, f2, f3 )
	SV* c_func
	double d0
	char * t1
	float f2
	float f3
PREINIT:
	short (*func)( double, char *, float, float );
CODE:
	func   = INT2PTR(short(*)( double, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sdtft( c_func, d0, t1, f2, t3 )
	SV* c_func
	double d0
	char * t1
	float f2
	char * t3
PREINIT:
	short (*func)( double, char *, float, char * );
CODE:
	func   = INT2PTR(short(*)( double, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sdtfi( c_func, d0, t1, f2, i3 )
	SV* c_func
	double d0
	char * t1
	float f2
	int i3
PREINIT:
	short (*func)( double, char *, float, int );
CODE:
	func   = INT2PTR(short(*)( double, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sdttd( c_func, d0, t1, t2, d3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	double d3
PREINIT:
	short (*func)( double, char *, char *, double );
CODE:
	func   = INT2PTR(short(*)( double, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sdtts( c_func, d0, t1, t2, s3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	short s3
PREINIT:
	short (*func)( double, char *, char *, short );
CODE:
	func   = INT2PTR(short(*)( double, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sdttf( c_func, d0, t1, t2, f3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	float f3
PREINIT:
	short (*func)( double, char *, char *, float );
CODE:
	func   = INT2PTR(short(*)( double, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sdttt( c_func, d0, t1, t2, t3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	char * t3
PREINIT:
	short (*func)( double, char *, char *, char * );
CODE:
	func   = INT2PTR(short(*)( double, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sdtti( c_func, d0, t1, t2, i3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	int i3
PREINIT:
	short (*func)( double, char *, char *, int );
CODE:
	func   = INT2PTR(short(*)( double, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sdtid( c_func, d0, t1, i2, d3 )
	SV* c_func
	double d0
	char * t1
	int i2
	double d3
PREINIT:
	short (*func)( double, char *, int, double );
CODE:
	func   = INT2PTR(short(*)( double, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sdtis( c_func, d0, t1, i2, s3 )
	SV* c_func
	double d0
	char * t1
	int i2
	short s3
PREINIT:
	short (*func)( double, char *, int, short );
CODE:
	func   = INT2PTR(short(*)( double, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sdtif( c_func, d0, t1, i2, f3 )
	SV* c_func
	double d0
	char * t1
	int i2
	float f3
PREINIT:
	short (*func)( double, char *, int, float );
CODE:
	func   = INT2PTR(short(*)( double, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sdtit( c_func, d0, t1, i2, t3 )
	SV* c_func
	double d0
	char * t1
	int i2
	char * t3
PREINIT:
	short (*func)( double, char *, int, char * );
CODE:
	func   = INT2PTR(short(*)( double, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sdtii( c_func, d0, t1, i2, i3 )
	SV* c_func
	double d0
	char * t1
	int i2
	int i3
PREINIT:
	short (*func)( double, char *, int, int );
CODE:
	func   = INT2PTR(short(*)( double, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sdidd( c_func, d0, i1, d2, d3 )
	SV* c_func
	double d0
	int i1
	double d2
	double d3
PREINIT:
	short (*func)( double, int, double, double );
CODE:
	func   = INT2PTR(short(*)( double, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sdids( c_func, d0, i1, d2, s3 )
	SV* c_func
	double d0
	int i1
	double d2
	short s3
PREINIT:
	short (*func)( double, int, double, short );
CODE:
	func   = INT2PTR(short(*)( double, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sdidf( c_func, d0, i1, d2, f3 )
	SV* c_func
	double d0
	int i1
	double d2
	float f3
PREINIT:
	short (*func)( double, int, double, float );
CODE:
	func   = INT2PTR(short(*)( double, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sdidt( c_func, d0, i1, d2, t3 )
	SV* c_func
	double d0
	int i1
	double d2
	char * t3
PREINIT:
	short (*func)( double, int, double, char * );
CODE:
	func   = INT2PTR(short(*)( double, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sdidi( c_func, d0, i1, d2, i3 )
	SV* c_func
	double d0
	int i1
	double d2
	int i3
PREINIT:
	short (*func)( double, int, double, int );
CODE:
	func   = INT2PTR(short(*)( double, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sdisd( c_func, d0, i1, s2, d3 )
	SV* c_func
	double d0
	int i1
	short s2
	double d3
PREINIT:
	short (*func)( double, int, short, double );
CODE:
	func   = INT2PTR(short(*)( double, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sdiss( c_func, d0, i1, s2, s3 )
	SV* c_func
	double d0
	int i1
	short s2
	short s3
PREINIT:
	short (*func)( double, int, short, short );
CODE:
	func   = INT2PTR(short(*)( double, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sdisf( c_func, d0, i1, s2, f3 )
	SV* c_func
	double d0
	int i1
	short s2
	float f3
PREINIT:
	short (*func)( double, int, short, float );
CODE:
	func   = INT2PTR(short(*)( double, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sdist( c_func, d0, i1, s2, t3 )
	SV* c_func
	double d0
	int i1
	short s2
	char * t3
PREINIT:
	short (*func)( double, int, short, char * );
CODE:
	func   = INT2PTR(short(*)( double, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sdisi( c_func, d0, i1, s2, i3 )
	SV* c_func
	double d0
	int i1
	short s2
	int i3
PREINIT:
	short (*func)( double, int, short, int );
CODE:
	func   = INT2PTR(short(*)( double, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sdifd( c_func, d0, i1, f2, d3 )
	SV* c_func
	double d0
	int i1
	float f2
	double d3
PREINIT:
	short (*func)( double, int, float, double );
CODE:
	func   = INT2PTR(short(*)( double, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sdifs( c_func, d0, i1, f2, s3 )
	SV* c_func
	double d0
	int i1
	float f2
	short s3
PREINIT:
	short (*func)( double, int, float, short );
CODE:
	func   = INT2PTR(short(*)( double, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sdiff( c_func, d0, i1, f2, f3 )
	SV* c_func
	double d0
	int i1
	float f2
	float f3
PREINIT:
	short (*func)( double, int, float, float );
CODE:
	func   = INT2PTR(short(*)( double, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sdift( c_func, d0, i1, f2, t3 )
	SV* c_func
	double d0
	int i1
	float f2
	char * t3
PREINIT:
	short (*func)( double, int, float, char * );
CODE:
	func   = INT2PTR(short(*)( double, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sdifi( c_func, d0, i1, f2, i3 )
	SV* c_func
	double d0
	int i1
	float f2
	int i3
PREINIT:
	short (*func)( double, int, float, int );
CODE:
	func   = INT2PTR(short(*)( double, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sditd( c_func, d0, i1, t2, d3 )
	SV* c_func
	double d0
	int i1
	char * t2
	double d3
PREINIT:
	short (*func)( double, int, char *, double );
CODE:
	func   = INT2PTR(short(*)( double, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sdits( c_func, d0, i1, t2, s3 )
	SV* c_func
	double d0
	int i1
	char * t2
	short s3
PREINIT:
	short (*func)( double, int, char *, short );
CODE:
	func   = INT2PTR(short(*)( double, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sditf( c_func, d0, i1, t2, f3 )
	SV* c_func
	double d0
	int i1
	char * t2
	float f3
PREINIT:
	short (*func)( double, int, char *, float );
CODE:
	func   = INT2PTR(short(*)( double, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sditt( c_func, d0, i1, t2, t3 )
	SV* c_func
	double d0
	int i1
	char * t2
	char * t3
PREINIT:
	short (*func)( double, int, char *, char * );
CODE:
	func   = INT2PTR(short(*)( double, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sditi( c_func, d0, i1, t2, i3 )
	SV* c_func
	double d0
	int i1
	char * t2
	int i3
PREINIT:
	short (*func)( double, int, char *, int );
CODE:
	func   = INT2PTR(short(*)( double, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sdiid( c_func, d0, i1, i2, d3 )
	SV* c_func
	double d0
	int i1
	int i2
	double d3
PREINIT:
	short (*func)( double, int, int, double );
CODE:
	func   = INT2PTR(short(*)( double, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sdiis( c_func, d0, i1, i2, s3 )
	SV* c_func
	double d0
	int i1
	int i2
	short s3
PREINIT:
	short (*func)( double, int, int, short );
CODE:
	func   = INT2PTR(short(*)( double, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sdiif( c_func, d0, i1, i2, f3 )
	SV* c_func
	double d0
	int i1
	int i2
	float f3
PREINIT:
	short (*func)( double, int, int, float );
CODE:
	func   = INT2PTR(short(*)( double, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sdiit( c_func, d0, i1, i2, t3 )
	SV* c_func
	double d0
	int i1
	int i2
	char * t3
PREINIT:
	short (*func)( double, int, int, char * );
CODE:
	func   = INT2PTR(short(*)( double, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sdiii( c_func, d0, i1, i2, i3 )
	SV* c_func
	double d0
	int i1
	int i2
	int i3
PREINIT:
	short (*func)( double, int, int, int );
CODE:
	func   = INT2PTR(short(*)( double, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_ssddd( c_func, s0, d1, d2, d3 )
	SV* c_func
	short s0
	double d1
	double d2
	double d3
PREINIT:
	short (*func)( short, double, double, double );
CODE:
	func   = INT2PTR(short(*)( short, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_ssdds( c_func, s0, d1, d2, s3 )
	SV* c_func
	short s0
	double d1
	double d2
	short s3
PREINIT:
	short (*func)( short, double, double, short );
CODE:
	func   = INT2PTR(short(*)( short, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_ssddf( c_func, s0, d1, d2, f3 )
	SV* c_func
	short s0
	double d1
	double d2
	float f3
PREINIT:
	short (*func)( short, double, double, float );
CODE:
	func   = INT2PTR(short(*)( short, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_ssddt( c_func, s0, d1, d2, t3 )
	SV* c_func
	short s0
	double d1
	double d2
	char * t3
PREINIT:
	short (*func)( short, double, double, char * );
CODE:
	func   = INT2PTR(short(*)( short, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_ssddi( c_func, s0, d1, d2, i3 )
	SV* c_func
	short s0
	double d1
	double d2
	int i3
PREINIT:
	short (*func)( short, double, double, int );
CODE:
	func   = INT2PTR(short(*)( short, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_ssdsd( c_func, s0, d1, s2, d3 )
	SV* c_func
	short s0
	double d1
	short s2
	double d3
PREINIT:
	short (*func)( short, double, short, double );
CODE:
	func   = INT2PTR(short(*)( short, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_ssdss( c_func, s0, d1, s2, s3 )
	SV* c_func
	short s0
	double d1
	short s2
	short s3
PREINIT:
	short (*func)( short, double, short, short );
CODE:
	func   = INT2PTR(short(*)( short, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_ssdsf( c_func, s0, d1, s2, f3 )
	SV* c_func
	short s0
	double d1
	short s2
	float f3
PREINIT:
	short (*func)( short, double, short, float );
CODE:
	func   = INT2PTR(short(*)( short, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_ssdst( c_func, s0, d1, s2, t3 )
	SV* c_func
	short s0
	double d1
	short s2
	char * t3
PREINIT:
	short (*func)( short, double, short, char * );
CODE:
	func   = INT2PTR(short(*)( short, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_ssdsi( c_func, s0, d1, s2, i3 )
	SV* c_func
	short s0
	double d1
	short s2
	int i3
PREINIT:
	short (*func)( short, double, short, int );
CODE:
	func   = INT2PTR(short(*)( short, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_ssdfd( c_func, s0, d1, f2, d3 )
	SV* c_func
	short s0
	double d1
	float f2
	double d3
PREINIT:
	short (*func)( short, double, float, double );
CODE:
	func   = INT2PTR(short(*)( short, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_ssdfs( c_func, s0, d1, f2, s3 )
	SV* c_func
	short s0
	double d1
	float f2
	short s3
PREINIT:
	short (*func)( short, double, float, short );
CODE:
	func   = INT2PTR(short(*)( short, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_ssdff( c_func, s0, d1, f2, f3 )
	SV* c_func
	short s0
	double d1
	float f2
	float f3
PREINIT:
	short (*func)( short, double, float, float );
CODE:
	func   = INT2PTR(short(*)( short, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_ssdft( c_func, s0, d1, f2, t3 )
	SV* c_func
	short s0
	double d1
	float f2
	char * t3
PREINIT:
	short (*func)( short, double, float, char * );
CODE:
	func   = INT2PTR(short(*)( short, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_ssdfi( c_func, s0, d1, f2, i3 )
	SV* c_func
	short s0
	double d1
	float f2
	int i3
PREINIT:
	short (*func)( short, double, float, int );
CODE:
	func   = INT2PTR(short(*)( short, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_ssdtd( c_func, s0, d1, t2, d3 )
	SV* c_func
	short s0
	double d1
	char * t2
	double d3
PREINIT:
	short (*func)( short, double, char *, double );
CODE:
	func   = INT2PTR(short(*)( short, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_ssdts( c_func, s0, d1, t2, s3 )
	SV* c_func
	short s0
	double d1
	char * t2
	short s3
PREINIT:
	short (*func)( short, double, char *, short );
CODE:
	func   = INT2PTR(short(*)( short, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_ssdtf( c_func, s0, d1, t2, f3 )
	SV* c_func
	short s0
	double d1
	char * t2
	float f3
PREINIT:
	short (*func)( short, double, char *, float );
CODE:
	func   = INT2PTR(short(*)( short, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_ssdtt( c_func, s0, d1, t2, t3 )
	SV* c_func
	short s0
	double d1
	char * t2
	char * t3
PREINIT:
	short (*func)( short, double, char *, char * );
CODE:
	func   = INT2PTR(short(*)( short, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_ssdti( c_func, s0, d1, t2, i3 )
	SV* c_func
	short s0
	double d1
	char * t2
	int i3
PREINIT:
	short (*func)( short, double, char *, int );
CODE:
	func   = INT2PTR(short(*)( short, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_ssdid( c_func, s0, d1, i2, d3 )
	SV* c_func
	short s0
	double d1
	int i2
	double d3
PREINIT:
	short (*func)( short, double, int, double );
CODE:
	func   = INT2PTR(short(*)( short, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_ssdis( c_func, s0, d1, i2, s3 )
	SV* c_func
	short s0
	double d1
	int i2
	short s3
PREINIT:
	short (*func)( short, double, int, short );
CODE:
	func   = INT2PTR(short(*)( short, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_ssdif( c_func, s0, d1, i2, f3 )
	SV* c_func
	short s0
	double d1
	int i2
	float f3
PREINIT:
	short (*func)( short, double, int, float );
CODE:
	func   = INT2PTR(short(*)( short, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_ssdit( c_func, s0, d1, i2, t3 )
	SV* c_func
	short s0
	double d1
	int i2
	char * t3
PREINIT:
	short (*func)( short, double, int, char * );
CODE:
	func   = INT2PTR(short(*)( short, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_ssdii( c_func, s0, d1, i2, i3 )
	SV* c_func
	short s0
	double d1
	int i2
	int i3
PREINIT:
	short (*func)( short, double, int, int );
CODE:
	func   = INT2PTR(short(*)( short, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sssdd( c_func, s0, s1, d2, d3 )
	SV* c_func
	short s0
	short s1
	double d2
	double d3
PREINIT:
	short (*func)( short, short, double, double );
CODE:
	func   = INT2PTR(short(*)( short, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sssds( c_func, s0, s1, d2, s3 )
	SV* c_func
	short s0
	short s1
	double d2
	short s3
PREINIT:
	short (*func)( short, short, double, short );
CODE:
	func   = INT2PTR(short(*)( short, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sssdf( c_func, s0, s1, d2, f3 )
	SV* c_func
	short s0
	short s1
	double d2
	float f3
PREINIT:
	short (*func)( short, short, double, float );
CODE:
	func   = INT2PTR(short(*)( short, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sssdt( c_func, s0, s1, d2, t3 )
	SV* c_func
	short s0
	short s1
	double d2
	char * t3
PREINIT:
	short (*func)( short, short, double, char * );
CODE:
	func   = INT2PTR(short(*)( short, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sssdi( c_func, s0, s1, d2, i3 )
	SV* c_func
	short s0
	short s1
	double d2
	int i3
PREINIT:
	short (*func)( short, short, double, int );
CODE:
	func   = INT2PTR(short(*)( short, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_ssssd( c_func, s0, s1, s2, d3 )
	SV* c_func
	short s0
	short s1
	short s2
	double d3
PREINIT:
	short (*func)( short, short, short, double );
CODE:
	func   = INT2PTR(short(*)( short, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sssss( c_func, s0, s1, s2, s3 )
	SV* c_func
	short s0
	short s1
	short s2
	short s3
PREINIT:
	short (*func)( short, short, short, short );
CODE:
	func   = INT2PTR(short(*)( short, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_ssssf( c_func, s0, s1, s2, f3 )
	SV* c_func
	short s0
	short s1
	short s2
	float f3
PREINIT:
	short (*func)( short, short, short, float );
CODE:
	func   = INT2PTR(short(*)( short, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sssst( c_func, s0, s1, s2, t3 )
	SV* c_func
	short s0
	short s1
	short s2
	char * t3
PREINIT:
	short (*func)( short, short, short, char * );
CODE:
	func   = INT2PTR(short(*)( short, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_ssssi( c_func, s0, s1, s2, i3 )
	SV* c_func
	short s0
	short s1
	short s2
	int i3
PREINIT:
	short (*func)( short, short, short, int );
CODE:
	func   = INT2PTR(short(*)( short, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sssfd( c_func, s0, s1, f2, d3 )
	SV* c_func
	short s0
	short s1
	float f2
	double d3
PREINIT:
	short (*func)( short, short, float, double );
CODE:
	func   = INT2PTR(short(*)( short, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sssfs( c_func, s0, s1, f2, s3 )
	SV* c_func
	short s0
	short s1
	float f2
	short s3
PREINIT:
	short (*func)( short, short, float, short );
CODE:
	func   = INT2PTR(short(*)( short, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sssff( c_func, s0, s1, f2, f3 )
	SV* c_func
	short s0
	short s1
	float f2
	float f3
PREINIT:
	short (*func)( short, short, float, float );
CODE:
	func   = INT2PTR(short(*)( short, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sssft( c_func, s0, s1, f2, t3 )
	SV* c_func
	short s0
	short s1
	float f2
	char * t3
PREINIT:
	short (*func)( short, short, float, char * );
CODE:
	func   = INT2PTR(short(*)( short, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sssfi( c_func, s0, s1, f2, i3 )
	SV* c_func
	short s0
	short s1
	float f2
	int i3
PREINIT:
	short (*func)( short, short, float, int );
CODE:
	func   = INT2PTR(short(*)( short, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_ssstd( c_func, s0, s1, t2, d3 )
	SV* c_func
	short s0
	short s1
	char * t2
	double d3
PREINIT:
	short (*func)( short, short, char *, double );
CODE:
	func   = INT2PTR(short(*)( short, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sssts( c_func, s0, s1, t2, s3 )
	SV* c_func
	short s0
	short s1
	char * t2
	short s3
PREINIT:
	short (*func)( short, short, char *, short );
CODE:
	func   = INT2PTR(short(*)( short, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_ssstf( c_func, s0, s1, t2, f3 )
	SV* c_func
	short s0
	short s1
	char * t2
	float f3
PREINIT:
	short (*func)( short, short, char *, float );
CODE:
	func   = INT2PTR(short(*)( short, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_ssstt( c_func, s0, s1, t2, t3 )
	SV* c_func
	short s0
	short s1
	char * t2
	char * t3
PREINIT:
	short (*func)( short, short, char *, char * );
CODE:
	func   = INT2PTR(short(*)( short, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sssti( c_func, s0, s1, t2, i3 )
	SV* c_func
	short s0
	short s1
	char * t2
	int i3
PREINIT:
	short (*func)( short, short, char *, int );
CODE:
	func   = INT2PTR(short(*)( short, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sssid( c_func, s0, s1, i2, d3 )
	SV* c_func
	short s0
	short s1
	int i2
	double d3
PREINIT:
	short (*func)( short, short, int, double );
CODE:
	func   = INT2PTR(short(*)( short, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sssis( c_func, s0, s1, i2, s3 )
	SV* c_func
	short s0
	short s1
	int i2
	short s3
PREINIT:
	short (*func)( short, short, int, short );
CODE:
	func   = INT2PTR(short(*)( short, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sssif( c_func, s0, s1, i2, f3 )
	SV* c_func
	short s0
	short s1
	int i2
	float f3
PREINIT:
	short (*func)( short, short, int, float );
CODE:
	func   = INT2PTR(short(*)( short, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sssit( c_func, s0, s1, i2, t3 )
	SV* c_func
	short s0
	short s1
	int i2
	char * t3
PREINIT:
	short (*func)( short, short, int, char * );
CODE:
	func   = INT2PTR(short(*)( short, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sssii( c_func, s0, s1, i2, i3 )
	SV* c_func
	short s0
	short s1
	int i2
	int i3
PREINIT:
	short (*func)( short, short, int, int );
CODE:
	func   = INT2PTR(short(*)( short, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_ssfdd( c_func, s0, f1, d2, d3 )
	SV* c_func
	short s0
	float f1
	double d2
	double d3
PREINIT:
	short (*func)( short, float, double, double );
CODE:
	func   = INT2PTR(short(*)( short, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_ssfds( c_func, s0, f1, d2, s3 )
	SV* c_func
	short s0
	float f1
	double d2
	short s3
PREINIT:
	short (*func)( short, float, double, short );
CODE:
	func   = INT2PTR(short(*)( short, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_ssfdf( c_func, s0, f1, d2, f3 )
	SV* c_func
	short s0
	float f1
	double d2
	float f3
PREINIT:
	short (*func)( short, float, double, float );
CODE:
	func   = INT2PTR(short(*)( short, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_ssfdt( c_func, s0, f1, d2, t3 )
	SV* c_func
	short s0
	float f1
	double d2
	char * t3
PREINIT:
	short (*func)( short, float, double, char * );
CODE:
	func   = INT2PTR(short(*)( short, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_ssfdi( c_func, s0, f1, d2, i3 )
	SV* c_func
	short s0
	float f1
	double d2
	int i3
PREINIT:
	short (*func)( short, float, double, int );
CODE:
	func   = INT2PTR(short(*)( short, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_ssfsd( c_func, s0, f1, s2, d3 )
	SV* c_func
	short s0
	float f1
	short s2
	double d3
PREINIT:
	short (*func)( short, float, short, double );
CODE:
	func   = INT2PTR(short(*)( short, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_ssfss( c_func, s0, f1, s2, s3 )
	SV* c_func
	short s0
	float f1
	short s2
	short s3
PREINIT:
	short (*func)( short, float, short, short );
CODE:
	func   = INT2PTR(short(*)( short, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_ssfsf( c_func, s0, f1, s2, f3 )
	SV* c_func
	short s0
	float f1
	short s2
	float f3
PREINIT:
	short (*func)( short, float, short, float );
CODE:
	func   = INT2PTR(short(*)( short, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_ssfst( c_func, s0, f1, s2, t3 )
	SV* c_func
	short s0
	float f1
	short s2
	char * t3
PREINIT:
	short (*func)( short, float, short, char * );
CODE:
	func   = INT2PTR(short(*)( short, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_ssfsi( c_func, s0, f1, s2, i3 )
	SV* c_func
	short s0
	float f1
	short s2
	int i3
PREINIT:
	short (*func)( short, float, short, int );
CODE:
	func   = INT2PTR(short(*)( short, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_ssffd( c_func, s0, f1, f2, d3 )
	SV* c_func
	short s0
	float f1
	float f2
	double d3
PREINIT:
	short (*func)( short, float, float, double );
CODE:
	func   = INT2PTR(short(*)( short, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_ssffs( c_func, s0, f1, f2, s3 )
	SV* c_func
	short s0
	float f1
	float f2
	short s3
PREINIT:
	short (*func)( short, float, float, short );
CODE:
	func   = INT2PTR(short(*)( short, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_ssfff( c_func, s0, f1, f2, f3 )
	SV* c_func
	short s0
	float f1
	float f2
	float f3
PREINIT:
	short (*func)( short, float, float, float );
CODE:
	func   = INT2PTR(short(*)( short, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_ssfft( c_func, s0, f1, f2, t3 )
	SV* c_func
	short s0
	float f1
	float f2
	char * t3
PREINIT:
	short (*func)( short, float, float, char * );
CODE:
	func   = INT2PTR(short(*)( short, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_ssffi( c_func, s0, f1, f2, i3 )
	SV* c_func
	short s0
	float f1
	float f2
	int i3
PREINIT:
	short (*func)( short, float, float, int );
CODE:
	func   = INT2PTR(short(*)( short, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_ssftd( c_func, s0, f1, t2, d3 )
	SV* c_func
	short s0
	float f1
	char * t2
	double d3
PREINIT:
	short (*func)( short, float, char *, double );
CODE:
	func   = INT2PTR(short(*)( short, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_ssfts( c_func, s0, f1, t2, s3 )
	SV* c_func
	short s0
	float f1
	char * t2
	short s3
PREINIT:
	short (*func)( short, float, char *, short );
CODE:
	func   = INT2PTR(short(*)( short, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_ssftf( c_func, s0, f1, t2, f3 )
	SV* c_func
	short s0
	float f1
	char * t2
	float f3
PREINIT:
	short (*func)( short, float, char *, float );
CODE:
	func   = INT2PTR(short(*)( short, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_ssftt( c_func, s0, f1, t2, t3 )
	SV* c_func
	short s0
	float f1
	char * t2
	char * t3
PREINIT:
	short (*func)( short, float, char *, char * );
CODE:
	func   = INT2PTR(short(*)( short, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_ssfti( c_func, s0, f1, t2, i3 )
	SV* c_func
	short s0
	float f1
	char * t2
	int i3
PREINIT:
	short (*func)( short, float, char *, int );
CODE:
	func   = INT2PTR(short(*)( short, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_ssfid( c_func, s0, f1, i2, d3 )
	SV* c_func
	short s0
	float f1
	int i2
	double d3
PREINIT:
	short (*func)( short, float, int, double );
CODE:
	func   = INT2PTR(short(*)( short, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_ssfis( c_func, s0, f1, i2, s3 )
	SV* c_func
	short s0
	float f1
	int i2
	short s3
PREINIT:
	short (*func)( short, float, int, short );
CODE:
	func   = INT2PTR(short(*)( short, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_ssfif( c_func, s0, f1, i2, f3 )
	SV* c_func
	short s0
	float f1
	int i2
	float f3
PREINIT:
	short (*func)( short, float, int, float );
CODE:
	func   = INT2PTR(short(*)( short, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_ssfit( c_func, s0, f1, i2, t3 )
	SV* c_func
	short s0
	float f1
	int i2
	char * t3
PREINIT:
	short (*func)( short, float, int, char * );
CODE:
	func   = INT2PTR(short(*)( short, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_ssfii( c_func, s0, f1, i2, i3 )
	SV* c_func
	short s0
	float f1
	int i2
	int i3
PREINIT:
	short (*func)( short, float, int, int );
CODE:
	func   = INT2PTR(short(*)( short, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sstdd( c_func, s0, t1, d2, d3 )
	SV* c_func
	short s0
	char * t1
	double d2
	double d3
PREINIT:
	short (*func)( short, char *, double, double );
CODE:
	func   = INT2PTR(short(*)( short, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sstds( c_func, s0, t1, d2, s3 )
	SV* c_func
	short s0
	char * t1
	double d2
	short s3
PREINIT:
	short (*func)( short, char *, double, short );
CODE:
	func   = INT2PTR(short(*)( short, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sstdf( c_func, s0, t1, d2, f3 )
	SV* c_func
	short s0
	char * t1
	double d2
	float f3
PREINIT:
	short (*func)( short, char *, double, float );
CODE:
	func   = INT2PTR(short(*)( short, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sstdt( c_func, s0, t1, d2, t3 )
	SV* c_func
	short s0
	char * t1
	double d2
	char * t3
PREINIT:
	short (*func)( short, char *, double, char * );
CODE:
	func   = INT2PTR(short(*)( short, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sstdi( c_func, s0, t1, d2, i3 )
	SV* c_func
	short s0
	char * t1
	double d2
	int i3
PREINIT:
	short (*func)( short, char *, double, int );
CODE:
	func   = INT2PTR(short(*)( short, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sstsd( c_func, s0, t1, s2, d3 )
	SV* c_func
	short s0
	char * t1
	short s2
	double d3
PREINIT:
	short (*func)( short, char *, short, double );
CODE:
	func   = INT2PTR(short(*)( short, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sstss( c_func, s0, t1, s2, s3 )
	SV* c_func
	short s0
	char * t1
	short s2
	short s3
PREINIT:
	short (*func)( short, char *, short, short );
CODE:
	func   = INT2PTR(short(*)( short, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sstsf( c_func, s0, t1, s2, f3 )
	SV* c_func
	short s0
	char * t1
	short s2
	float f3
PREINIT:
	short (*func)( short, char *, short, float );
CODE:
	func   = INT2PTR(short(*)( short, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sstst( c_func, s0, t1, s2, t3 )
	SV* c_func
	short s0
	char * t1
	short s2
	char * t3
PREINIT:
	short (*func)( short, char *, short, char * );
CODE:
	func   = INT2PTR(short(*)( short, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sstsi( c_func, s0, t1, s2, i3 )
	SV* c_func
	short s0
	char * t1
	short s2
	int i3
PREINIT:
	short (*func)( short, char *, short, int );
CODE:
	func   = INT2PTR(short(*)( short, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sstfd( c_func, s0, t1, f2, d3 )
	SV* c_func
	short s0
	char * t1
	float f2
	double d3
PREINIT:
	short (*func)( short, char *, float, double );
CODE:
	func   = INT2PTR(short(*)( short, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sstfs( c_func, s0, t1, f2, s3 )
	SV* c_func
	short s0
	char * t1
	float f2
	short s3
PREINIT:
	short (*func)( short, char *, float, short );
CODE:
	func   = INT2PTR(short(*)( short, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sstff( c_func, s0, t1, f2, f3 )
	SV* c_func
	short s0
	char * t1
	float f2
	float f3
PREINIT:
	short (*func)( short, char *, float, float );
CODE:
	func   = INT2PTR(short(*)( short, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sstft( c_func, s0, t1, f2, t3 )
	SV* c_func
	short s0
	char * t1
	float f2
	char * t3
PREINIT:
	short (*func)( short, char *, float, char * );
CODE:
	func   = INT2PTR(short(*)( short, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sstfi( c_func, s0, t1, f2, i3 )
	SV* c_func
	short s0
	char * t1
	float f2
	int i3
PREINIT:
	short (*func)( short, char *, float, int );
CODE:
	func   = INT2PTR(short(*)( short, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_ssttd( c_func, s0, t1, t2, d3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	double d3
PREINIT:
	short (*func)( short, char *, char *, double );
CODE:
	func   = INT2PTR(short(*)( short, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sstts( c_func, s0, t1, t2, s3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	short s3
PREINIT:
	short (*func)( short, char *, char *, short );
CODE:
	func   = INT2PTR(short(*)( short, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_ssttf( c_func, s0, t1, t2, f3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	float f3
PREINIT:
	short (*func)( short, char *, char *, float );
CODE:
	func   = INT2PTR(short(*)( short, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_ssttt( c_func, s0, t1, t2, t3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	char * t3
PREINIT:
	short (*func)( short, char *, char *, char * );
CODE:
	func   = INT2PTR(short(*)( short, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sstti( c_func, s0, t1, t2, i3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	int i3
PREINIT:
	short (*func)( short, char *, char *, int );
CODE:
	func   = INT2PTR(short(*)( short, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sstid( c_func, s0, t1, i2, d3 )
	SV* c_func
	short s0
	char * t1
	int i2
	double d3
PREINIT:
	short (*func)( short, char *, int, double );
CODE:
	func   = INT2PTR(short(*)( short, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sstis( c_func, s0, t1, i2, s3 )
	SV* c_func
	short s0
	char * t1
	int i2
	short s3
PREINIT:
	short (*func)( short, char *, int, short );
CODE:
	func   = INT2PTR(short(*)( short, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sstif( c_func, s0, t1, i2, f3 )
	SV* c_func
	short s0
	char * t1
	int i2
	float f3
PREINIT:
	short (*func)( short, char *, int, float );
CODE:
	func   = INT2PTR(short(*)( short, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sstit( c_func, s0, t1, i2, t3 )
	SV* c_func
	short s0
	char * t1
	int i2
	char * t3
PREINIT:
	short (*func)( short, char *, int, char * );
CODE:
	func   = INT2PTR(short(*)( short, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sstii( c_func, s0, t1, i2, i3 )
	SV* c_func
	short s0
	char * t1
	int i2
	int i3
PREINIT:
	short (*func)( short, char *, int, int );
CODE:
	func   = INT2PTR(short(*)( short, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_ssidd( c_func, s0, i1, d2, d3 )
	SV* c_func
	short s0
	int i1
	double d2
	double d3
PREINIT:
	short (*func)( short, int, double, double );
CODE:
	func   = INT2PTR(short(*)( short, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_ssids( c_func, s0, i1, d2, s3 )
	SV* c_func
	short s0
	int i1
	double d2
	short s3
PREINIT:
	short (*func)( short, int, double, short );
CODE:
	func   = INT2PTR(short(*)( short, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_ssidf( c_func, s0, i1, d2, f3 )
	SV* c_func
	short s0
	int i1
	double d2
	float f3
PREINIT:
	short (*func)( short, int, double, float );
CODE:
	func   = INT2PTR(short(*)( short, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_ssidt( c_func, s0, i1, d2, t3 )
	SV* c_func
	short s0
	int i1
	double d2
	char * t3
PREINIT:
	short (*func)( short, int, double, char * );
CODE:
	func   = INT2PTR(short(*)( short, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_ssidi( c_func, s0, i1, d2, i3 )
	SV* c_func
	short s0
	int i1
	double d2
	int i3
PREINIT:
	short (*func)( short, int, double, int );
CODE:
	func   = INT2PTR(short(*)( short, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_ssisd( c_func, s0, i1, s2, d3 )
	SV* c_func
	short s0
	int i1
	short s2
	double d3
PREINIT:
	short (*func)( short, int, short, double );
CODE:
	func   = INT2PTR(short(*)( short, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_ssiss( c_func, s0, i1, s2, s3 )
	SV* c_func
	short s0
	int i1
	short s2
	short s3
PREINIT:
	short (*func)( short, int, short, short );
CODE:
	func   = INT2PTR(short(*)( short, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_ssisf( c_func, s0, i1, s2, f3 )
	SV* c_func
	short s0
	int i1
	short s2
	float f3
PREINIT:
	short (*func)( short, int, short, float );
CODE:
	func   = INT2PTR(short(*)( short, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_ssist( c_func, s0, i1, s2, t3 )
	SV* c_func
	short s0
	int i1
	short s2
	char * t3
PREINIT:
	short (*func)( short, int, short, char * );
CODE:
	func   = INT2PTR(short(*)( short, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_ssisi( c_func, s0, i1, s2, i3 )
	SV* c_func
	short s0
	int i1
	short s2
	int i3
PREINIT:
	short (*func)( short, int, short, int );
CODE:
	func   = INT2PTR(short(*)( short, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_ssifd( c_func, s0, i1, f2, d3 )
	SV* c_func
	short s0
	int i1
	float f2
	double d3
PREINIT:
	short (*func)( short, int, float, double );
CODE:
	func   = INT2PTR(short(*)( short, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_ssifs( c_func, s0, i1, f2, s3 )
	SV* c_func
	short s0
	int i1
	float f2
	short s3
PREINIT:
	short (*func)( short, int, float, short );
CODE:
	func   = INT2PTR(short(*)( short, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_ssiff( c_func, s0, i1, f2, f3 )
	SV* c_func
	short s0
	int i1
	float f2
	float f3
PREINIT:
	short (*func)( short, int, float, float );
CODE:
	func   = INT2PTR(short(*)( short, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_ssift( c_func, s0, i1, f2, t3 )
	SV* c_func
	short s0
	int i1
	float f2
	char * t3
PREINIT:
	short (*func)( short, int, float, char * );
CODE:
	func   = INT2PTR(short(*)( short, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_ssifi( c_func, s0, i1, f2, i3 )
	SV* c_func
	short s0
	int i1
	float f2
	int i3
PREINIT:
	short (*func)( short, int, float, int );
CODE:
	func   = INT2PTR(short(*)( short, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_ssitd( c_func, s0, i1, t2, d3 )
	SV* c_func
	short s0
	int i1
	char * t2
	double d3
PREINIT:
	short (*func)( short, int, char *, double );
CODE:
	func   = INT2PTR(short(*)( short, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_ssits( c_func, s0, i1, t2, s3 )
	SV* c_func
	short s0
	int i1
	char * t2
	short s3
PREINIT:
	short (*func)( short, int, char *, short );
CODE:
	func   = INT2PTR(short(*)( short, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_ssitf( c_func, s0, i1, t2, f3 )
	SV* c_func
	short s0
	int i1
	char * t2
	float f3
PREINIT:
	short (*func)( short, int, char *, float );
CODE:
	func   = INT2PTR(short(*)( short, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_ssitt( c_func, s0, i1, t2, t3 )
	SV* c_func
	short s0
	int i1
	char * t2
	char * t3
PREINIT:
	short (*func)( short, int, char *, char * );
CODE:
	func   = INT2PTR(short(*)( short, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_ssiti( c_func, s0, i1, t2, i3 )
	SV* c_func
	short s0
	int i1
	char * t2
	int i3
PREINIT:
	short (*func)( short, int, char *, int );
CODE:
	func   = INT2PTR(short(*)( short, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_ssiid( c_func, s0, i1, i2, d3 )
	SV* c_func
	short s0
	int i1
	int i2
	double d3
PREINIT:
	short (*func)( short, int, int, double );
CODE:
	func   = INT2PTR(short(*)( short, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_ssiis( c_func, s0, i1, i2, s3 )
	SV* c_func
	short s0
	int i1
	int i2
	short s3
PREINIT:
	short (*func)( short, int, int, short );
CODE:
	func   = INT2PTR(short(*)( short, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_ssiif( c_func, s0, i1, i2, f3 )
	SV* c_func
	short s0
	int i1
	int i2
	float f3
PREINIT:
	short (*func)( short, int, int, float );
CODE:
	func   = INT2PTR(short(*)( short, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_ssiit( c_func, s0, i1, i2, t3 )
	SV* c_func
	short s0
	int i1
	int i2
	char * t3
PREINIT:
	short (*func)( short, int, int, char * );
CODE:
	func   = INT2PTR(short(*)( short, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_ssiii( c_func, s0, i1, i2, i3 )
	SV* c_func
	short s0
	int i1
	int i2
	int i3
PREINIT:
	short (*func)( short, int, int, int );
CODE:
	func   = INT2PTR(short(*)( short, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sfddd( c_func, f0, d1, d2, d3 )
	SV* c_func
	float f0
	double d1
	double d2
	double d3
PREINIT:
	short (*func)( float, double, double, double );
CODE:
	func   = INT2PTR(short(*)( float, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sfdds( c_func, f0, d1, d2, s3 )
	SV* c_func
	float f0
	double d1
	double d2
	short s3
PREINIT:
	short (*func)( float, double, double, short );
CODE:
	func   = INT2PTR(short(*)( float, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sfddf( c_func, f0, d1, d2, f3 )
	SV* c_func
	float f0
	double d1
	double d2
	float f3
PREINIT:
	short (*func)( float, double, double, float );
CODE:
	func   = INT2PTR(short(*)( float, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sfddt( c_func, f0, d1, d2, t3 )
	SV* c_func
	float f0
	double d1
	double d2
	char * t3
PREINIT:
	short (*func)( float, double, double, char * );
CODE:
	func   = INT2PTR(short(*)( float, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sfddi( c_func, f0, d1, d2, i3 )
	SV* c_func
	float f0
	double d1
	double d2
	int i3
PREINIT:
	short (*func)( float, double, double, int );
CODE:
	func   = INT2PTR(short(*)( float, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sfdsd( c_func, f0, d1, s2, d3 )
	SV* c_func
	float f0
	double d1
	short s2
	double d3
PREINIT:
	short (*func)( float, double, short, double );
CODE:
	func   = INT2PTR(short(*)( float, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sfdss( c_func, f0, d1, s2, s3 )
	SV* c_func
	float f0
	double d1
	short s2
	short s3
PREINIT:
	short (*func)( float, double, short, short );
CODE:
	func   = INT2PTR(short(*)( float, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sfdsf( c_func, f0, d1, s2, f3 )
	SV* c_func
	float f0
	double d1
	short s2
	float f3
PREINIT:
	short (*func)( float, double, short, float );
CODE:
	func   = INT2PTR(short(*)( float, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sfdst( c_func, f0, d1, s2, t3 )
	SV* c_func
	float f0
	double d1
	short s2
	char * t3
PREINIT:
	short (*func)( float, double, short, char * );
CODE:
	func   = INT2PTR(short(*)( float, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sfdsi( c_func, f0, d1, s2, i3 )
	SV* c_func
	float f0
	double d1
	short s2
	int i3
PREINIT:
	short (*func)( float, double, short, int );
CODE:
	func   = INT2PTR(short(*)( float, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sfdfd( c_func, f0, d1, f2, d3 )
	SV* c_func
	float f0
	double d1
	float f2
	double d3
PREINIT:
	short (*func)( float, double, float, double );
CODE:
	func   = INT2PTR(short(*)( float, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sfdfs( c_func, f0, d1, f2, s3 )
	SV* c_func
	float f0
	double d1
	float f2
	short s3
PREINIT:
	short (*func)( float, double, float, short );
CODE:
	func   = INT2PTR(short(*)( float, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sfdff( c_func, f0, d1, f2, f3 )
	SV* c_func
	float f0
	double d1
	float f2
	float f3
PREINIT:
	short (*func)( float, double, float, float );
CODE:
	func   = INT2PTR(short(*)( float, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sfdft( c_func, f0, d1, f2, t3 )
	SV* c_func
	float f0
	double d1
	float f2
	char * t3
PREINIT:
	short (*func)( float, double, float, char * );
CODE:
	func   = INT2PTR(short(*)( float, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sfdfi( c_func, f0, d1, f2, i3 )
	SV* c_func
	float f0
	double d1
	float f2
	int i3
PREINIT:
	short (*func)( float, double, float, int );
CODE:
	func   = INT2PTR(short(*)( float, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sfdtd( c_func, f0, d1, t2, d3 )
	SV* c_func
	float f0
	double d1
	char * t2
	double d3
PREINIT:
	short (*func)( float, double, char *, double );
CODE:
	func   = INT2PTR(short(*)( float, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sfdts( c_func, f0, d1, t2, s3 )
	SV* c_func
	float f0
	double d1
	char * t2
	short s3
PREINIT:
	short (*func)( float, double, char *, short );
CODE:
	func   = INT2PTR(short(*)( float, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sfdtf( c_func, f0, d1, t2, f3 )
	SV* c_func
	float f0
	double d1
	char * t2
	float f3
PREINIT:
	short (*func)( float, double, char *, float );
CODE:
	func   = INT2PTR(short(*)( float, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sfdtt( c_func, f0, d1, t2, t3 )
	SV* c_func
	float f0
	double d1
	char * t2
	char * t3
PREINIT:
	short (*func)( float, double, char *, char * );
CODE:
	func   = INT2PTR(short(*)( float, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sfdti( c_func, f0, d1, t2, i3 )
	SV* c_func
	float f0
	double d1
	char * t2
	int i3
PREINIT:
	short (*func)( float, double, char *, int );
CODE:
	func   = INT2PTR(short(*)( float, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sfdid( c_func, f0, d1, i2, d3 )
	SV* c_func
	float f0
	double d1
	int i2
	double d3
PREINIT:
	short (*func)( float, double, int, double );
CODE:
	func   = INT2PTR(short(*)( float, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sfdis( c_func, f0, d1, i2, s3 )
	SV* c_func
	float f0
	double d1
	int i2
	short s3
PREINIT:
	short (*func)( float, double, int, short );
CODE:
	func   = INT2PTR(short(*)( float, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sfdif( c_func, f0, d1, i2, f3 )
	SV* c_func
	float f0
	double d1
	int i2
	float f3
PREINIT:
	short (*func)( float, double, int, float );
CODE:
	func   = INT2PTR(short(*)( float, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sfdit( c_func, f0, d1, i2, t3 )
	SV* c_func
	float f0
	double d1
	int i2
	char * t3
PREINIT:
	short (*func)( float, double, int, char * );
CODE:
	func   = INT2PTR(short(*)( float, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sfdii( c_func, f0, d1, i2, i3 )
	SV* c_func
	float f0
	double d1
	int i2
	int i3
PREINIT:
	short (*func)( float, double, int, int );
CODE:
	func   = INT2PTR(short(*)( float, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sfsdd( c_func, f0, s1, d2, d3 )
	SV* c_func
	float f0
	short s1
	double d2
	double d3
PREINIT:
	short (*func)( float, short, double, double );
CODE:
	func   = INT2PTR(short(*)( float, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sfsds( c_func, f0, s1, d2, s3 )
	SV* c_func
	float f0
	short s1
	double d2
	short s3
PREINIT:
	short (*func)( float, short, double, short );
CODE:
	func   = INT2PTR(short(*)( float, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sfsdf( c_func, f0, s1, d2, f3 )
	SV* c_func
	float f0
	short s1
	double d2
	float f3
PREINIT:
	short (*func)( float, short, double, float );
CODE:
	func   = INT2PTR(short(*)( float, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sfsdt( c_func, f0, s1, d2, t3 )
	SV* c_func
	float f0
	short s1
	double d2
	char * t3
PREINIT:
	short (*func)( float, short, double, char * );
CODE:
	func   = INT2PTR(short(*)( float, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sfsdi( c_func, f0, s1, d2, i3 )
	SV* c_func
	float f0
	short s1
	double d2
	int i3
PREINIT:
	short (*func)( float, short, double, int );
CODE:
	func   = INT2PTR(short(*)( float, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sfssd( c_func, f0, s1, s2, d3 )
	SV* c_func
	float f0
	short s1
	short s2
	double d3
PREINIT:
	short (*func)( float, short, short, double );
CODE:
	func   = INT2PTR(short(*)( float, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sfsss( c_func, f0, s1, s2, s3 )
	SV* c_func
	float f0
	short s1
	short s2
	short s3
PREINIT:
	short (*func)( float, short, short, short );
CODE:
	func   = INT2PTR(short(*)( float, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sfssf( c_func, f0, s1, s2, f3 )
	SV* c_func
	float f0
	short s1
	short s2
	float f3
PREINIT:
	short (*func)( float, short, short, float );
CODE:
	func   = INT2PTR(short(*)( float, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sfsst( c_func, f0, s1, s2, t3 )
	SV* c_func
	float f0
	short s1
	short s2
	char * t3
PREINIT:
	short (*func)( float, short, short, char * );
CODE:
	func   = INT2PTR(short(*)( float, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sfssi( c_func, f0, s1, s2, i3 )
	SV* c_func
	float f0
	short s1
	short s2
	int i3
PREINIT:
	short (*func)( float, short, short, int );
CODE:
	func   = INT2PTR(short(*)( float, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sfsfd( c_func, f0, s1, f2, d3 )
	SV* c_func
	float f0
	short s1
	float f2
	double d3
PREINIT:
	short (*func)( float, short, float, double );
CODE:
	func   = INT2PTR(short(*)( float, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sfsfs( c_func, f0, s1, f2, s3 )
	SV* c_func
	float f0
	short s1
	float f2
	short s3
PREINIT:
	short (*func)( float, short, float, short );
CODE:
	func   = INT2PTR(short(*)( float, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sfsff( c_func, f0, s1, f2, f3 )
	SV* c_func
	float f0
	short s1
	float f2
	float f3
PREINIT:
	short (*func)( float, short, float, float );
CODE:
	func   = INT2PTR(short(*)( float, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sfsft( c_func, f0, s1, f2, t3 )
	SV* c_func
	float f0
	short s1
	float f2
	char * t3
PREINIT:
	short (*func)( float, short, float, char * );
CODE:
	func   = INT2PTR(short(*)( float, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sfsfi( c_func, f0, s1, f2, i3 )
	SV* c_func
	float f0
	short s1
	float f2
	int i3
PREINIT:
	short (*func)( float, short, float, int );
CODE:
	func   = INT2PTR(short(*)( float, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sfstd( c_func, f0, s1, t2, d3 )
	SV* c_func
	float f0
	short s1
	char * t2
	double d3
PREINIT:
	short (*func)( float, short, char *, double );
CODE:
	func   = INT2PTR(short(*)( float, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sfsts( c_func, f0, s1, t2, s3 )
	SV* c_func
	float f0
	short s1
	char * t2
	short s3
PREINIT:
	short (*func)( float, short, char *, short );
CODE:
	func   = INT2PTR(short(*)( float, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sfstf( c_func, f0, s1, t2, f3 )
	SV* c_func
	float f0
	short s1
	char * t2
	float f3
PREINIT:
	short (*func)( float, short, char *, float );
CODE:
	func   = INT2PTR(short(*)( float, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sfstt( c_func, f0, s1, t2, t3 )
	SV* c_func
	float f0
	short s1
	char * t2
	char * t3
PREINIT:
	short (*func)( float, short, char *, char * );
CODE:
	func   = INT2PTR(short(*)( float, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sfsti( c_func, f0, s1, t2, i3 )
	SV* c_func
	float f0
	short s1
	char * t2
	int i3
PREINIT:
	short (*func)( float, short, char *, int );
CODE:
	func   = INT2PTR(short(*)( float, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sfsid( c_func, f0, s1, i2, d3 )
	SV* c_func
	float f0
	short s1
	int i2
	double d3
PREINIT:
	short (*func)( float, short, int, double );
CODE:
	func   = INT2PTR(short(*)( float, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sfsis( c_func, f0, s1, i2, s3 )
	SV* c_func
	float f0
	short s1
	int i2
	short s3
PREINIT:
	short (*func)( float, short, int, short );
CODE:
	func   = INT2PTR(short(*)( float, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sfsif( c_func, f0, s1, i2, f3 )
	SV* c_func
	float f0
	short s1
	int i2
	float f3
PREINIT:
	short (*func)( float, short, int, float );
CODE:
	func   = INT2PTR(short(*)( float, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sfsit( c_func, f0, s1, i2, t3 )
	SV* c_func
	float f0
	short s1
	int i2
	char * t3
PREINIT:
	short (*func)( float, short, int, char * );
CODE:
	func   = INT2PTR(short(*)( float, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sfsii( c_func, f0, s1, i2, i3 )
	SV* c_func
	float f0
	short s1
	int i2
	int i3
PREINIT:
	short (*func)( float, short, int, int );
CODE:
	func   = INT2PTR(short(*)( float, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sffdd( c_func, f0, f1, d2, d3 )
	SV* c_func
	float f0
	float f1
	double d2
	double d3
PREINIT:
	short (*func)( float, float, double, double );
CODE:
	func   = INT2PTR(short(*)( float, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sffds( c_func, f0, f1, d2, s3 )
	SV* c_func
	float f0
	float f1
	double d2
	short s3
PREINIT:
	short (*func)( float, float, double, short );
CODE:
	func   = INT2PTR(short(*)( float, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sffdf( c_func, f0, f1, d2, f3 )
	SV* c_func
	float f0
	float f1
	double d2
	float f3
PREINIT:
	short (*func)( float, float, double, float );
CODE:
	func   = INT2PTR(short(*)( float, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sffdt( c_func, f0, f1, d2, t3 )
	SV* c_func
	float f0
	float f1
	double d2
	char * t3
PREINIT:
	short (*func)( float, float, double, char * );
CODE:
	func   = INT2PTR(short(*)( float, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sffdi( c_func, f0, f1, d2, i3 )
	SV* c_func
	float f0
	float f1
	double d2
	int i3
PREINIT:
	short (*func)( float, float, double, int );
CODE:
	func   = INT2PTR(short(*)( float, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sffsd( c_func, f0, f1, s2, d3 )
	SV* c_func
	float f0
	float f1
	short s2
	double d3
PREINIT:
	short (*func)( float, float, short, double );
CODE:
	func   = INT2PTR(short(*)( float, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sffss( c_func, f0, f1, s2, s3 )
	SV* c_func
	float f0
	float f1
	short s2
	short s3
PREINIT:
	short (*func)( float, float, short, short );
CODE:
	func   = INT2PTR(short(*)( float, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sffsf( c_func, f0, f1, s2, f3 )
	SV* c_func
	float f0
	float f1
	short s2
	float f3
PREINIT:
	short (*func)( float, float, short, float );
CODE:
	func   = INT2PTR(short(*)( float, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sffst( c_func, f0, f1, s2, t3 )
	SV* c_func
	float f0
	float f1
	short s2
	char * t3
PREINIT:
	short (*func)( float, float, short, char * );
CODE:
	func   = INT2PTR(short(*)( float, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sffsi( c_func, f0, f1, s2, i3 )
	SV* c_func
	float f0
	float f1
	short s2
	int i3
PREINIT:
	short (*func)( float, float, short, int );
CODE:
	func   = INT2PTR(short(*)( float, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sfffd( c_func, f0, f1, f2, d3 )
	SV* c_func
	float f0
	float f1
	float f2
	double d3
PREINIT:
	short (*func)( float, float, float, double );
CODE:
	func   = INT2PTR(short(*)( float, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sfffs( c_func, f0, f1, f2, s3 )
	SV* c_func
	float f0
	float f1
	float f2
	short s3
PREINIT:
	short (*func)( float, float, float, short );
CODE:
	func   = INT2PTR(short(*)( float, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sffff( c_func, f0, f1, f2, f3 )
	SV* c_func
	float f0
	float f1
	float f2
	float f3
PREINIT:
	short (*func)( float, float, float, float );
CODE:
	func   = INT2PTR(short(*)( float, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sffft( c_func, f0, f1, f2, t3 )
	SV* c_func
	float f0
	float f1
	float f2
	char * t3
PREINIT:
	short (*func)( float, float, float, char * );
CODE:
	func   = INT2PTR(short(*)( float, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sfffi( c_func, f0, f1, f2, i3 )
	SV* c_func
	float f0
	float f1
	float f2
	int i3
PREINIT:
	short (*func)( float, float, float, int );
CODE:
	func   = INT2PTR(short(*)( float, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sfftd( c_func, f0, f1, t2, d3 )
	SV* c_func
	float f0
	float f1
	char * t2
	double d3
PREINIT:
	short (*func)( float, float, char *, double );
CODE:
	func   = INT2PTR(short(*)( float, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sffts( c_func, f0, f1, t2, s3 )
	SV* c_func
	float f0
	float f1
	char * t2
	short s3
PREINIT:
	short (*func)( float, float, char *, short );
CODE:
	func   = INT2PTR(short(*)( float, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sfftf( c_func, f0, f1, t2, f3 )
	SV* c_func
	float f0
	float f1
	char * t2
	float f3
PREINIT:
	short (*func)( float, float, char *, float );
CODE:
	func   = INT2PTR(short(*)( float, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sfftt( c_func, f0, f1, t2, t3 )
	SV* c_func
	float f0
	float f1
	char * t2
	char * t3
PREINIT:
	short (*func)( float, float, char *, char * );
CODE:
	func   = INT2PTR(short(*)( float, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sffti( c_func, f0, f1, t2, i3 )
	SV* c_func
	float f0
	float f1
	char * t2
	int i3
PREINIT:
	short (*func)( float, float, char *, int );
CODE:
	func   = INT2PTR(short(*)( float, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sffid( c_func, f0, f1, i2, d3 )
	SV* c_func
	float f0
	float f1
	int i2
	double d3
PREINIT:
	short (*func)( float, float, int, double );
CODE:
	func   = INT2PTR(short(*)( float, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sffis( c_func, f0, f1, i2, s3 )
	SV* c_func
	float f0
	float f1
	int i2
	short s3
PREINIT:
	short (*func)( float, float, int, short );
CODE:
	func   = INT2PTR(short(*)( float, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sffif( c_func, f0, f1, i2, f3 )
	SV* c_func
	float f0
	float f1
	int i2
	float f3
PREINIT:
	short (*func)( float, float, int, float );
CODE:
	func   = INT2PTR(short(*)( float, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sffit( c_func, f0, f1, i2, t3 )
	SV* c_func
	float f0
	float f1
	int i2
	char * t3
PREINIT:
	short (*func)( float, float, int, char * );
CODE:
	func   = INT2PTR(short(*)( float, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sffii( c_func, f0, f1, i2, i3 )
	SV* c_func
	float f0
	float f1
	int i2
	int i3
PREINIT:
	short (*func)( float, float, int, int );
CODE:
	func   = INT2PTR(short(*)( float, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sftdd( c_func, f0, t1, d2, d3 )
	SV* c_func
	float f0
	char * t1
	double d2
	double d3
PREINIT:
	short (*func)( float, char *, double, double );
CODE:
	func   = INT2PTR(short(*)( float, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sftds( c_func, f0, t1, d2, s3 )
	SV* c_func
	float f0
	char * t1
	double d2
	short s3
PREINIT:
	short (*func)( float, char *, double, short );
CODE:
	func   = INT2PTR(short(*)( float, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sftdf( c_func, f0, t1, d2, f3 )
	SV* c_func
	float f0
	char * t1
	double d2
	float f3
PREINIT:
	short (*func)( float, char *, double, float );
CODE:
	func   = INT2PTR(short(*)( float, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sftdt( c_func, f0, t1, d2, t3 )
	SV* c_func
	float f0
	char * t1
	double d2
	char * t3
PREINIT:
	short (*func)( float, char *, double, char * );
CODE:
	func   = INT2PTR(short(*)( float, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sftdi( c_func, f0, t1, d2, i3 )
	SV* c_func
	float f0
	char * t1
	double d2
	int i3
PREINIT:
	short (*func)( float, char *, double, int );
CODE:
	func   = INT2PTR(short(*)( float, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sftsd( c_func, f0, t1, s2, d3 )
	SV* c_func
	float f0
	char * t1
	short s2
	double d3
PREINIT:
	short (*func)( float, char *, short, double );
CODE:
	func   = INT2PTR(short(*)( float, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sftss( c_func, f0, t1, s2, s3 )
	SV* c_func
	float f0
	char * t1
	short s2
	short s3
PREINIT:
	short (*func)( float, char *, short, short );
CODE:
	func   = INT2PTR(short(*)( float, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sftsf( c_func, f0, t1, s2, f3 )
	SV* c_func
	float f0
	char * t1
	short s2
	float f3
PREINIT:
	short (*func)( float, char *, short, float );
CODE:
	func   = INT2PTR(short(*)( float, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sftst( c_func, f0, t1, s2, t3 )
	SV* c_func
	float f0
	char * t1
	short s2
	char * t3
PREINIT:
	short (*func)( float, char *, short, char * );
CODE:
	func   = INT2PTR(short(*)( float, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sftsi( c_func, f0, t1, s2, i3 )
	SV* c_func
	float f0
	char * t1
	short s2
	int i3
PREINIT:
	short (*func)( float, char *, short, int );
CODE:
	func   = INT2PTR(short(*)( float, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sftfd( c_func, f0, t1, f2, d3 )
	SV* c_func
	float f0
	char * t1
	float f2
	double d3
PREINIT:
	short (*func)( float, char *, float, double );
CODE:
	func   = INT2PTR(short(*)( float, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sftfs( c_func, f0, t1, f2, s3 )
	SV* c_func
	float f0
	char * t1
	float f2
	short s3
PREINIT:
	short (*func)( float, char *, float, short );
CODE:
	func   = INT2PTR(short(*)( float, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sftff( c_func, f0, t1, f2, f3 )
	SV* c_func
	float f0
	char * t1
	float f2
	float f3
PREINIT:
	short (*func)( float, char *, float, float );
CODE:
	func   = INT2PTR(short(*)( float, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sftft( c_func, f0, t1, f2, t3 )
	SV* c_func
	float f0
	char * t1
	float f2
	char * t3
PREINIT:
	short (*func)( float, char *, float, char * );
CODE:
	func   = INT2PTR(short(*)( float, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sftfi( c_func, f0, t1, f2, i3 )
	SV* c_func
	float f0
	char * t1
	float f2
	int i3
PREINIT:
	short (*func)( float, char *, float, int );
CODE:
	func   = INT2PTR(short(*)( float, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sfttd( c_func, f0, t1, t2, d3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	double d3
PREINIT:
	short (*func)( float, char *, char *, double );
CODE:
	func   = INT2PTR(short(*)( float, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sftts( c_func, f0, t1, t2, s3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	short s3
PREINIT:
	short (*func)( float, char *, char *, short );
CODE:
	func   = INT2PTR(short(*)( float, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sfttf( c_func, f0, t1, t2, f3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	float f3
PREINIT:
	short (*func)( float, char *, char *, float );
CODE:
	func   = INT2PTR(short(*)( float, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sfttt( c_func, f0, t1, t2, t3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	char * t3
PREINIT:
	short (*func)( float, char *, char *, char * );
CODE:
	func   = INT2PTR(short(*)( float, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sftti( c_func, f0, t1, t2, i3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	int i3
PREINIT:
	short (*func)( float, char *, char *, int );
CODE:
	func   = INT2PTR(short(*)( float, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sftid( c_func, f0, t1, i2, d3 )
	SV* c_func
	float f0
	char * t1
	int i2
	double d3
PREINIT:
	short (*func)( float, char *, int, double );
CODE:
	func   = INT2PTR(short(*)( float, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sftis( c_func, f0, t1, i2, s3 )
	SV* c_func
	float f0
	char * t1
	int i2
	short s3
PREINIT:
	short (*func)( float, char *, int, short );
CODE:
	func   = INT2PTR(short(*)( float, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sftif( c_func, f0, t1, i2, f3 )
	SV* c_func
	float f0
	char * t1
	int i2
	float f3
PREINIT:
	short (*func)( float, char *, int, float );
CODE:
	func   = INT2PTR(short(*)( float, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sftit( c_func, f0, t1, i2, t3 )
	SV* c_func
	float f0
	char * t1
	int i2
	char * t3
PREINIT:
	short (*func)( float, char *, int, char * );
CODE:
	func   = INT2PTR(short(*)( float, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sftii( c_func, f0, t1, i2, i3 )
	SV* c_func
	float f0
	char * t1
	int i2
	int i3
PREINIT:
	short (*func)( float, char *, int, int );
CODE:
	func   = INT2PTR(short(*)( float, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sfidd( c_func, f0, i1, d2, d3 )
	SV* c_func
	float f0
	int i1
	double d2
	double d3
PREINIT:
	short (*func)( float, int, double, double );
CODE:
	func   = INT2PTR(short(*)( float, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sfids( c_func, f0, i1, d2, s3 )
	SV* c_func
	float f0
	int i1
	double d2
	short s3
PREINIT:
	short (*func)( float, int, double, short );
CODE:
	func   = INT2PTR(short(*)( float, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sfidf( c_func, f0, i1, d2, f3 )
	SV* c_func
	float f0
	int i1
	double d2
	float f3
PREINIT:
	short (*func)( float, int, double, float );
CODE:
	func   = INT2PTR(short(*)( float, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sfidt( c_func, f0, i1, d2, t3 )
	SV* c_func
	float f0
	int i1
	double d2
	char * t3
PREINIT:
	short (*func)( float, int, double, char * );
CODE:
	func   = INT2PTR(short(*)( float, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sfidi( c_func, f0, i1, d2, i3 )
	SV* c_func
	float f0
	int i1
	double d2
	int i3
PREINIT:
	short (*func)( float, int, double, int );
CODE:
	func   = INT2PTR(short(*)( float, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sfisd( c_func, f0, i1, s2, d3 )
	SV* c_func
	float f0
	int i1
	short s2
	double d3
PREINIT:
	short (*func)( float, int, short, double );
CODE:
	func   = INT2PTR(short(*)( float, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sfiss( c_func, f0, i1, s2, s3 )
	SV* c_func
	float f0
	int i1
	short s2
	short s3
PREINIT:
	short (*func)( float, int, short, short );
CODE:
	func   = INT2PTR(short(*)( float, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sfisf( c_func, f0, i1, s2, f3 )
	SV* c_func
	float f0
	int i1
	short s2
	float f3
PREINIT:
	short (*func)( float, int, short, float );
CODE:
	func   = INT2PTR(short(*)( float, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sfist( c_func, f0, i1, s2, t3 )
	SV* c_func
	float f0
	int i1
	short s2
	char * t3
PREINIT:
	short (*func)( float, int, short, char * );
CODE:
	func   = INT2PTR(short(*)( float, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sfisi( c_func, f0, i1, s2, i3 )
	SV* c_func
	float f0
	int i1
	short s2
	int i3
PREINIT:
	short (*func)( float, int, short, int );
CODE:
	func   = INT2PTR(short(*)( float, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sfifd( c_func, f0, i1, f2, d3 )
	SV* c_func
	float f0
	int i1
	float f2
	double d3
PREINIT:
	short (*func)( float, int, float, double );
CODE:
	func   = INT2PTR(short(*)( float, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sfifs( c_func, f0, i1, f2, s3 )
	SV* c_func
	float f0
	int i1
	float f2
	short s3
PREINIT:
	short (*func)( float, int, float, short );
CODE:
	func   = INT2PTR(short(*)( float, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sfiff( c_func, f0, i1, f2, f3 )
	SV* c_func
	float f0
	int i1
	float f2
	float f3
PREINIT:
	short (*func)( float, int, float, float );
CODE:
	func   = INT2PTR(short(*)( float, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sfift( c_func, f0, i1, f2, t3 )
	SV* c_func
	float f0
	int i1
	float f2
	char * t3
PREINIT:
	short (*func)( float, int, float, char * );
CODE:
	func   = INT2PTR(short(*)( float, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sfifi( c_func, f0, i1, f2, i3 )
	SV* c_func
	float f0
	int i1
	float f2
	int i3
PREINIT:
	short (*func)( float, int, float, int );
CODE:
	func   = INT2PTR(short(*)( float, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sfitd( c_func, f0, i1, t2, d3 )
	SV* c_func
	float f0
	int i1
	char * t2
	double d3
PREINIT:
	short (*func)( float, int, char *, double );
CODE:
	func   = INT2PTR(short(*)( float, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sfits( c_func, f0, i1, t2, s3 )
	SV* c_func
	float f0
	int i1
	char * t2
	short s3
PREINIT:
	short (*func)( float, int, char *, short );
CODE:
	func   = INT2PTR(short(*)( float, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sfitf( c_func, f0, i1, t2, f3 )
	SV* c_func
	float f0
	int i1
	char * t2
	float f3
PREINIT:
	short (*func)( float, int, char *, float );
CODE:
	func   = INT2PTR(short(*)( float, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sfitt( c_func, f0, i1, t2, t3 )
	SV* c_func
	float f0
	int i1
	char * t2
	char * t3
PREINIT:
	short (*func)( float, int, char *, char * );
CODE:
	func   = INT2PTR(short(*)( float, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sfiti( c_func, f0, i1, t2, i3 )
	SV* c_func
	float f0
	int i1
	char * t2
	int i3
PREINIT:
	short (*func)( float, int, char *, int );
CODE:
	func   = INT2PTR(short(*)( float, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sfiid( c_func, f0, i1, i2, d3 )
	SV* c_func
	float f0
	int i1
	int i2
	double d3
PREINIT:
	short (*func)( float, int, int, double );
CODE:
	func   = INT2PTR(short(*)( float, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sfiis( c_func, f0, i1, i2, s3 )
	SV* c_func
	float f0
	int i1
	int i2
	short s3
PREINIT:
	short (*func)( float, int, int, short );
CODE:
	func   = INT2PTR(short(*)( float, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sfiif( c_func, f0, i1, i2, f3 )
	SV* c_func
	float f0
	int i1
	int i2
	float f3
PREINIT:
	short (*func)( float, int, int, float );
CODE:
	func   = INT2PTR(short(*)( float, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sfiit( c_func, f0, i1, i2, t3 )
	SV* c_func
	float f0
	int i1
	int i2
	char * t3
PREINIT:
	short (*func)( float, int, int, char * );
CODE:
	func   = INT2PTR(short(*)( float, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sfiii( c_func, f0, i1, i2, i3 )
	SV* c_func
	float f0
	int i1
	int i2
	int i3
PREINIT:
	short (*func)( float, int, int, int );
CODE:
	func   = INT2PTR(short(*)( float, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_stddd( c_func, t0, d1, d2, d3 )
	SV* c_func
	char * t0
	double d1
	double d2
	double d3
PREINIT:
	short (*func)( char *, double, double, double );
CODE:
	func   = INT2PTR(short(*)( char *, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_stdds( c_func, t0, d1, d2, s3 )
	SV* c_func
	char * t0
	double d1
	double d2
	short s3
PREINIT:
	short (*func)( char *, double, double, short );
CODE:
	func   = INT2PTR(short(*)( char *, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_stddf( c_func, t0, d1, d2, f3 )
	SV* c_func
	char * t0
	double d1
	double d2
	float f3
PREINIT:
	short (*func)( char *, double, double, float );
CODE:
	func   = INT2PTR(short(*)( char *, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_stddt( c_func, t0, d1, d2, t3 )
	SV* c_func
	char * t0
	double d1
	double d2
	char * t3
PREINIT:
	short (*func)( char *, double, double, char * );
CODE:
	func   = INT2PTR(short(*)( char *, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_stddi( c_func, t0, d1, d2, i3 )
	SV* c_func
	char * t0
	double d1
	double d2
	int i3
PREINIT:
	short (*func)( char *, double, double, int );
CODE:
	func   = INT2PTR(short(*)( char *, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_stdsd( c_func, t0, d1, s2, d3 )
	SV* c_func
	char * t0
	double d1
	short s2
	double d3
PREINIT:
	short (*func)( char *, double, short, double );
CODE:
	func   = INT2PTR(short(*)( char *, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_stdss( c_func, t0, d1, s2, s3 )
	SV* c_func
	char * t0
	double d1
	short s2
	short s3
PREINIT:
	short (*func)( char *, double, short, short );
CODE:
	func   = INT2PTR(short(*)( char *, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_stdsf( c_func, t0, d1, s2, f3 )
	SV* c_func
	char * t0
	double d1
	short s2
	float f3
PREINIT:
	short (*func)( char *, double, short, float );
CODE:
	func   = INT2PTR(short(*)( char *, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_stdst( c_func, t0, d1, s2, t3 )
	SV* c_func
	char * t0
	double d1
	short s2
	char * t3
PREINIT:
	short (*func)( char *, double, short, char * );
CODE:
	func   = INT2PTR(short(*)( char *, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_stdsi( c_func, t0, d1, s2, i3 )
	SV* c_func
	char * t0
	double d1
	short s2
	int i3
PREINIT:
	short (*func)( char *, double, short, int );
CODE:
	func   = INT2PTR(short(*)( char *, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_stdfd( c_func, t0, d1, f2, d3 )
	SV* c_func
	char * t0
	double d1
	float f2
	double d3
PREINIT:
	short (*func)( char *, double, float, double );
CODE:
	func   = INT2PTR(short(*)( char *, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_stdfs( c_func, t0, d1, f2, s3 )
	SV* c_func
	char * t0
	double d1
	float f2
	short s3
PREINIT:
	short (*func)( char *, double, float, short );
CODE:
	func   = INT2PTR(short(*)( char *, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_stdff( c_func, t0, d1, f2, f3 )
	SV* c_func
	char * t0
	double d1
	float f2
	float f3
PREINIT:
	short (*func)( char *, double, float, float );
CODE:
	func   = INT2PTR(short(*)( char *, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_stdft( c_func, t0, d1, f2, t3 )
	SV* c_func
	char * t0
	double d1
	float f2
	char * t3
PREINIT:
	short (*func)( char *, double, float, char * );
CODE:
	func   = INT2PTR(short(*)( char *, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_stdfi( c_func, t0, d1, f2, i3 )
	SV* c_func
	char * t0
	double d1
	float f2
	int i3
PREINIT:
	short (*func)( char *, double, float, int );
CODE:
	func   = INT2PTR(short(*)( char *, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_stdtd( c_func, t0, d1, t2, d3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	double d3
PREINIT:
	short (*func)( char *, double, char *, double );
CODE:
	func   = INT2PTR(short(*)( char *, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_stdts( c_func, t0, d1, t2, s3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	short s3
PREINIT:
	short (*func)( char *, double, char *, short );
CODE:
	func   = INT2PTR(short(*)( char *, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_stdtf( c_func, t0, d1, t2, f3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	float f3
PREINIT:
	short (*func)( char *, double, char *, float );
CODE:
	func   = INT2PTR(short(*)( char *, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_stdtt( c_func, t0, d1, t2, t3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	char * t3
PREINIT:
	short (*func)( char *, double, char *, char * );
CODE:
	func   = INT2PTR(short(*)( char *, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_stdti( c_func, t0, d1, t2, i3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	int i3
PREINIT:
	short (*func)( char *, double, char *, int );
CODE:
	func   = INT2PTR(short(*)( char *, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_stdid( c_func, t0, d1, i2, d3 )
	SV* c_func
	char * t0
	double d1
	int i2
	double d3
PREINIT:
	short (*func)( char *, double, int, double );
CODE:
	func   = INT2PTR(short(*)( char *, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_stdis( c_func, t0, d1, i2, s3 )
	SV* c_func
	char * t0
	double d1
	int i2
	short s3
PREINIT:
	short (*func)( char *, double, int, short );
CODE:
	func   = INT2PTR(short(*)( char *, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_stdif( c_func, t0, d1, i2, f3 )
	SV* c_func
	char * t0
	double d1
	int i2
	float f3
PREINIT:
	short (*func)( char *, double, int, float );
CODE:
	func   = INT2PTR(short(*)( char *, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_stdit( c_func, t0, d1, i2, t3 )
	SV* c_func
	char * t0
	double d1
	int i2
	char * t3
PREINIT:
	short (*func)( char *, double, int, char * );
CODE:
	func   = INT2PTR(short(*)( char *, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_stdii( c_func, t0, d1, i2, i3 )
	SV* c_func
	char * t0
	double d1
	int i2
	int i3
PREINIT:
	short (*func)( char *, double, int, int );
CODE:
	func   = INT2PTR(short(*)( char *, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_stsdd( c_func, t0, s1, d2, d3 )
	SV* c_func
	char * t0
	short s1
	double d2
	double d3
PREINIT:
	short (*func)( char *, short, double, double );
CODE:
	func   = INT2PTR(short(*)( char *, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_stsds( c_func, t0, s1, d2, s3 )
	SV* c_func
	char * t0
	short s1
	double d2
	short s3
PREINIT:
	short (*func)( char *, short, double, short );
CODE:
	func   = INT2PTR(short(*)( char *, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_stsdf( c_func, t0, s1, d2, f3 )
	SV* c_func
	char * t0
	short s1
	double d2
	float f3
PREINIT:
	short (*func)( char *, short, double, float );
CODE:
	func   = INT2PTR(short(*)( char *, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_stsdt( c_func, t0, s1, d2, t3 )
	SV* c_func
	char * t0
	short s1
	double d2
	char * t3
PREINIT:
	short (*func)( char *, short, double, char * );
CODE:
	func   = INT2PTR(short(*)( char *, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_stsdi( c_func, t0, s1, d2, i3 )
	SV* c_func
	char * t0
	short s1
	double d2
	int i3
PREINIT:
	short (*func)( char *, short, double, int );
CODE:
	func   = INT2PTR(short(*)( char *, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_stssd( c_func, t0, s1, s2, d3 )
	SV* c_func
	char * t0
	short s1
	short s2
	double d3
PREINIT:
	short (*func)( char *, short, short, double );
CODE:
	func   = INT2PTR(short(*)( char *, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_stsss( c_func, t0, s1, s2, s3 )
	SV* c_func
	char * t0
	short s1
	short s2
	short s3
PREINIT:
	short (*func)( char *, short, short, short );
CODE:
	func   = INT2PTR(short(*)( char *, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_stssf( c_func, t0, s1, s2, f3 )
	SV* c_func
	char * t0
	short s1
	short s2
	float f3
PREINIT:
	short (*func)( char *, short, short, float );
CODE:
	func   = INT2PTR(short(*)( char *, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_stsst( c_func, t0, s1, s2, t3 )
	SV* c_func
	char * t0
	short s1
	short s2
	char * t3
PREINIT:
	short (*func)( char *, short, short, char * );
CODE:
	func   = INT2PTR(short(*)( char *, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_stssi( c_func, t0, s1, s2, i3 )
	SV* c_func
	char * t0
	short s1
	short s2
	int i3
PREINIT:
	short (*func)( char *, short, short, int );
CODE:
	func   = INT2PTR(short(*)( char *, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_stsfd( c_func, t0, s1, f2, d3 )
	SV* c_func
	char * t0
	short s1
	float f2
	double d3
PREINIT:
	short (*func)( char *, short, float, double );
CODE:
	func   = INT2PTR(short(*)( char *, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_stsfs( c_func, t0, s1, f2, s3 )
	SV* c_func
	char * t0
	short s1
	float f2
	short s3
PREINIT:
	short (*func)( char *, short, float, short );
CODE:
	func   = INT2PTR(short(*)( char *, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_stsff( c_func, t0, s1, f2, f3 )
	SV* c_func
	char * t0
	short s1
	float f2
	float f3
PREINIT:
	short (*func)( char *, short, float, float );
CODE:
	func   = INT2PTR(short(*)( char *, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_stsft( c_func, t0, s1, f2, t3 )
	SV* c_func
	char * t0
	short s1
	float f2
	char * t3
PREINIT:
	short (*func)( char *, short, float, char * );
CODE:
	func   = INT2PTR(short(*)( char *, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_stsfi( c_func, t0, s1, f2, i3 )
	SV* c_func
	char * t0
	short s1
	float f2
	int i3
PREINIT:
	short (*func)( char *, short, float, int );
CODE:
	func   = INT2PTR(short(*)( char *, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_ststd( c_func, t0, s1, t2, d3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	double d3
PREINIT:
	short (*func)( char *, short, char *, double );
CODE:
	func   = INT2PTR(short(*)( char *, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_ststs( c_func, t0, s1, t2, s3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	short s3
PREINIT:
	short (*func)( char *, short, char *, short );
CODE:
	func   = INT2PTR(short(*)( char *, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_ststf( c_func, t0, s1, t2, f3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	float f3
PREINIT:
	short (*func)( char *, short, char *, float );
CODE:
	func   = INT2PTR(short(*)( char *, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_ststt( c_func, t0, s1, t2, t3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	char * t3
PREINIT:
	short (*func)( char *, short, char *, char * );
CODE:
	func   = INT2PTR(short(*)( char *, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_ststi( c_func, t0, s1, t2, i3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	int i3
PREINIT:
	short (*func)( char *, short, char *, int );
CODE:
	func   = INT2PTR(short(*)( char *, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_stsid( c_func, t0, s1, i2, d3 )
	SV* c_func
	char * t0
	short s1
	int i2
	double d3
PREINIT:
	short (*func)( char *, short, int, double );
CODE:
	func   = INT2PTR(short(*)( char *, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_stsis( c_func, t0, s1, i2, s3 )
	SV* c_func
	char * t0
	short s1
	int i2
	short s3
PREINIT:
	short (*func)( char *, short, int, short );
CODE:
	func   = INT2PTR(short(*)( char *, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_stsif( c_func, t0, s1, i2, f3 )
	SV* c_func
	char * t0
	short s1
	int i2
	float f3
PREINIT:
	short (*func)( char *, short, int, float );
CODE:
	func   = INT2PTR(short(*)( char *, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_stsit( c_func, t0, s1, i2, t3 )
	SV* c_func
	char * t0
	short s1
	int i2
	char * t3
PREINIT:
	short (*func)( char *, short, int, char * );
CODE:
	func   = INT2PTR(short(*)( char *, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_stsii( c_func, t0, s1, i2, i3 )
	SV* c_func
	char * t0
	short s1
	int i2
	int i3
PREINIT:
	short (*func)( char *, short, int, int );
CODE:
	func   = INT2PTR(short(*)( char *, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_stfdd( c_func, t0, f1, d2, d3 )
	SV* c_func
	char * t0
	float f1
	double d2
	double d3
PREINIT:
	short (*func)( char *, float, double, double );
CODE:
	func   = INT2PTR(short(*)( char *, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_stfds( c_func, t0, f1, d2, s3 )
	SV* c_func
	char * t0
	float f1
	double d2
	short s3
PREINIT:
	short (*func)( char *, float, double, short );
CODE:
	func   = INT2PTR(short(*)( char *, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_stfdf( c_func, t0, f1, d2, f3 )
	SV* c_func
	char * t0
	float f1
	double d2
	float f3
PREINIT:
	short (*func)( char *, float, double, float );
CODE:
	func   = INT2PTR(short(*)( char *, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_stfdt( c_func, t0, f1, d2, t3 )
	SV* c_func
	char * t0
	float f1
	double d2
	char * t3
PREINIT:
	short (*func)( char *, float, double, char * );
CODE:
	func   = INT2PTR(short(*)( char *, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_stfdi( c_func, t0, f1, d2, i3 )
	SV* c_func
	char * t0
	float f1
	double d2
	int i3
PREINIT:
	short (*func)( char *, float, double, int );
CODE:
	func   = INT2PTR(short(*)( char *, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_stfsd( c_func, t0, f1, s2, d3 )
	SV* c_func
	char * t0
	float f1
	short s2
	double d3
PREINIT:
	short (*func)( char *, float, short, double );
CODE:
	func   = INT2PTR(short(*)( char *, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_stfss( c_func, t0, f1, s2, s3 )
	SV* c_func
	char * t0
	float f1
	short s2
	short s3
PREINIT:
	short (*func)( char *, float, short, short );
CODE:
	func   = INT2PTR(short(*)( char *, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_stfsf( c_func, t0, f1, s2, f3 )
	SV* c_func
	char * t0
	float f1
	short s2
	float f3
PREINIT:
	short (*func)( char *, float, short, float );
CODE:
	func   = INT2PTR(short(*)( char *, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_stfst( c_func, t0, f1, s2, t3 )
	SV* c_func
	char * t0
	float f1
	short s2
	char * t3
PREINIT:
	short (*func)( char *, float, short, char * );
CODE:
	func   = INT2PTR(short(*)( char *, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_stfsi( c_func, t0, f1, s2, i3 )
	SV* c_func
	char * t0
	float f1
	short s2
	int i3
PREINIT:
	short (*func)( char *, float, short, int );
CODE:
	func   = INT2PTR(short(*)( char *, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_stffd( c_func, t0, f1, f2, d3 )
	SV* c_func
	char * t0
	float f1
	float f2
	double d3
PREINIT:
	short (*func)( char *, float, float, double );
CODE:
	func   = INT2PTR(short(*)( char *, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_stffs( c_func, t0, f1, f2, s3 )
	SV* c_func
	char * t0
	float f1
	float f2
	short s3
PREINIT:
	short (*func)( char *, float, float, short );
CODE:
	func   = INT2PTR(short(*)( char *, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_stfff( c_func, t0, f1, f2, f3 )
	SV* c_func
	char * t0
	float f1
	float f2
	float f3
PREINIT:
	short (*func)( char *, float, float, float );
CODE:
	func   = INT2PTR(short(*)( char *, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_stfft( c_func, t0, f1, f2, t3 )
	SV* c_func
	char * t0
	float f1
	float f2
	char * t3
PREINIT:
	short (*func)( char *, float, float, char * );
CODE:
	func   = INT2PTR(short(*)( char *, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_stffi( c_func, t0, f1, f2, i3 )
	SV* c_func
	char * t0
	float f1
	float f2
	int i3
PREINIT:
	short (*func)( char *, float, float, int );
CODE:
	func   = INT2PTR(short(*)( char *, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_stftd( c_func, t0, f1, t2, d3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	double d3
PREINIT:
	short (*func)( char *, float, char *, double );
CODE:
	func   = INT2PTR(short(*)( char *, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_stfts( c_func, t0, f1, t2, s3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	short s3
PREINIT:
	short (*func)( char *, float, char *, short );
CODE:
	func   = INT2PTR(short(*)( char *, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_stftf( c_func, t0, f1, t2, f3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	float f3
PREINIT:
	short (*func)( char *, float, char *, float );
CODE:
	func   = INT2PTR(short(*)( char *, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_stftt( c_func, t0, f1, t2, t3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	char * t3
PREINIT:
	short (*func)( char *, float, char *, char * );
CODE:
	func   = INT2PTR(short(*)( char *, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_stfti( c_func, t0, f1, t2, i3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	int i3
PREINIT:
	short (*func)( char *, float, char *, int );
CODE:
	func   = INT2PTR(short(*)( char *, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_stfid( c_func, t0, f1, i2, d3 )
	SV* c_func
	char * t0
	float f1
	int i2
	double d3
PREINIT:
	short (*func)( char *, float, int, double );
CODE:
	func   = INT2PTR(short(*)( char *, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_stfis( c_func, t0, f1, i2, s3 )
	SV* c_func
	char * t0
	float f1
	int i2
	short s3
PREINIT:
	short (*func)( char *, float, int, short );
CODE:
	func   = INT2PTR(short(*)( char *, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_stfif( c_func, t0, f1, i2, f3 )
	SV* c_func
	char * t0
	float f1
	int i2
	float f3
PREINIT:
	short (*func)( char *, float, int, float );
CODE:
	func   = INT2PTR(short(*)( char *, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_stfit( c_func, t0, f1, i2, t3 )
	SV* c_func
	char * t0
	float f1
	int i2
	char * t3
PREINIT:
	short (*func)( char *, float, int, char * );
CODE:
	func   = INT2PTR(short(*)( char *, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_stfii( c_func, t0, f1, i2, i3 )
	SV* c_func
	char * t0
	float f1
	int i2
	int i3
PREINIT:
	short (*func)( char *, float, int, int );
CODE:
	func   = INT2PTR(short(*)( char *, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sttdd( c_func, t0, t1, d2, d3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	double d3
PREINIT:
	short (*func)( char *, char *, double, double );
CODE:
	func   = INT2PTR(short(*)( char *, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sttds( c_func, t0, t1, d2, s3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	short s3
PREINIT:
	short (*func)( char *, char *, double, short );
CODE:
	func   = INT2PTR(short(*)( char *, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sttdf( c_func, t0, t1, d2, f3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	float f3
PREINIT:
	short (*func)( char *, char *, double, float );
CODE:
	func   = INT2PTR(short(*)( char *, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sttdt( c_func, t0, t1, d2, t3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	char * t3
PREINIT:
	short (*func)( char *, char *, double, char * );
CODE:
	func   = INT2PTR(short(*)( char *, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sttdi( c_func, t0, t1, d2, i3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	int i3
PREINIT:
	short (*func)( char *, char *, double, int );
CODE:
	func   = INT2PTR(short(*)( char *, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sttsd( c_func, t0, t1, s2, d3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	double d3
PREINIT:
	short (*func)( char *, char *, short, double );
CODE:
	func   = INT2PTR(short(*)( char *, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sttss( c_func, t0, t1, s2, s3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	short s3
PREINIT:
	short (*func)( char *, char *, short, short );
CODE:
	func   = INT2PTR(short(*)( char *, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sttsf( c_func, t0, t1, s2, f3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	float f3
PREINIT:
	short (*func)( char *, char *, short, float );
CODE:
	func   = INT2PTR(short(*)( char *, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sttst( c_func, t0, t1, s2, t3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	char * t3
PREINIT:
	short (*func)( char *, char *, short, char * );
CODE:
	func   = INT2PTR(short(*)( char *, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sttsi( c_func, t0, t1, s2, i3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	int i3
PREINIT:
	short (*func)( char *, char *, short, int );
CODE:
	func   = INT2PTR(short(*)( char *, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sttfd( c_func, t0, t1, f2, d3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	double d3
PREINIT:
	short (*func)( char *, char *, float, double );
CODE:
	func   = INT2PTR(short(*)( char *, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sttfs( c_func, t0, t1, f2, s3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	short s3
PREINIT:
	short (*func)( char *, char *, float, short );
CODE:
	func   = INT2PTR(short(*)( char *, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sttff( c_func, t0, t1, f2, f3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	float f3
PREINIT:
	short (*func)( char *, char *, float, float );
CODE:
	func   = INT2PTR(short(*)( char *, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sttft( c_func, t0, t1, f2, t3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	char * t3
PREINIT:
	short (*func)( char *, char *, float, char * );
CODE:
	func   = INT2PTR(short(*)( char *, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sttfi( c_func, t0, t1, f2, i3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	int i3
PREINIT:
	short (*func)( char *, char *, float, int );
CODE:
	func   = INT2PTR(short(*)( char *, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_stttd( c_func, t0, t1, t2, d3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	double d3
PREINIT:
	short (*func)( char *, char *, char *, double );
CODE:
	func   = INT2PTR(short(*)( char *, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sttts( c_func, t0, t1, t2, s3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	short s3
PREINIT:
	short (*func)( char *, char *, char *, short );
CODE:
	func   = INT2PTR(short(*)( char *, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_stttf( c_func, t0, t1, t2, f3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	float f3
PREINIT:
	short (*func)( char *, char *, char *, float );
CODE:
	func   = INT2PTR(short(*)( char *, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_stttt( c_func, t0, t1, t2, t3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	char * t3
PREINIT:
	short (*func)( char *, char *, char *, char * );
CODE:
	func   = INT2PTR(short(*)( char *, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sttti( c_func, t0, t1, t2, i3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	int i3
PREINIT:
	short (*func)( char *, char *, char *, int );
CODE:
	func   = INT2PTR(short(*)( char *, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sttid( c_func, t0, t1, i2, d3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	double d3
PREINIT:
	short (*func)( char *, char *, int, double );
CODE:
	func   = INT2PTR(short(*)( char *, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sttis( c_func, t0, t1, i2, s3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	short s3
PREINIT:
	short (*func)( char *, char *, int, short );
CODE:
	func   = INT2PTR(short(*)( char *, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sttif( c_func, t0, t1, i2, f3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	float f3
PREINIT:
	short (*func)( char *, char *, int, float );
CODE:
	func   = INT2PTR(short(*)( char *, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sttit( c_func, t0, t1, i2, t3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	char * t3
PREINIT:
	short (*func)( char *, char *, int, char * );
CODE:
	func   = INT2PTR(short(*)( char *, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sttii( c_func, t0, t1, i2, i3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	int i3
PREINIT:
	short (*func)( char *, char *, int, int );
CODE:
	func   = INT2PTR(short(*)( char *, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_stidd( c_func, t0, i1, d2, d3 )
	SV* c_func
	char * t0
	int i1
	double d2
	double d3
PREINIT:
	short (*func)( char *, int, double, double );
CODE:
	func   = INT2PTR(short(*)( char *, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_stids( c_func, t0, i1, d2, s3 )
	SV* c_func
	char * t0
	int i1
	double d2
	short s3
PREINIT:
	short (*func)( char *, int, double, short );
CODE:
	func   = INT2PTR(short(*)( char *, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_stidf( c_func, t0, i1, d2, f3 )
	SV* c_func
	char * t0
	int i1
	double d2
	float f3
PREINIT:
	short (*func)( char *, int, double, float );
CODE:
	func   = INT2PTR(short(*)( char *, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_stidt( c_func, t0, i1, d2, t3 )
	SV* c_func
	char * t0
	int i1
	double d2
	char * t3
PREINIT:
	short (*func)( char *, int, double, char * );
CODE:
	func   = INT2PTR(short(*)( char *, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_stidi( c_func, t0, i1, d2, i3 )
	SV* c_func
	char * t0
	int i1
	double d2
	int i3
PREINIT:
	short (*func)( char *, int, double, int );
CODE:
	func   = INT2PTR(short(*)( char *, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_stisd( c_func, t0, i1, s2, d3 )
	SV* c_func
	char * t0
	int i1
	short s2
	double d3
PREINIT:
	short (*func)( char *, int, short, double );
CODE:
	func   = INT2PTR(short(*)( char *, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_stiss( c_func, t0, i1, s2, s3 )
	SV* c_func
	char * t0
	int i1
	short s2
	short s3
PREINIT:
	short (*func)( char *, int, short, short );
CODE:
	func   = INT2PTR(short(*)( char *, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_stisf( c_func, t0, i1, s2, f3 )
	SV* c_func
	char * t0
	int i1
	short s2
	float f3
PREINIT:
	short (*func)( char *, int, short, float );
CODE:
	func   = INT2PTR(short(*)( char *, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_stist( c_func, t0, i1, s2, t3 )
	SV* c_func
	char * t0
	int i1
	short s2
	char * t3
PREINIT:
	short (*func)( char *, int, short, char * );
CODE:
	func   = INT2PTR(short(*)( char *, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_stisi( c_func, t0, i1, s2, i3 )
	SV* c_func
	char * t0
	int i1
	short s2
	int i3
PREINIT:
	short (*func)( char *, int, short, int );
CODE:
	func   = INT2PTR(short(*)( char *, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_stifd( c_func, t0, i1, f2, d3 )
	SV* c_func
	char * t0
	int i1
	float f2
	double d3
PREINIT:
	short (*func)( char *, int, float, double );
CODE:
	func   = INT2PTR(short(*)( char *, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_stifs( c_func, t0, i1, f2, s3 )
	SV* c_func
	char * t0
	int i1
	float f2
	short s3
PREINIT:
	short (*func)( char *, int, float, short );
CODE:
	func   = INT2PTR(short(*)( char *, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_stiff( c_func, t0, i1, f2, f3 )
	SV* c_func
	char * t0
	int i1
	float f2
	float f3
PREINIT:
	short (*func)( char *, int, float, float );
CODE:
	func   = INT2PTR(short(*)( char *, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_stift( c_func, t0, i1, f2, t3 )
	SV* c_func
	char * t0
	int i1
	float f2
	char * t3
PREINIT:
	short (*func)( char *, int, float, char * );
CODE:
	func   = INT2PTR(short(*)( char *, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_stifi( c_func, t0, i1, f2, i3 )
	SV* c_func
	char * t0
	int i1
	float f2
	int i3
PREINIT:
	short (*func)( char *, int, float, int );
CODE:
	func   = INT2PTR(short(*)( char *, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_stitd( c_func, t0, i1, t2, d3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	double d3
PREINIT:
	short (*func)( char *, int, char *, double );
CODE:
	func   = INT2PTR(short(*)( char *, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_stits( c_func, t0, i1, t2, s3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	short s3
PREINIT:
	short (*func)( char *, int, char *, short );
CODE:
	func   = INT2PTR(short(*)( char *, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_stitf( c_func, t0, i1, t2, f3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	float f3
PREINIT:
	short (*func)( char *, int, char *, float );
CODE:
	func   = INT2PTR(short(*)( char *, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_stitt( c_func, t0, i1, t2, t3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	char * t3
PREINIT:
	short (*func)( char *, int, char *, char * );
CODE:
	func   = INT2PTR(short(*)( char *, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_stiti( c_func, t0, i1, t2, i3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	int i3
PREINIT:
	short (*func)( char *, int, char *, int );
CODE:
	func   = INT2PTR(short(*)( char *, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_stiid( c_func, t0, i1, i2, d3 )
	SV* c_func
	char * t0
	int i1
	int i2
	double d3
PREINIT:
	short (*func)( char *, int, int, double );
CODE:
	func   = INT2PTR(short(*)( char *, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_stiis( c_func, t0, i1, i2, s3 )
	SV* c_func
	char * t0
	int i1
	int i2
	short s3
PREINIT:
	short (*func)( char *, int, int, short );
CODE:
	func   = INT2PTR(short(*)( char *, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_stiif( c_func, t0, i1, i2, f3 )
	SV* c_func
	char * t0
	int i1
	int i2
	float f3
PREINIT:
	short (*func)( char *, int, int, float );
CODE:
	func   = INT2PTR(short(*)( char *, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_stiit( c_func, t0, i1, i2, t3 )
	SV* c_func
	char * t0
	int i1
	int i2
	char * t3
PREINIT:
	short (*func)( char *, int, int, char * );
CODE:
	func   = INT2PTR(short(*)( char *, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_stiii( c_func, t0, i1, i2, i3 )
	SV* c_func
	char * t0
	int i1
	int i2
	int i3
PREINIT:
	short (*func)( char *, int, int, int );
CODE:
	func   = INT2PTR(short(*)( char *, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_siddd( c_func, i0, d1, d2, d3 )
	SV* c_func
	int i0
	double d1
	double d2
	double d3
PREINIT:
	short (*func)( int, double, double, double );
CODE:
	func   = INT2PTR(short(*)( int, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sidds( c_func, i0, d1, d2, s3 )
	SV* c_func
	int i0
	double d1
	double d2
	short s3
PREINIT:
	short (*func)( int, double, double, short );
CODE:
	func   = INT2PTR(short(*)( int, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_siddf( c_func, i0, d1, d2, f3 )
	SV* c_func
	int i0
	double d1
	double d2
	float f3
PREINIT:
	short (*func)( int, double, double, float );
CODE:
	func   = INT2PTR(short(*)( int, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_siddt( c_func, i0, d1, d2, t3 )
	SV* c_func
	int i0
	double d1
	double d2
	char * t3
PREINIT:
	short (*func)( int, double, double, char * );
CODE:
	func   = INT2PTR(short(*)( int, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_siddi( c_func, i0, d1, d2, i3 )
	SV* c_func
	int i0
	double d1
	double d2
	int i3
PREINIT:
	short (*func)( int, double, double, int );
CODE:
	func   = INT2PTR(short(*)( int, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sidsd( c_func, i0, d1, s2, d3 )
	SV* c_func
	int i0
	double d1
	short s2
	double d3
PREINIT:
	short (*func)( int, double, short, double );
CODE:
	func   = INT2PTR(short(*)( int, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sidss( c_func, i0, d1, s2, s3 )
	SV* c_func
	int i0
	double d1
	short s2
	short s3
PREINIT:
	short (*func)( int, double, short, short );
CODE:
	func   = INT2PTR(short(*)( int, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sidsf( c_func, i0, d1, s2, f3 )
	SV* c_func
	int i0
	double d1
	short s2
	float f3
PREINIT:
	short (*func)( int, double, short, float );
CODE:
	func   = INT2PTR(short(*)( int, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sidst( c_func, i0, d1, s2, t3 )
	SV* c_func
	int i0
	double d1
	short s2
	char * t3
PREINIT:
	short (*func)( int, double, short, char * );
CODE:
	func   = INT2PTR(short(*)( int, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sidsi( c_func, i0, d1, s2, i3 )
	SV* c_func
	int i0
	double d1
	short s2
	int i3
PREINIT:
	short (*func)( int, double, short, int );
CODE:
	func   = INT2PTR(short(*)( int, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sidfd( c_func, i0, d1, f2, d3 )
	SV* c_func
	int i0
	double d1
	float f2
	double d3
PREINIT:
	short (*func)( int, double, float, double );
CODE:
	func   = INT2PTR(short(*)( int, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sidfs( c_func, i0, d1, f2, s3 )
	SV* c_func
	int i0
	double d1
	float f2
	short s3
PREINIT:
	short (*func)( int, double, float, short );
CODE:
	func   = INT2PTR(short(*)( int, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sidff( c_func, i0, d1, f2, f3 )
	SV* c_func
	int i0
	double d1
	float f2
	float f3
PREINIT:
	short (*func)( int, double, float, float );
CODE:
	func   = INT2PTR(short(*)( int, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sidft( c_func, i0, d1, f2, t3 )
	SV* c_func
	int i0
	double d1
	float f2
	char * t3
PREINIT:
	short (*func)( int, double, float, char * );
CODE:
	func   = INT2PTR(short(*)( int, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sidfi( c_func, i0, d1, f2, i3 )
	SV* c_func
	int i0
	double d1
	float f2
	int i3
PREINIT:
	short (*func)( int, double, float, int );
CODE:
	func   = INT2PTR(short(*)( int, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sidtd( c_func, i0, d1, t2, d3 )
	SV* c_func
	int i0
	double d1
	char * t2
	double d3
PREINIT:
	short (*func)( int, double, char *, double );
CODE:
	func   = INT2PTR(short(*)( int, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sidts( c_func, i0, d1, t2, s3 )
	SV* c_func
	int i0
	double d1
	char * t2
	short s3
PREINIT:
	short (*func)( int, double, char *, short );
CODE:
	func   = INT2PTR(short(*)( int, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sidtf( c_func, i0, d1, t2, f3 )
	SV* c_func
	int i0
	double d1
	char * t2
	float f3
PREINIT:
	short (*func)( int, double, char *, float );
CODE:
	func   = INT2PTR(short(*)( int, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sidtt( c_func, i0, d1, t2, t3 )
	SV* c_func
	int i0
	double d1
	char * t2
	char * t3
PREINIT:
	short (*func)( int, double, char *, char * );
CODE:
	func   = INT2PTR(short(*)( int, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sidti( c_func, i0, d1, t2, i3 )
	SV* c_func
	int i0
	double d1
	char * t2
	int i3
PREINIT:
	short (*func)( int, double, char *, int );
CODE:
	func   = INT2PTR(short(*)( int, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sidid( c_func, i0, d1, i2, d3 )
	SV* c_func
	int i0
	double d1
	int i2
	double d3
PREINIT:
	short (*func)( int, double, int, double );
CODE:
	func   = INT2PTR(short(*)( int, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sidis( c_func, i0, d1, i2, s3 )
	SV* c_func
	int i0
	double d1
	int i2
	short s3
PREINIT:
	short (*func)( int, double, int, short );
CODE:
	func   = INT2PTR(short(*)( int, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sidif( c_func, i0, d1, i2, f3 )
	SV* c_func
	int i0
	double d1
	int i2
	float f3
PREINIT:
	short (*func)( int, double, int, float );
CODE:
	func   = INT2PTR(short(*)( int, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sidit( c_func, i0, d1, i2, t3 )
	SV* c_func
	int i0
	double d1
	int i2
	char * t3
PREINIT:
	short (*func)( int, double, int, char * );
CODE:
	func   = INT2PTR(short(*)( int, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sidii( c_func, i0, d1, i2, i3 )
	SV* c_func
	int i0
	double d1
	int i2
	int i3
PREINIT:
	short (*func)( int, double, int, int );
CODE:
	func   = INT2PTR(short(*)( int, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sisdd( c_func, i0, s1, d2, d3 )
	SV* c_func
	int i0
	short s1
	double d2
	double d3
PREINIT:
	short (*func)( int, short, double, double );
CODE:
	func   = INT2PTR(short(*)( int, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sisds( c_func, i0, s1, d2, s3 )
	SV* c_func
	int i0
	short s1
	double d2
	short s3
PREINIT:
	short (*func)( int, short, double, short );
CODE:
	func   = INT2PTR(short(*)( int, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sisdf( c_func, i0, s1, d2, f3 )
	SV* c_func
	int i0
	short s1
	double d2
	float f3
PREINIT:
	short (*func)( int, short, double, float );
CODE:
	func   = INT2PTR(short(*)( int, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sisdt( c_func, i0, s1, d2, t3 )
	SV* c_func
	int i0
	short s1
	double d2
	char * t3
PREINIT:
	short (*func)( int, short, double, char * );
CODE:
	func   = INT2PTR(short(*)( int, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sisdi( c_func, i0, s1, d2, i3 )
	SV* c_func
	int i0
	short s1
	double d2
	int i3
PREINIT:
	short (*func)( int, short, double, int );
CODE:
	func   = INT2PTR(short(*)( int, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sissd( c_func, i0, s1, s2, d3 )
	SV* c_func
	int i0
	short s1
	short s2
	double d3
PREINIT:
	short (*func)( int, short, short, double );
CODE:
	func   = INT2PTR(short(*)( int, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sisss( c_func, i0, s1, s2, s3 )
	SV* c_func
	int i0
	short s1
	short s2
	short s3
PREINIT:
	short (*func)( int, short, short, short );
CODE:
	func   = INT2PTR(short(*)( int, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sissf( c_func, i0, s1, s2, f3 )
	SV* c_func
	int i0
	short s1
	short s2
	float f3
PREINIT:
	short (*func)( int, short, short, float );
CODE:
	func   = INT2PTR(short(*)( int, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sisst( c_func, i0, s1, s2, t3 )
	SV* c_func
	int i0
	short s1
	short s2
	char * t3
PREINIT:
	short (*func)( int, short, short, char * );
CODE:
	func   = INT2PTR(short(*)( int, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sissi( c_func, i0, s1, s2, i3 )
	SV* c_func
	int i0
	short s1
	short s2
	int i3
PREINIT:
	short (*func)( int, short, short, int );
CODE:
	func   = INT2PTR(short(*)( int, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sisfd( c_func, i0, s1, f2, d3 )
	SV* c_func
	int i0
	short s1
	float f2
	double d3
PREINIT:
	short (*func)( int, short, float, double );
CODE:
	func   = INT2PTR(short(*)( int, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sisfs( c_func, i0, s1, f2, s3 )
	SV* c_func
	int i0
	short s1
	float f2
	short s3
PREINIT:
	short (*func)( int, short, float, short );
CODE:
	func   = INT2PTR(short(*)( int, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sisff( c_func, i0, s1, f2, f3 )
	SV* c_func
	int i0
	short s1
	float f2
	float f3
PREINIT:
	short (*func)( int, short, float, float );
CODE:
	func   = INT2PTR(short(*)( int, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sisft( c_func, i0, s1, f2, t3 )
	SV* c_func
	int i0
	short s1
	float f2
	char * t3
PREINIT:
	short (*func)( int, short, float, char * );
CODE:
	func   = INT2PTR(short(*)( int, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sisfi( c_func, i0, s1, f2, i3 )
	SV* c_func
	int i0
	short s1
	float f2
	int i3
PREINIT:
	short (*func)( int, short, float, int );
CODE:
	func   = INT2PTR(short(*)( int, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sistd( c_func, i0, s1, t2, d3 )
	SV* c_func
	int i0
	short s1
	char * t2
	double d3
PREINIT:
	short (*func)( int, short, char *, double );
CODE:
	func   = INT2PTR(short(*)( int, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sists( c_func, i0, s1, t2, s3 )
	SV* c_func
	int i0
	short s1
	char * t2
	short s3
PREINIT:
	short (*func)( int, short, char *, short );
CODE:
	func   = INT2PTR(short(*)( int, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sistf( c_func, i0, s1, t2, f3 )
	SV* c_func
	int i0
	short s1
	char * t2
	float f3
PREINIT:
	short (*func)( int, short, char *, float );
CODE:
	func   = INT2PTR(short(*)( int, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sistt( c_func, i0, s1, t2, t3 )
	SV* c_func
	int i0
	short s1
	char * t2
	char * t3
PREINIT:
	short (*func)( int, short, char *, char * );
CODE:
	func   = INT2PTR(short(*)( int, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sisti( c_func, i0, s1, t2, i3 )
	SV* c_func
	int i0
	short s1
	char * t2
	int i3
PREINIT:
	short (*func)( int, short, char *, int );
CODE:
	func   = INT2PTR(short(*)( int, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sisid( c_func, i0, s1, i2, d3 )
	SV* c_func
	int i0
	short s1
	int i2
	double d3
PREINIT:
	short (*func)( int, short, int, double );
CODE:
	func   = INT2PTR(short(*)( int, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sisis( c_func, i0, s1, i2, s3 )
	SV* c_func
	int i0
	short s1
	int i2
	short s3
PREINIT:
	short (*func)( int, short, int, short );
CODE:
	func   = INT2PTR(short(*)( int, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sisif( c_func, i0, s1, i2, f3 )
	SV* c_func
	int i0
	short s1
	int i2
	float f3
PREINIT:
	short (*func)( int, short, int, float );
CODE:
	func   = INT2PTR(short(*)( int, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sisit( c_func, i0, s1, i2, t3 )
	SV* c_func
	int i0
	short s1
	int i2
	char * t3
PREINIT:
	short (*func)( int, short, int, char * );
CODE:
	func   = INT2PTR(short(*)( int, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sisii( c_func, i0, s1, i2, i3 )
	SV* c_func
	int i0
	short s1
	int i2
	int i3
PREINIT:
	short (*func)( int, short, int, int );
CODE:
	func   = INT2PTR(short(*)( int, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sifdd( c_func, i0, f1, d2, d3 )
	SV* c_func
	int i0
	float f1
	double d2
	double d3
PREINIT:
	short (*func)( int, float, double, double );
CODE:
	func   = INT2PTR(short(*)( int, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sifds( c_func, i0, f1, d2, s3 )
	SV* c_func
	int i0
	float f1
	double d2
	short s3
PREINIT:
	short (*func)( int, float, double, short );
CODE:
	func   = INT2PTR(short(*)( int, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sifdf( c_func, i0, f1, d2, f3 )
	SV* c_func
	int i0
	float f1
	double d2
	float f3
PREINIT:
	short (*func)( int, float, double, float );
CODE:
	func   = INT2PTR(short(*)( int, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sifdt( c_func, i0, f1, d2, t3 )
	SV* c_func
	int i0
	float f1
	double d2
	char * t3
PREINIT:
	short (*func)( int, float, double, char * );
CODE:
	func   = INT2PTR(short(*)( int, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sifdi( c_func, i0, f1, d2, i3 )
	SV* c_func
	int i0
	float f1
	double d2
	int i3
PREINIT:
	short (*func)( int, float, double, int );
CODE:
	func   = INT2PTR(short(*)( int, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sifsd( c_func, i0, f1, s2, d3 )
	SV* c_func
	int i0
	float f1
	short s2
	double d3
PREINIT:
	short (*func)( int, float, short, double );
CODE:
	func   = INT2PTR(short(*)( int, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sifss( c_func, i0, f1, s2, s3 )
	SV* c_func
	int i0
	float f1
	short s2
	short s3
PREINIT:
	short (*func)( int, float, short, short );
CODE:
	func   = INT2PTR(short(*)( int, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sifsf( c_func, i0, f1, s2, f3 )
	SV* c_func
	int i0
	float f1
	short s2
	float f3
PREINIT:
	short (*func)( int, float, short, float );
CODE:
	func   = INT2PTR(short(*)( int, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sifst( c_func, i0, f1, s2, t3 )
	SV* c_func
	int i0
	float f1
	short s2
	char * t3
PREINIT:
	short (*func)( int, float, short, char * );
CODE:
	func   = INT2PTR(short(*)( int, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sifsi( c_func, i0, f1, s2, i3 )
	SV* c_func
	int i0
	float f1
	short s2
	int i3
PREINIT:
	short (*func)( int, float, short, int );
CODE:
	func   = INT2PTR(short(*)( int, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_siffd( c_func, i0, f1, f2, d3 )
	SV* c_func
	int i0
	float f1
	float f2
	double d3
PREINIT:
	short (*func)( int, float, float, double );
CODE:
	func   = INT2PTR(short(*)( int, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_siffs( c_func, i0, f1, f2, s3 )
	SV* c_func
	int i0
	float f1
	float f2
	short s3
PREINIT:
	short (*func)( int, float, float, short );
CODE:
	func   = INT2PTR(short(*)( int, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sifff( c_func, i0, f1, f2, f3 )
	SV* c_func
	int i0
	float f1
	float f2
	float f3
PREINIT:
	short (*func)( int, float, float, float );
CODE:
	func   = INT2PTR(short(*)( int, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sifft( c_func, i0, f1, f2, t3 )
	SV* c_func
	int i0
	float f1
	float f2
	char * t3
PREINIT:
	short (*func)( int, float, float, char * );
CODE:
	func   = INT2PTR(short(*)( int, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_siffi( c_func, i0, f1, f2, i3 )
	SV* c_func
	int i0
	float f1
	float f2
	int i3
PREINIT:
	short (*func)( int, float, float, int );
CODE:
	func   = INT2PTR(short(*)( int, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_siftd( c_func, i0, f1, t2, d3 )
	SV* c_func
	int i0
	float f1
	char * t2
	double d3
PREINIT:
	short (*func)( int, float, char *, double );
CODE:
	func   = INT2PTR(short(*)( int, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sifts( c_func, i0, f1, t2, s3 )
	SV* c_func
	int i0
	float f1
	char * t2
	short s3
PREINIT:
	short (*func)( int, float, char *, short );
CODE:
	func   = INT2PTR(short(*)( int, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_siftf( c_func, i0, f1, t2, f3 )
	SV* c_func
	int i0
	float f1
	char * t2
	float f3
PREINIT:
	short (*func)( int, float, char *, float );
CODE:
	func   = INT2PTR(short(*)( int, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_siftt( c_func, i0, f1, t2, t3 )
	SV* c_func
	int i0
	float f1
	char * t2
	char * t3
PREINIT:
	short (*func)( int, float, char *, char * );
CODE:
	func   = INT2PTR(short(*)( int, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sifti( c_func, i0, f1, t2, i3 )
	SV* c_func
	int i0
	float f1
	char * t2
	int i3
PREINIT:
	short (*func)( int, float, char *, int );
CODE:
	func   = INT2PTR(short(*)( int, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sifid( c_func, i0, f1, i2, d3 )
	SV* c_func
	int i0
	float f1
	int i2
	double d3
PREINIT:
	short (*func)( int, float, int, double );
CODE:
	func   = INT2PTR(short(*)( int, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sifis( c_func, i0, f1, i2, s3 )
	SV* c_func
	int i0
	float f1
	int i2
	short s3
PREINIT:
	short (*func)( int, float, int, short );
CODE:
	func   = INT2PTR(short(*)( int, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sifif( c_func, i0, f1, i2, f3 )
	SV* c_func
	int i0
	float f1
	int i2
	float f3
PREINIT:
	short (*func)( int, float, int, float );
CODE:
	func   = INT2PTR(short(*)( int, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sifit( c_func, i0, f1, i2, t3 )
	SV* c_func
	int i0
	float f1
	int i2
	char * t3
PREINIT:
	short (*func)( int, float, int, char * );
CODE:
	func   = INT2PTR(short(*)( int, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sifii( c_func, i0, f1, i2, i3 )
	SV* c_func
	int i0
	float f1
	int i2
	int i3
PREINIT:
	short (*func)( int, float, int, int );
CODE:
	func   = INT2PTR(short(*)( int, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_sitdd( c_func, i0, t1, d2, d3 )
	SV* c_func
	int i0
	char * t1
	double d2
	double d3
PREINIT:
	short (*func)( int, char *, double, double );
CODE:
	func   = INT2PTR(short(*)( int, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_sitds( c_func, i0, t1, d2, s3 )
	SV* c_func
	int i0
	char * t1
	double d2
	short s3
PREINIT:
	short (*func)( int, char *, double, short );
CODE:
	func   = INT2PTR(short(*)( int, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_sitdf( c_func, i0, t1, d2, f3 )
	SV* c_func
	int i0
	char * t1
	double d2
	float f3
PREINIT:
	short (*func)( int, char *, double, float );
CODE:
	func   = INT2PTR(short(*)( int, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_sitdt( c_func, i0, t1, d2, t3 )
	SV* c_func
	int i0
	char * t1
	double d2
	char * t3
PREINIT:
	short (*func)( int, char *, double, char * );
CODE:
	func   = INT2PTR(short(*)( int, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_sitdi( c_func, i0, t1, d2, i3 )
	SV* c_func
	int i0
	char * t1
	double d2
	int i3
PREINIT:
	short (*func)( int, char *, double, int );
CODE:
	func   = INT2PTR(short(*)( int, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_sitsd( c_func, i0, t1, s2, d3 )
	SV* c_func
	int i0
	char * t1
	short s2
	double d3
PREINIT:
	short (*func)( int, char *, short, double );
CODE:
	func   = INT2PTR(short(*)( int, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_sitss( c_func, i0, t1, s2, s3 )
	SV* c_func
	int i0
	char * t1
	short s2
	short s3
PREINIT:
	short (*func)( int, char *, short, short );
CODE:
	func   = INT2PTR(short(*)( int, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_sitsf( c_func, i0, t1, s2, f3 )
	SV* c_func
	int i0
	char * t1
	short s2
	float f3
PREINIT:
	short (*func)( int, char *, short, float );
CODE:
	func   = INT2PTR(short(*)( int, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_sitst( c_func, i0, t1, s2, t3 )
	SV* c_func
	int i0
	char * t1
	short s2
	char * t3
PREINIT:
	short (*func)( int, char *, short, char * );
CODE:
	func   = INT2PTR(short(*)( int, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_sitsi( c_func, i0, t1, s2, i3 )
	SV* c_func
	int i0
	char * t1
	short s2
	int i3
PREINIT:
	short (*func)( int, char *, short, int );
CODE:
	func   = INT2PTR(short(*)( int, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_sitfd( c_func, i0, t1, f2, d3 )
	SV* c_func
	int i0
	char * t1
	float f2
	double d3
PREINIT:
	short (*func)( int, char *, float, double );
CODE:
	func   = INT2PTR(short(*)( int, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_sitfs( c_func, i0, t1, f2, s3 )
	SV* c_func
	int i0
	char * t1
	float f2
	short s3
PREINIT:
	short (*func)( int, char *, float, short );
CODE:
	func   = INT2PTR(short(*)( int, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_sitff( c_func, i0, t1, f2, f3 )
	SV* c_func
	int i0
	char * t1
	float f2
	float f3
PREINIT:
	short (*func)( int, char *, float, float );
CODE:
	func   = INT2PTR(short(*)( int, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_sitft( c_func, i0, t1, f2, t3 )
	SV* c_func
	int i0
	char * t1
	float f2
	char * t3
PREINIT:
	short (*func)( int, char *, float, char * );
CODE:
	func   = INT2PTR(short(*)( int, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_sitfi( c_func, i0, t1, f2, i3 )
	SV* c_func
	int i0
	char * t1
	float f2
	int i3
PREINIT:
	short (*func)( int, char *, float, int );
CODE:
	func   = INT2PTR(short(*)( int, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_sittd( c_func, i0, t1, t2, d3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	double d3
PREINIT:
	short (*func)( int, char *, char *, double );
CODE:
	func   = INT2PTR(short(*)( int, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_sitts( c_func, i0, t1, t2, s3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	short s3
PREINIT:
	short (*func)( int, char *, char *, short );
CODE:
	func   = INT2PTR(short(*)( int, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_sittf( c_func, i0, t1, t2, f3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	float f3
PREINIT:
	short (*func)( int, char *, char *, float );
CODE:
	func   = INT2PTR(short(*)( int, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_sittt( c_func, i0, t1, t2, t3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	char * t3
PREINIT:
	short (*func)( int, char *, char *, char * );
CODE:
	func   = INT2PTR(short(*)( int, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_sitti( c_func, i0, t1, t2, i3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	int i3
PREINIT:
	short (*func)( int, char *, char *, int );
CODE:
	func   = INT2PTR(short(*)( int, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_sitid( c_func, i0, t1, i2, d3 )
	SV* c_func
	int i0
	char * t1
	int i2
	double d3
PREINIT:
	short (*func)( int, char *, int, double );
CODE:
	func   = INT2PTR(short(*)( int, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_sitis( c_func, i0, t1, i2, s3 )
	SV* c_func
	int i0
	char * t1
	int i2
	short s3
PREINIT:
	short (*func)( int, char *, int, short );
CODE:
	func   = INT2PTR(short(*)( int, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_sitif( c_func, i0, t1, i2, f3 )
	SV* c_func
	int i0
	char * t1
	int i2
	float f3
PREINIT:
	short (*func)( int, char *, int, float );
CODE:
	func   = INT2PTR(short(*)( int, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_sitit( c_func, i0, t1, i2, t3 )
	SV* c_func
	int i0
	char * t1
	int i2
	char * t3
PREINIT:
	short (*func)( int, char *, int, char * );
CODE:
	func   = INT2PTR(short(*)( int, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_sitii( c_func, i0, t1, i2, i3 )
	SV* c_func
	int i0
	char * t1
	int i2
	int i3
PREINIT:
	short (*func)( int, char *, int, int );
CODE:
	func   = INT2PTR(short(*)( int, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, i3 );
OUTPUT:
	RETVAL

short
nci_siidd( c_func, i0, i1, d2, d3 )
	SV* c_func
	int i0
	int i1
	double d2
	double d3
PREINIT:
	short (*func)( int, int, double, double );
CODE:
	func   = INT2PTR(short(*)( int, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, d3 );
OUTPUT:
	RETVAL

short
nci_siids( c_func, i0, i1, d2, s3 )
	SV* c_func
	int i0
	int i1
	double d2
	short s3
PREINIT:
	short (*func)( int, int, double, short );
CODE:
	func   = INT2PTR(short(*)( int, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, s3 );
OUTPUT:
	RETVAL

short
nci_siidf( c_func, i0, i1, d2, f3 )
	SV* c_func
	int i0
	int i1
	double d2
	float f3
PREINIT:
	short (*func)( int, int, double, float );
CODE:
	func   = INT2PTR(short(*)( int, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, f3 );
OUTPUT:
	RETVAL

short
nci_siidt( c_func, i0, i1, d2, t3 )
	SV* c_func
	int i0
	int i1
	double d2
	char * t3
PREINIT:
	short (*func)( int, int, double, char * );
CODE:
	func   = INT2PTR(short(*)( int, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, t3 );
OUTPUT:
	RETVAL

short
nci_siidi( c_func, i0, i1, d2, i3 )
	SV* c_func
	int i0
	int i1
	double d2
	int i3
PREINIT:
	short (*func)( int, int, double, int );
CODE:
	func   = INT2PTR(short(*)( int, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, i3 );
OUTPUT:
	RETVAL

short
nci_siisd( c_func, i0, i1, s2, d3 )
	SV* c_func
	int i0
	int i1
	short s2
	double d3
PREINIT:
	short (*func)( int, int, short, double );
CODE:
	func   = INT2PTR(short(*)( int, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, d3 );
OUTPUT:
	RETVAL

short
nci_siiss( c_func, i0, i1, s2, s3 )
	SV* c_func
	int i0
	int i1
	short s2
	short s3
PREINIT:
	short (*func)( int, int, short, short );
CODE:
	func   = INT2PTR(short(*)( int, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, s3 );
OUTPUT:
	RETVAL

short
nci_siisf( c_func, i0, i1, s2, f3 )
	SV* c_func
	int i0
	int i1
	short s2
	float f3
PREINIT:
	short (*func)( int, int, short, float );
CODE:
	func   = INT2PTR(short(*)( int, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, f3 );
OUTPUT:
	RETVAL

short
nci_siist( c_func, i0, i1, s2, t3 )
	SV* c_func
	int i0
	int i1
	short s2
	char * t3
PREINIT:
	short (*func)( int, int, short, char * );
CODE:
	func   = INT2PTR(short(*)( int, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, t3 );
OUTPUT:
	RETVAL

short
nci_siisi( c_func, i0, i1, s2, i3 )
	SV* c_func
	int i0
	int i1
	short s2
	int i3
PREINIT:
	short (*func)( int, int, short, int );
CODE:
	func   = INT2PTR(short(*)( int, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, i3 );
OUTPUT:
	RETVAL

short
nci_siifd( c_func, i0, i1, f2, d3 )
	SV* c_func
	int i0
	int i1
	float f2
	double d3
PREINIT:
	short (*func)( int, int, float, double );
CODE:
	func   = INT2PTR(short(*)( int, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, d3 );
OUTPUT:
	RETVAL

short
nci_siifs( c_func, i0, i1, f2, s3 )
	SV* c_func
	int i0
	int i1
	float f2
	short s3
PREINIT:
	short (*func)( int, int, float, short );
CODE:
	func   = INT2PTR(short(*)( int, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, s3 );
OUTPUT:
	RETVAL

short
nci_siiff( c_func, i0, i1, f2, f3 )
	SV* c_func
	int i0
	int i1
	float f2
	float f3
PREINIT:
	short (*func)( int, int, float, float );
CODE:
	func   = INT2PTR(short(*)( int, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, f3 );
OUTPUT:
	RETVAL

short
nci_siift( c_func, i0, i1, f2, t3 )
	SV* c_func
	int i0
	int i1
	float f2
	char * t3
PREINIT:
	short (*func)( int, int, float, char * );
CODE:
	func   = INT2PTR(short(*)( int, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, t3 );
OUTPUT:
	RETVAL

short
nci_siifi( c_func, i0, i1, f2, i3 )
	SV* c_func
	int i0
	int i1
	float f2
	int i3
PREINIT:
	short (*func)( int, int, float, int );
CODE:
	func   = INT2PTR(short(*)( int, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, i3 );
OUTPUT:
	RETVAL

short
nci_siitd( c_func, i0, i1, t2, d3 )
	SV* c_func
	int i0
	int i1
	char * t2
	double d3
PREINIT:
	short (*func)( int, int, char *, double );
CODE:
	func   = INT2PTR(short(*)( int, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, d3 );
OUTPUT:
	RETVAL

short
nci_siits( c_func, i0, i1, t2, s3 )
	SV* c_func
	int i0
	int i1
	char * t2
	short s3
PREINIT:
	short (*func)( int, int, char *, short );
CODE:
	func   = INT2PTR(short(*)( int, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, s3 );
OUTPUT:
	RETVAL

short
nci_siitf( c_func, i0, i1, t2, f3 )
	SV* c_func
	int i0
	int i1
	char * t2
	float f3
PREINIT:
	short (*func)( int, int, char *, float );
CODE:
	func   = INT2PTR(short(*)( int, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, f3 );
OUTPUT:
	RETVAL

short
nci_siitt( c_func, i0, i1, t2, t3 )
	SV* c_func
	int i0
	int i1
	char * t2
	char * t3
PREINIT:
	short (*func)( int, int, char *, char * );
CODE:
	func   = INT2PTR(short(*)( int, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, t3 );
OUTPUT:
	RETVAL

short
nci_siiti( c_func, i0, i1, t2, i3 )
	SV* c_func
	int i0
	int i1
	char * t2
	int i3
PREINIT:
	short (*func)( int, int, char *, int );
CODE:
	func   = INT2PTR(short(*)( int, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, i3 );
OUTPUT:
	RETVAL

short
nci_siiid( c_func, i0, i1, i2, d3 )
	SV* c_func
	int i0
	int i1
	int i2
	double d3
PREINIT:
	short (*func)( int, int, int, double );
CODE:
	func   = INT2PTR(short(*)( int, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, d3 );
OUTPUT:
	RETVAL

short
nci_siiis( c_func, i0, i1, i2, s3 )
	SV* c_func
	int i0
	int i1
	int i2
	short s3
PREINIT:
	short (*func)( int, int, int, short );
CODE:
	func   = INT2PTR(short(*)( int, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, s3 );
OUTPUT:
	RETVAL

short
nci_siiif( c_func, i0, i1, i2, f3 )
	SV* c_func
	int i0
	int i1
	int i2
	float f3
PREINIT:
	short (*func)( int, int, int, float );
CODE:
	func   = INT2PTR(short(*)( int, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, f3 );
OUTPUT:
	RETVAL

short
nci_siiit( c_func, i0, i1, i2, t3 )
	SV* c_func
	int i0
	int i1
	int i2
	char * t3
PREINIT:
	short (*func)( int, int, int, char * );
CODE:
	func   = INT2PTR(short(*)( int, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, t3 );
OUTPUT:
	RETVAL

short
nci_siiii( c_func, i0, i1, i2, i3 )
	SV* c_func
	int i0
	int i1
	int i2
	int i3
PREINIT:
	short (*func)( int, int, int, int );
CODE:
	func   = INT2PTR(short(*)( int, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fdddd( c_func, d0, d1, d2, d3 )
	SV* c_func
	double d0
	double d1
	double d2
	double d3
PREINIT:
	float (*func)( double, double, double, double );
CODE:
	func   = INT2PTR(float(*)( double, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fddds( c_func, d0, d1, d2, s3 )
	SV* c_func
	double d0
	double d1
	double d2
	short s3
PREINIT:
	float (*func)( double, double, double, short );
CODE:
	func   = INT2PTR(float(*)( double, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fdddf( c_func, d0, d1, d2, f3 )
	SV* c_func
	double d0
	double d1
	double d2
	float f3
PREINIT:
	float (*func)( double, double, double, float );
CODE:
	func   = INT2PTR(float(*)( double, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fdddt( c_func, d0, d1, d2, t3 )
	SV* c_func
	double d0
	double d1
	double d2
	char * t3
PREINIT:
	float (*func)( double, double, double, char * );
CODE:
	func   = INT2PTR(float(*)( double, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fdddi( c_func, d0, d1, d2, i3 )
	SV* c_func
	double d0
	double d1
	double d2
	int i3
PREINIT:
	float (*func)( double, double, double, int );
CODE:
	func   = INT2PTR(float(*)( double, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fddsd( c_func, d0, d1, s2, d3 )
	SV* c_func
	double d0
	double d1
	short s2
	double d3
PREINIT:
	float (*func)( double, double, short, double );
CODE:
	func   = INT2PTR(float(*)( double, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fddss( c_func, d0, d1, s2, s3 )
	SV* c_func
	double d0
	double d1
	short s2
	short s3
PREINIT:
	float (*func)( double, double, short, short );
CODE:
	func   = INT2PTR(float(*)( double, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fddsf( c_func, d0, d1, s2, f3 )
	SV* c_func
	double d0
	double d1
	short s2
	float f3
PREINIT:
	float (*func)( double, double, short, float );
CODE:
	func   = INT2PTR(float(*)( double, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fddst( c_func, d0, d1, s2, t3 )
	SV* c_func
	double d0
	double d1
	short s2
	char * t3
PREINIT:
	float (*func)( double, double, short, char * );
CODE:
	func   = INT2PTR(float(*)( double, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fddsi( c_func, d0, d1, s2, i3 )
	SV* c_func
	double d0
	double d1
	short s2
	int i3
PREINIT:
	float (*func)( double, double, short, int );
CODE:
	func   = INT2PTR(float(*)( double, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fddfd( c_func, d0, d1, f2, d3 )
	SV* c_func
	double d0
	double d1
	float f2
	double d3
PREINIT:
	float (*func)( double, double, float, double );
CODE:
	func   = INT2PTR(float(*)( double, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fddfs( c_func, d0, d1, f2, s3 )
	SV* c_func
	double d0
	double d1
	float f2
	short s3
PREINIT:
	float (*func)( double, double, float, short );
CODE:
	func   = INT2PTR(float(*)( double, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fddff( c_func, d0, d1, f2, f3 )
	SV* c_func
	double d0
	double d1
	float f2
	float f3
PREINIT:
	float (*func)( double, double, float, float );
CODE:
	func   = INT2PTR(float(*)( double, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fddft( c_func, d0, d1, f2, t3 )
	SV* c_func
	double d0
	double d1
	float f2
	char * t3
PREINIT:
	float (*func)( double, double, float, char * );
CODE:
	func   = INT2PTR(float(*)( double, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fddfi( c_func, d0, d1, f2, i3 )
	SV* c_func
	double d0
	double d1
	float f2
	int i3
PREINIT:
	float (*func)( double, double, float, int );
CODE:
	func   = INT2PTR(float(*)( double, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fddtd( c_func, d0, d1, t2, d3 )
	SV* c_func
	double d0
	double d1
	char * t2
	double d3
PREINIT:
	float (*func)( double, double, char *, double );
CODE:
	func   = INT2PTR(float(*)( double, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fddts( c_func, d0, d1, t2, s3 )
	SV* c_func
	double d0
	double d1
	char * t2
	short s3
PREINIT:
	float (*func)( double, double, char *, short );
CODE:
	func   = INT2PTR(float(*)( double, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fddtf( c_func, d0, d1, t2, f3 )
	SV* c_func
	double d0
	double d1
	char * t2
	float f3
PREINIT:
	float (*func)( double, double, char *, float );
CODE:
	func   = INT2PTR(float(*)( double, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fddtt( c_func, d0, d1, t2, t3 )
	SV* c_func
	double d0
	double d1
	char * t2
	char * t3
PREINIT:
	float (*func)( double, double, char *, char * );
CODE:
	func   = INT2PTR(float(*)( double, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fddti( c_func, d0, d1, t2, i3 )
	SV* c_func
	double d0
	double d1
	char * t2
	int i3
PREINIT:
	float (*func)( double, double, char *, int );
CODE:
	func   = INT2PTR(float(*)( double, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fddid( c_func, d0, d1, i2, d3 )
	SV* c_func
	double d0
	double d1
	int i2
	double d3
PREINIT:
	float (*func)( double, double, int, double );
CODE:
	func   = INT2PTR(float(*)( double, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fddis( c_func, d0, d1, i2, s3 )
	SV* c_func
	double d0
	double d1
	int i2
	short s3
PREINIT:
	float (*func)( double, double, int, short );
CODE:
	func   = INT2PTR(float(*)( double, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fddif( c_func, d0, d1, i2, f3 )
	SV* c_func
	double d0
	double d1
	int i2
	float f3
PREINIT:
	float (*func)( double, double, int, float );
CODE:
	func   = INT2PTR(float(*)( double, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fddit( c_func, d0, d1, i2, t3 )
	SV* c_func
	double d0
	double d1
	int i2
	char * t3
PREINIT:
	float (*func)( double, double, int, char * );
CODE:
	func   = INT2PTR(float(*)( double, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fddii( c_func, d0, d1, i2, i3 )
	SV* c_func
	double d0
	double d1
	int i2
	int i3
PREINIT:
	float (*func)( double, double, int, int );
CODE:
	func   = INT2PTR(float(*)( double, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fdsdd( c_func, d0, s1, d2, d3 )
	SV* c_func
	double d0
	short s1
	double d2
	double d3
PREINIT:
	float (*func)( double, short, double, double );
CODE:
	func   = INT2PTR(float(*)( double, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fdsds( c_func, d0, s1, d2, s3 )
	SV* c_func
	double d0
	short s1
	double d2
	short s3
PREINIT:
	float (*func)( double, short, double, short );
CODE:
	func   = INT2PTR(float(*)( double, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fdsdf( c_func, d0, s1, d2, f3 )
	SV* c_func
	double d0
	short s1
	double d2
	float f3
PREINIT:
	float (*func)( double, short, double, float );
CODE:
	func   = INT2PTR(float(*)( double, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fdsdt( c_func, d0, s1, d2, t3 )
	SV* c_func
	double d0
	short s1
	double d2
	char * t3
PREINIT:
	float (*func)( double, short, double, char * );
CODE:
	func   = INT2PTR(float(*)( double, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fdsdi( c_func, d0, s1, d2, i3 )
	SV* c_func
	double d0
	short s1
	double d2
	int i3
PREINIT:
	float (*func)( double, short, double, int );
CODE:
	func   = INT2PTR(float(*)( double, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fdssd( c_func, d0, s1, s2, d3 )
	SV* c_func
	double d0
	short s1
	short s2
	double d3
PREINIT:
	float (*func)( double, short, short, double );
CODE:
	func   = INT2PTR(float(*)( double, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fdsss( c_func, d0, s1, s2, s3 )
	SV* c_func
	double d0
	short s1
	short s2
	short s3
PREINIT:
	float (*func)( double, short, short, short );
CODE:
	func   = INT2PTR(float(*)( double, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fdssf( c_func, d0, s1, s2, f3 )
	SV* c_func
	double d0
	short s1
	short s2
	float f3
PREINIT:
	float (*func)( double, short, short, float );
CODE:
	func   = INT2PTR(float(*)( double, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fdsst( c_func, d0, s1, s2, t3 )
	SV* c_func
	double d0
	short s1
	short s2
	char * t3
PREINIT:
	float (*func)( double, short, short, char * );
CODE:
	func   = INT2PTR(float(*)( double, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fdssi( c_func, d0, s1, s2, i3 )
	SV* c_func
	double d0
	short s1
	short s2
	int i3
PREINIT:
	float (*func)( double, short, short, int );
CODE:
	func   = INT2PTR(float(*)( double, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fdsfd( c_func, d0, s1, f2, d3 )
	SV* c_func
	double d0
	short s1
	float f2
	double d3
PREINIT:
	float (*func)( double, short, float, double );
CODE:
	func   = INT2PTR(float(*)( double, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fdsfs( c_func, d0, s1, f2, s3 )
	SV* c_func
	double d0
	short s1
	float f2
	short s3
PREINIT:
	float (*func)( double, short, float, short );
CODE:
	func   = INT2PTR(float(*)( double, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fdsff( c_func, d0, s1, f2, f3 )
	SV* c_func
	double d0
	short s1
	float f2
	float f3
PREINIT:
	float (*func)( double, short, float, float );
CODE:
	func   = INT2PTR(float(*)( double, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fdsft( c_func, d0, s1, f2, t3 )
	SV* c_func
	double d0
	short s1
	float f2
	char * t3
PREINIT:
	float (*func)( double, short, float, char * );
CODE:
	func   = INT2PTR(float(*)( double, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fdsfi( c_func, d0, s1, f2, i3 )
	SV* c_func
	double d0
	short s1
	float f2
	int i3
PREINIT:
	float (*func)( double, short, float, int );
CODE:
	func   = INT2PTR(float(*)( double, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fdstd( c_func, d0, s1, t2, d3 )
	SV* c_func
	double d0
	short s1
	char * t2
	double d3
PREINIT:
	float (*func)( double, short, char *, double );
CODE:
	func   = INT2PTR(float(*)( double, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fdsts( c_func, d0, s1, t2, s3 )
	SV* c_func
	double d0
	short s1
	char * t2
	short s3
PREINIT:
	float (*func)( double, short, char *, short );
CODE:
	func   = INT2PTR(float(*)( double, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fdstf( c_func, d0, s1, t2, f3 )
	SV* c_func
	double d0
	short s1
	char * t2
	float f3
PREINIT:
	float (*func)( double, short, char *, float );
CODE:
	func   = INT2PTR(float(*)( double, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fdstt( c_func, d0, s1, t2, t3 )
	SV* c_func
	double d0
	short s1
	char * t2
	char * t3
PREINIT:
	float (*func)( double, short, char *, char * );
CODE:
	func   = INT2PTR(float(*)( double, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fdsti( c_func, d0, s1, t2, i3 )
	SV* c_func
	double d0
	short s1
	char * t2
	int i3
PREINIT:
	float (*func)( double, short, char *, int );
CODE:
	func   = INT2PTR(float(*)( double, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fdsid( c_func, d0, s1, i2, d3 )
	SV* c_func
	double d0
	short s1
	int i2
	double d3
PREINIT:
	float (*func)( double, short, int, double );
CODE:
	func   = INT2PTR(float(*)( double, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fdsis( c_func, d0, s1, i2, s3 )
	SV* c_func
	double d0
	short s1
	int i2
	short s3
PREINIT:
	float (*func)( double, short, int, short );
CODE:
	func   = INT2PTR(float(*)( double, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fdsif( c_func, d0, s1, i2, f3 )
	SV* c_func
	double d0
	short s1
	int i2
	float f3
PREINIT:
	float (*func)( double, short, int, float );
CODE:
	func   = INT2PTR(float(*)( double, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fdsit( c_func, d0, s1, i2, t3 )
	SV* c_func
	double d0
	short s1
	int i2
	char * t3
PREINIT:
	float (*func)( double, short, int, char * );
CODE:
	func   = INT2PTR(float(*)( double, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fdsii( c_func, d0, s1, i2, i3 )
	SV* c_func
	double d0
	short s1
	int i2
	int i3
PREINIT:
	float (*func)( double, short, int, int );
CODE:
	func   = INT2PTR(float(*)( double, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fdfdd( c_func, d0, f1, d2, d3 )
	SV* c_func
	double d0
	float f1
	double d2
	double d3
PREINIT:
	float (*func)( double, float, double, double );
CODE:
	func   = INT2PTR(float(*)( double, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fdfds( c_func, d0, f1, d2, s3 )
	SV* c_func
	double d0
	float f1
	double d2
	short s3
PREINIT:
	float (*func)( double, float, double, short );
CODE:
	func   = INT2PTR(float(*)( double, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fdfdf( c_func, d0, f1, d2, f3 )
	SV* c_func
	double d0
	float f1
	double d2
	float f3
PREINIT:
	float (*func)( double, float, double, float );
CODE:
	func   = INT2PTR(float(*)( double, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fdfdt( c_func, d0, f1, d2, t3 )
	SV* c_func
	double d0
	float f1
	double d2
	char * t3
PREINIT:
	float (*func)( double, float, double, char * );
CODE:
	func   = INT2PTR(float(*)( double, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fdfdi( c_func, d0, f1, d2, i3 )
	SV* c_func
	double d0
	float f1
	double d2
	int i3
PREINIT:
	float (*func)( double, float, double, int );
CODE:
	func   = INT2PTR(float(*)( double, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fdfsd( c_func, d0, f1, s2, d3 )
	SV* c_func
	double d0
	float f1
	short s2
	double d3
PREINIT:
	float (*func)( double, float, short, double );
CODE:
	func   = INT2PTR(float(*)( double, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fdfss( c_func, d0, f1, s2, s3 )
	SV* c_func
	double d0
	float f1
	short s2
	short s3
PREINIT:
	float (*func)( double, float, short, short );
CODE:
	func   = INT2PTR(float(*)( double, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fdfsf( c_func, d0, f1, s2, f3 )
	SV* c_func
	double d0
	float f1
	short s2
	float f3
PREINIT:
	float (*func)( double, float, short, float );
CODE:
	func   = INT2PTR(float(*)( double, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fdfst( c_func, d0, f1, s2, t3 )
	SV* c_func
	double d0
	float f1
	short s2
	char * t3
PREINIT:
	float (*func)( double, float, short, char * );
CODE:
	func   = INT2PTR(float(*)( double, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fdfsi( c_func, d0, f1, s2, i3 )
	SV* c_func
	double d0
	float f1
	short s2
	int i3
PREINIT:
	float (*func)( double, float, short, int );
CODE:
	func   = INT2PTR(float(*)( double, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fdffd( c_func, d0, f1, f2, d3 )
	SV* c_func
	double d0
	float f1
	float f2
	double d3
PREINIT:
	float (*func)( double, float, float, double );
CODE:
	func   = INT2PTR(float(*)( double, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fdffs( c_func, d0, f1, f2, s3 )
	SV* c_func
	double d0
	float f1
	float f2
	short s3
PREINIT:
	float (*func)( double, float, float, short );
CODE:
	func   = INT2PTR(float(*)( double, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fdfff( c_func, d0, f1, f2, f3 )
	SV* c_func
	double d0
	float f1
	float f2
	float f3
PREINIT:
	float (*func)( double, float, float, float );
CODE:
	func   = INT2PTR(float(*)( double, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fdfft( c_func, d0, f1, f2, t3 )
	SV* c_func
	double d0
	float f1
	float f2
	char * t3
PREINIT:
	float (*func)( double, float, float, char * );
CODE:
	func   = INT2PTR(float(*)( double, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fdffi( c_func, d0, f1, f2, i3 )
	SV* c_func
	double d0
	float f1
	float f2
	int i3
PREINIT:
	float (*func)( double, float, float, int );
CODE:
	func   = INT2PTR(float(*)( double, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fdftd( c_func, d0, f1, t2, d3 )
	SV* c_func
	double d0
	float f1
	char * t2
	double d3
PREINIT:
	float (*func)( double, float, char *, double );
CODE:
	func   = INT2PTR(float(*)( double, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fdfts( c_func, d0, f1, t2, s3 )
	SV* c_func
	double d0
	float f1
	char * t2
	short s3
PREINIT:
	float (*func)( double, float, char *, short );
CODE:
	func   = INT2PTR(float(*)( double, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fdftf( c_func, d0, f1, t2, f3 )
	SV* c_func
	double d0
	float f1
	char * t2
	float f3
PREINIT:
	float (*func)( double, float, char *, float );
CODE:
	func   = INT2PTR(float(*)( double, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fdftt( c_func, d0, f1, t2, t3 )
	SV* c_func
	double d0
	float f1
	char * t2
	char * t3
PREINIT:
	float (*func)( double, float, char *, char * );
CODE:
	func   = INT2PTR(float(*)( double, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fdfti( c_func, d0, f1, t2, i3 )
	SV* c_func
	double d0
	float f1
	char * t2
	int i3
PREINIT:
	float (*func)( double, float, char *, int );
CODE:
	func   = INT2PTR(float(*)( double, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fdfid( c_func, d0, f1, i2, d3 )
	SV* c_func
	double d0
	float f1
	int i2
	double d3
PREINIT:
	float (*func)( double, float, int, double );
CODE:
	func   = INT2PTR(float(*)( double, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fdfis( c_func, d0, f1, i2, s3 )
	SV* c_func
	double d0
	float f1
	int i2
	short s3
PREINIT:
	float (*func)( double, float, int, short );
CODE:
	func   = INT2PTR(float(*)( double, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fdfif( c_func, d0, f1, i2, f3 )
	SV* c_func
	double d0
	float f1
	int i2
	float f3
PREINIT:
	float (*func)( double, float, int, float );
CODE:
	func   = INT2PTR(float(*)( double, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fdfit( c_func, d0, f1, i2, t3 )
	SV* c_func
	double d0
	float f1
	int i2
	char * t3
PREINIT:
	float (*func)( double, float, int, char * );
CODE:
	func   = INT2PTR(float(*)( double, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fdfii( c_func, d0, f1, i2, i3 )
	SV* c_func
	double d0
	float f1
	int i2
	int i3
PREINIT:
	float (*func)( double, float, int, int );
CODE:
	func   = INT2PTR(float(*)( double, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fdtdd( c_func, d0, t1, d2, d3 )
	SV* c_func
	double d0
	char * t1
	double d2
	double d3
PREINIT:
	float (*func)( double, char *, double, double );
CODE:
	func   = INT2PTR(float(*)( double, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fdtds( c_func, d0, t1, d2, s3 )
	SV* c_func
	double d0
	char * t1
	double d2
	short s3
PREINIT:
	float (*func)( double, char *, double, short );
CODE:
	func   = INT2PTR(float(*)( double, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fdtdf( c_func, d0, t1, d2, f3 )
	SV* c_func
	double d0
	char * t1
	double d2
	float f3
PREINIT:
	float (*func)( double, char *, double, float );
CODE:
	func   = INT2PTR(float(*)( double, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fdtdt( c_func, d0, t1, d2, t3 )
	SV* c_func
	double d0
	char * t1
	double d2
	char * t3
PREINIT:
	float (*func)( double, char *, double, char * );
CODE:
	func   = INT2PTR(float(*)( double, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fdtdi( c_func, d0, t1, d2, i3 )
	SV* c_func
	double d0
	char * t1
	double d2
	int i3
PREINIT:
	float (*func)( double, char *, double, int );
CODE:
	func   = INT2PTR(float(*)( double, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fdtsd( c_func, d0, t1, s2, d3 )
	SV* c_func
	double d0
	char * t1
	short s2
	double d3
PREINIT:
	float (*func)( double, char *, short, double );
CODE:
	func   = INT2PTR(float(*)( double, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fdtss( c_func, d0, t1, s2, s3 )
	SV* c_func
	double d0
	char * t1
	short s2
	short s3
PREINIT:
	float (*func)( double, char *, short, short );
CODE:
	func   = INT2PTR(float(*)( double, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fdtsf( c_func, d0, t1, s2, f3 )
	SV* c_func
	double d0
	char * t1
	short s2
	float f3
PREINIT:
	float (*func)( double, char *, short, float );
CODE:
	func   = INT2PTR(float(*)( double, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fdtst( c_func, d0, t1, s2, t3 )
	SV* c_func
	double d0
	char * t1
	short s2
	char * t3
PREINIT:
	float (*func)( double, char *, short, char * );
CODE:
	func   = INT2PTR(float(*)( double, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fdtsi( c_func, d0, t1, s2, i3 )
	SV* c_func
	double d0
	char * t1
	short s2
	int i3
PREINIT:
	float (*func)( double, char *, short, int );
CODE:
	func   = INT2PTR(float(*)( double, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fdtfd( c_func, d0, t1, f2, d3 )
	SV* c_func
	double d0
	char * t1
	float f2
	double d3
PREINIT:
	float (*func)( double, char *, float, double );
CODE:
	func   = INT2PTR(float(*)( double, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fdtfs( c_func, d0, t1, f2, s3 )
	SV* c_func
	double d0
	char * t1
	float f2
	short s3
PREINIT:
	float (*func)( double, char *, float, short );
CODE:
	func   = INT2PTR(float(*)( double, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fdtff( c_func, d0, t1, f2, f3 )
	SV* c_func
	double d0
	char * t1
	float f2
	float f3
PREINIT:
	float (*func)( double, char *, float, float );
CODE:
	func   = INT2PTR(float(*)( double, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fdtft( c_func, d0, t1, f2, t3 )
	SV* c_func
	double d0
	char * t1
	float f2
	char * t3
PREINIT:
	float (*func)( double, char *, float, char * );
CODE:
	func   = INT2PTR(float(*)( double, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fdtfi( c_func, d0, t1, f2, i3 )
	SV* c_func
	double d0
	char * t1
	float f2
	int i3
PREINIT:
	float (*func)( double, char *, float, int );
CODE:
	func   = INT2PTR(float(*)( double, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fdttd( c_func, d0, t1, t2, d3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	double d3
PREINIT:
	float (*func)( double, char *, char *, double );
CODE:
	func   = INT2PTR(float(*)( double, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fdtts( c_func, d0, t1, t2, s3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	short s3
PREINIT:
	float (*func)( double, char *, char *, short );
CODE:
	func   = INT2PTR(float(*)( double, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fdttf( c_func, d0, t1, t2, f3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	float f3
PREINIT:
	float (*func)( double, char *, char *, float );
CODE:
	func   = INT2PTR(float(*)( double, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fdttt( c_func, d0, t1, t2, t3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	char * t3
PREINIT:
	float (*func)( double, char *, char *, char * );
CODE:
	func   = INT2PTR(float(*)( double, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fdtti( c_func, d0, t1, t2, i3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	int i3
PREINIT:
	float (*func)( double, char *, char *, int );
CODE:
	func   = INT2PTR(float(*)( double, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fdtid( c_func, d0, t1, i2, d3 )
	SV* c_func
	double d0
	char * t1
	int i2
	double d3
PREINIT:
	float (*func)( double, char *, int, double );
CODE:
	func   = INT2PTR(float(*)( double, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fdtis( c_func, d0, t1, i2, s3 )
	SV* c_func
	double d0
	char * t1
	int i2
	short s3
PREINIT:
	float (*func)( double, char *, int, short );
CODE:
	func   = INT2PTR(float(*)( double, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fdtif( c_func, d0, t1, i2, f3 )
	SV* c_func
	double d0
	char * t1
	int i2
	float f3
PREINIT:
	float (*func)( double, char *, int, float );
CODE:
	func   = INT2PTR(float(*)( double, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fdtit( c_func, d0, t1, i2, t3 )
	SV* c_func
	double d0
	char * t1
	int i2
	char * t3
PREINIT:
	float (*func)( double, char *, int, char * );
CODE:
	func   = INT2PTR(float(*)( double, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fdtii( c_func, d0, t1, i2, i3 )
	SV* c_func
	double d0
	char * t1
	int i2
	int i3
PREINIT:
	float (*func)( double, char *, int, int );
CODE:
	func   = INT2PTR(float(*)( double, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fdidd( c_func, d0, i1, d2, d3 )
	SV* c_func
	double d0
	int i1
	double d2
	double d3
PREINIT:
	float (*func)( double, int, double, double );
CODE:
	func   = INT2PTR(float(*)( double, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fdids( c_func, d0, i1, d2, s3 )
	SV* c_func
	double d0
	int i1
	double d2
	short s3
PREINIT:
	float (*func)( double, int, double, short );
CODE:
	func   = INT2PTR(float(*)( double, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fdidf( c_func, d0, i1, d2, f3 )
	SV* c_func
	double d0
	int i1
	double d2
	float f3
PREINIT:
	float (*func)( double, int, double, float );
CODE:
	func   = INT2PTR(float(*)( double, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fdidt( c_func, d0, i1, d2, t3 )
	SV* c_func
	double d0
	int i1
	double d2
	char * t3
PREINIT:
	float (*func)( double, int, double, char * );
CODE:
	func   = INT2PTR(float(*)( double, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fdidi( c_func, d0, i1, d2, i3 )
	SV* c_func
	double d0
	int i1
	double d2
	int i3
PREINIT:
	float (*func)( double, int, double, int );
CODE:
	func   = INT2PTR(float(*)( double, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fdisd( c_func, d0, i1, s2, d3 )
	SV* c_func
	double d0
	int i1
	short s2
	double d3
PREINIT:
	float (*func)( double, int, short, double );
CODE:
	func   = INT2PTR(float(*)( double, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fdiss( c_func, d0, i1, s2, s3 )
	SV* c_func
	double d0
	int i1
	short s2
	short s3
PREINIT:
	float (*func)( double, int, short, short );
CODE:
	func   = INT2PTR(float(*)( double, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fdisf( c_func, d0, i1, s2, f3 )
	SV* c_func
	double d0
	int i1
	short s2
	float f3
PREINIT:
	float (*func)( double, int, short, float );
CODE:
	func   = INT2PTR(float(*)( double, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fdist( c_func, d0, i1, s2, t3 )
	SV* c_func
	double d0
	int i1
	short s2
	char * t3
PREINIT:
	float (*func)( double, int, short, char * );
CODE:
	func   = INT2PTR(float(*)( double, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fdisi( c_func, d0, i1, s2, i3 )
	SV* c_func
	double d0
	int i1
	short s2
	int i3
PREINIT:
	float (*func)( double, int, short, int );
CODE:
	func   = INT2PTR(float(*)( double, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fdifd( c_func, d0, i1, f2, d3 )
	SV* c_func
	double d0
	int i1
	float f2
	double d3
PREINIT:
	float (*func)( double, int, float, double );
CODE:
	func   = INT2PTR(float(*)( double, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fdifs( c_func, d0, i1, f2, s3 )
	SV* c_func
	double d0
	int i1
	float f2
	short s3
PREINIT:
	float (*func)( double, int, float, short );
CODE:
	func   = INT2PTR(float(*)( double, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fdiff( c_func, d0, i1, f2, f3 )
	SV* c_func
	double d0
	int i1
	float f2
	float f3
PREINIT:
	float (*func)( double, int, float, float );
CODE:
	func   = INT2PTR(float(*)( double, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fdift( c_func, d0, i1, f2, t3 )
	SV* c_func
	double d0
	int i1
	float f2
	char * t3
PREINIT:
	float (*func)( double, int, float, char * );
CODE:
	func   = INT2PTR(float(*)( double, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fdifi( c_func, d0, i1, f2, i3 )
	SV* c_func
	double d0
	int i1
	float f2
	int i3
PREINIT:
	float (*func)( double, int, float, int );
CODE:
	func   = INT2PTR(float(*)( double, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fditd( c_func, d0, i1, t2, d3 )
	SV* c_func
	double d0
	int i1
	char * t2
	double d3
PREINIT:
	float (*func)( double, int, char *, double );
CODE:
	func   = INT2PTR(float(*)( double, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fdits( c_func, d0, i1, t2, s3 )
	SV* c_func
	double d0
	int i1
	char * t2
	short s3
PREINIT:
	float (*func)( double, int, char *, short );
CODE:
	func   = INT2PTR(float(*)( double, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fditf( c_func, d0, i1, t2, f3 )
	SV* c_func
	double d0
	int i1
	char * t2
	float f3
PREINIT:
	float (*func)( double, int, char *, float );
CODE:
	func   = INT2PTR(float(*)( double, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fditt( c_func, d0, i1, t2, t3 )
	SV* c_func
	double d0
	int i1
	char * t2
	char * t3
PREINIT:
	float (*func)( double, int, char *, char * );
CODE:
	func   = INT2PTR(float(*)( double, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fditi( c_func, d0, i1, t2, i3 )
	SV* c_func
	double d0
	int i1
	char * t2
	int i3
PREINIT:
	float (*func)( double, int, char *, int );
CODE:
	func   = INT2PTR(float(*)( double, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fdiid( c_func, d0, i1, i2, d3 )
	SV* c_func
	double d0
	int i1
	int i2
	double d3
PREINIT:
	float (*func)( double, int, int, double );
CODE:
	func   = INT2PTR(float(*)( double, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fdiis( c_func, d0, i1, i2, s3 )
	SV* c_func
	double d0
	int i1
	int i2
	short s3
PREINIT:
	float (*func)( double, int, int, short );
CODE:
	func   = INT2PTR(float(*)( double, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fdiif( c_func, d0, i1, i2, f3 )
	SV* c_func
	double d0
	int i1
	int i2
	float f3
PREINIT:
	float (*func)( double, int, int, float );
CODE:
	func   = INT2PTR(float(*)( double, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fdiit( c_func, d0, i1, i2, t3 )
	SV* c_func
	double d0
	int i1
	int i2
	char * t3
PREINIT:
	float (*func)( double, int, int, char * );
CODE:
	func   = INT2PTR(float(*)( double, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fdiii( c_func, d0, i1, i2, i3 )
	SV* c_func
	double d0
	int i1
	int i2
	int i3
PREINIT:
	float (*func)( double, int, int, int );
CODE:
	func   = INT2PTR(float(*)( double, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fsddd( c_func, s0, d1, d2, d3 )
	SV* c_func
	short s0
	double d1
	double d2
	double d3
PREINIT:
	float (*func)( short, double, double, double );
CODE:
	func   = INT2PTR(float(*)( short, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fsdds( c_func, s0, d1, d2, s3 )
	SV* c_func
	short s0
	double d1
	double d2
	short s3
PREINIT:
	float (*func)( short, double, double, short );
CODE:
	func   = INT2PTR(float(*)( short, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fsddf( c_func, s0, d1, d2, f3 )
	SV* c_func
	short s0
	double d1
	double d2
	float f3
PREINIT:
	float (*func)( short, double, double, float );
CODE:
	func   = INT2PTR(float(*)( short, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fsddt( c_func, s0, d1, d2, t3 )
	SV* c_func
	short s0
	double d1
	double d2
	char * t3
PREINIT:
	float (*func)( short, double, double, char * );
CODE:
	func   = INT2PTR(float(*)( short, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fsddi( c_func, s0, d1, d2, i3 )
	SV* c_func
	short s0
	double d1
	double d2
	int i3
PREINIT:
	float (*func)( short, double, double, int );
CODE:
	func   = INT2PTR(float(*)( short, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fsdsd( c_func, s0, d1, s2, d3 )
	SV* c_func
	short s0
	double d1
	short s2
	double d3
PREINIT:
	float (*func)( short, double, short, double );
CODE:
	func   = INT2PTR(float(*)( short, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fsdss( c_func, s0, d1, s2, s3 )
	SV* c_func
	short s0
	double d1
	short s2
	short s3
PREINIT:
	float (*func)( short, double, short, short );
CODE:
	func   = INT2PTR(float(*)( short, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fsdsf( c_func, s0, d1, s2, f3 )
	SV* c_func
	short s0
	double d1
	short s2
	float f3
PREINIT:
	float (*func)( short, double, short, float );
CODE:
	func   = INT2PTR(float(*)( short, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fsdst( c_func, s0, d1, s2, t3 )
	SV* c_func
	short s0
	double d1
	short s2
	char * t3
PREINIT:
	float (*func)( short, double, short, char * );
CODE:
	func   = INT2PTR(float(*)( short, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fsdsi( c_func, s0, d1, s2, i3 )
	SV* c_func
	short s0
	double d1
	short s2
	int i3
PREINIT:
	float (*func)( short, double, short, int );
CODE:
	func   = INT2PTR(float(*)( short, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fsdfd( c_func, s0, d1, f2, d3 )
	SV* c_func
	short s0
	double d1
	float f2
	double d3
PREINIT:
	float (*func)( short, double, float, double );
CODE:
	func   = INT2PTR(float(*)( short, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fsdfs( c_func, s0, d1, f2, s3 )
	SV* c_func
	short s0
	double d1
	float f2
	short s3
PREINIT:
	float (*func)( short, double, float, short );
CODE:
	func   = INT2PTR(float(*)( short, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fsdff( c_func, s0, d1, f2, f3 )
	SV* c_func
	short s0
	double d1
	float f2
	float f3
PREINIT:
	float (*func)( short, double, float, float );
CODE:
	func   = INT2PTR(float(*)( short, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fsdft( c_func, s0, d1, f2, t3 )
	SV* c_func
	short s0
	double d1
	float f2
	char * t3
PREINIT:
	float (*func)( short, double, float, char * );
CODE:
	func   = INT2PTR(float(*)( short, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fsdfi( c_func, s0, d1, f2, i3 )
	SV* c_func
	short s0
	double d1
	float f2
	int i3
PREINIT:
	float (*func)( short, double, float, int );
CODE:
	func   = INT2PTR(float(*)( short, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fsdtd( c_func, s0, d1, t2, d3 )
	SV* c_func
	short s0
	double d1
	char * t2
	double d3
PREINIT:
	float (*func)( short, double, char *, double );
CODE:
	func   = INT2PTR(float(*)( short, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fsdts( c_func, s0, d1, t2, s3 )
	SV* c_func
	short s0
	double d1
	char * t2
	short s3
PREINIT:
	float (*func)( short, double, char *, short );
CODE:
	func   = INT2PTR(float(*)( short, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fsdtf( c_func, s0, d1, t2, f3 )
	SV* c_func
	short s0
	double d1
	char * t2
	float f3
PREINIT:
	float (*func)( short, double, char *, float );
CODE:
	func   = INT2PTR(float(*)( short, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fsdtt( c_func, s0, d1, t2, t3 )
	SV* c_func
	short s0
	double d1
	char * t2
	char * t3
PREINIT:
	float (*func)( short, double, char *, char * );
CODE:
	func   = INT2PTR(float(*)( short, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fsdti( c_func, s0, d1, t2, i3 )
	SV* c_func
	short s0
	double d1
	char * t2
	int i3
PREINIT:
	float (*func)( short, double, char *, int );
CODE:
	func   = INT2PTR(float(*)( short, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fsdid( c_func, s0, d1, i2, d3 )
	SV* c_func
	short s0
	double d1
	int i2
	double d3
PREINIT:
	float (*func)( short, double, int, double );
CODE:
	func   = INT2PTR(float(*)( short, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fsdis( c_func, s0, d1, i2, s3 )
	SV* c_func
	short s0
	double d1
	int i2
	short s3
PREINIT:
	float (*func)( short, double, int, short );
CODE:
	func   = INT2PTR(float(*)( short, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fsdif( c_func, s0, d1, i2, f3 )
	SV* c_func
	short s0
	double d1
	int i2
	float f3
PREINIT:
	float (*func)( short, double, int, float );
CODE:
	func   = INT2PTR(float(*)( short, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fsdit( c_func, s0, d1, i2, t3 )
	SV* c_func
	short s0
	double d1
	int i2
	char * t3
PREINIT:
	float (*func)( short, double, int, char * );
CODE:
	func   = INT2PTR(float(*)( short, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fsdii( c_func, s0, d1, i2, i3 )
	SV* c_func
	short s0
	double d1
	int i2
	int i3
PREINIT:
	float (*func)( short, double, int, int );
CODE:
	func   = INT2PTR(float(*)( short, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fssdd( c_func, s0, s1, d2, d3 )
	SV* c_func
	short s0
	short s1
	double d2
	double d3
PREINIT:
	float (*func)( short, short, double, double );
CODE:
	func   = INT2PTR(float(*)( short, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fssds( c_func, s0, s1, d2, s3 )
	SV* c_func
	short s0
	short s1
	double d2
	short s3
PREINIT:
	float (*func)( short, short, double, short );
CODE:
	func   = INT2PTR(float(*)( short, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fssdf( c_func, s0, s1, d2, f3 )
	SV* c_func
	short s0
	short s1
	double d2
	float f3
PREINIT:
	float (*func)( short, short, double, float );
CODE:
	func   = INT2PTR(float(*)( short, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fssdt( c_func, s0, s1, d2, t3 )
	SV* c_func
	short s0
	short s1
	double d2
	char * t3
PREINIT:
	float (*func)( short, short, double, char * );
CODE:
	func   = INT2PTR(float(*)( short, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fssdi( c_func, s0, s1, d2, i3 )
	SV* c_func
	short s0
	short s1
	double d2
	int i3
PREINIT:
	float (*func)( short, short, double, int );
CODE:
	func   = INT2PTR(float(*)( short, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fsssd( c_func, s0, s1, s2, d3 )
	SV* c_func
	short s0
	short s1
	short s2
	double d3
PREINIT:
	float (*func)( short, short, short, double );
CODE:
	func   = INT2PTR(float(*)( short, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fssss( c_func, s0, s1, s2, s3 )
	SV* c_func
	short s0
	short s1
	short s2
	short s3
PREINIT:
	float (*func)( short, short, short, short );
CODE:
	func   = INT2PTR(float(*)( short, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fsssf( c_func, s0, s1, s2, f3 )
	SV* c_func
	short s0
	short s1
	short s2
	float f3
PREINIT:
	float (*func)( short, short, short, float );
CODE:
	func   = INT2PTR(float(*)( short, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fssst( c_func, s0, s1, s2, t3 )
	SV* c_func
	short s0
	short s1
	short s2
	char * t3
PREINIT:
	float (*func)( short, short, short, char * );
CODE:
	func   = INT2PTR(float(*)( short, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fsssi( c_func, s0, s1, s2, i3 )
	SV* c_func
	short s0
	short s1
	short s2
	int i3
PREINIT:
	float (*func)( short, short, short, int );
CODE:
	func   = INT2PTR(float(*)( short, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fssfd( c_func, s0, s1, f2, d3 )
	SV* c_func
	short s0
	short s1
	float f2
	double d3
PREINIT:
	float (*func)( short, short, float, double );
CODE:
	func   = INT2PTR(float(*)( short, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fssfs( c_func, s0, s1, f2, s3 )
	SV* c_func
	short s0
	short s1
	float f2
	short s3
PREINIT:
	float (*func)( short, short, float, short );
CODE:
	func   = INT2PTR(float(*)( short, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fssff( c_func, s0, s1, f2, f3 )
	SV* c_func
	short s0
	short s1
	float f2
	float f3
PREINIT:
	float (*func)( short, short, float, float );
CODE:
	func   = INT2PTR(float(*)( short, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fssft( c_func, s0, s1, f2, t3 )
	SV* c_func
	short s0
	short s1
	float f2
	char * t3
PREINIT:
	float (*func)( short, short, float, char * );
CODE:
	func   = INT2PTR(float(*)( short, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fssfi( c_func, s0, s1, f2, i3 )
	SV* c_func
	short s0
	short s1
	float f2
	int i3
PREINIT:
	float (*func)( short, short, float, int );
CODE:
	func   = INT2PTR(float(*)( short, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fsstd( c_func, s0, s1, t2, d3 )
	SV* c_func
	short s0
	short s1
	char * t2
	double d3
PREINIT:
	float (*func)( short, short, char *, double );
CODE:
	func   = INT2PTR(float(*)( short, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fssts( c_func, s0, s1, t2, s3 )
	SV* c_func
	short s0
	short s1
	char * t2
	short s3
PREINIT:
	float (*func)( short, short, char *, short );
CODE:
	func   = INT2PTR(float(*)( short, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fsstf( c_func, s0, s1, t2, f3 )
	SV* c_func
	short s0
	short s1
	char * t2
	float f3
PREINIT:
	float (*func)( short, short, char *, float );
CODE:
	func   = INT2PTR(float(*)( short, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fsstt( c_func, s0, s1, t2, t3 )
	SV* c_func
	short s0
	short s1
	char * t2
	char * t3
PREINIT:
	float (*func)( short, short, char *, char * );
CODE:
	func   = INT2PTR(float(*)( short, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fssti( c_func, s0, s1, t2, i3 )
	SV* c_func
	short s0
	short s1
	char * t2
	int i3
PREINIT:
	float (*func)( short, short, char *, int );
CODE:
	func   = INT2PTR(float(*)( short, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fssid( c_func, s0, s1, i2, d3 )
	SV* c_func
	short s0
	short s1
	int i2
	double d3
PREINIT:
	float (*func)( short, short, int, double );
CODE:
	func   = INT2PTR(float(*)( short, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fssis( c_func, s0, s1, i2, s3 )
	SV* c_func
	short s0
	short s1
	int i2
	short s3
PREINIT:
	float (*func)( short, short, int, short );
CODE:
	func   = INT2PTR(float(*)( short, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fssif( c_func, s0, s1, i2, f3 )
	SV* c_func
	short s0
	short s1
	int i2
	float f3
PREINIT:
	float (*func)( short, short, int, float );
CODE:
	func   = INT2PTR(float(*)( short, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fssit( c_func, s0, s1, i2, t3 )
	SV* c_func
	short s0
	short s1
	int i2
	char * t3
PREINIT:
	float (*func)( short, short, int, char * );
CODE:
	func   = INT2PTR(float(*)( short, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fssii( c_func, s0, s1, i2, i3 )
	SV* c_func
	short s0
	short s1
	int i2
	int i3
PREINIT:
	float (*func)( short, short, int, int );
CODE:
	func   = INT2PTR(float(*)( short, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fsfdd( c_func, s0, f1, d2, d3 )
	SV* c_func
	short s0
	float f1
	double d2
	double d3
PREINIT:
	float (*func)( short, float, double, double );
CODE:
	func   = INT2PTR(float(*)( short, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fsfds( c_func, s0, f1, d2, s3 )
	SV* c_func
	short s0
	float f1
	double d2
	short s3
PREINIT:
	float (*func)( short, float, double, short );
CODE:
	func   = INT2PTR(float(*)( short, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fsfdf( c_func, s0, f1, d2, f3 )
	SV* c_func
	short s0
	float f1
	double d2
	float f3
PREINIT:
	float (*func)( short, float, double, float );
CODE:
	func   = INT2PTR(float(*)( short, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fsfdt( c_func, s0, f1, d2, t3 )
	SV* c_func
	short s0
	float f1
	double d2
	char * t3
PREINIT:
	float (*func)( short, float, double, char * );
CODE:
	func   = INT2PTR(float(*)( short, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fsfdi( c_func, s0, f1, d2, i3 )
	SV* c_func
	short s0
	float f1
	double d2
	int i3
PREINIT:
	float (*func)( short, float, double, int );
CODE:
	func   = INT2PTR(float(*)( short, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fsfsd( c_func, s0, f1, s2, d3 )
	SV* c_func
	short s0
	float f1
	short s2
	double d3
PREINIT:
	float (*func)( short, float, short, double );
CODE:
	func   = INT2PTR(float(*)( short, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fsfss( c_func, s0, f1, s2, s3 )
	SV* c_func
	short s0
	float f1
	short s2
	short s3
PREINIT:
	float (*func)( short, float, short, short );
CODE:
	func   = INT2PTR(float(*)( short, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fsfsf( c_func, s0, f1, s2, f3 )
	SV* c_func
	short s0
	float f1
	short s2
	float f3
PREINIT:
	float (*func)( short, float, short, float );
CODE:
	func   = INT2PTR(float(*)( short, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fsfst( c_func, s0, f1, s2, t3 )
	SV* c_func
	short s0
	float f1
	short s2
	char * t3
PREINIT:
	float (*func)( short, float, short, char * );
CODE:
	func   = INT2PTR(float(*)( short, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fsfsi( c_func, s0, f1, s2, i3 )
	SV* c_func
	short s0
	float f1
	short s2
	int i3
PREINIT:
	float (*func)( short, float, short, int );
CODE:
	func   = INT2PTR(float(*)( short, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fsffd( c_func, s0, f1, f2, d3 )
	SV* c_func
	short s0
	float f1
	float f2
	double d3
PREINIT:
	float (*func)( short, float, float, double );
CODE:
	func   = INT2PTR(float(*)( short, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fsffs( c_func, s0, f1, f2, s3 )
	SV* c_func
	short s0
	float f1
	float f2
	short s3
PREINIT:
	float (*func)( short, float, float, short );
CODE:
	func   = INT2PTR(float(*)( short, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fsfff( c_func, s0, f1, f2, f3 )
	SV* c_func
	short s0
	float f1
	float f2
	float f3
PREINIT:
	float (*func)( short, float, float, float );
CODE:
	func   = INT2PTR(float(*)( short, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fsfft( c_func, s0, f1, f2, t3 )
	SV* c_func
	short s0
	float f1
	float f2
	char * t3
PREINIT:
	float (*func)( short, float, float, char * );
CODE:
	func   = INT2PTR(float(*)( short, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fsffi( c_func, s0, f1, f2, i3 )
	SV* c_func
	short s0
	float f1
	float f2
	int i3
PREINIT:
	float (*func)( short, float, float, int );
CODE:
	func   = INT2PTR(float(*)( short, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fsftd( c_func, s0, f1, t2, d3 )
	SV* c_func
	short s0
	float f1
	char * t2
	double d3
PREINIT:
	float (*func)( short, float, char *, double );
CODE:
	func   = INT2PTR(float(*)( short, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fsfts( c_func, s0, f1, t2, s3 )
	SV* c_func
	short s0
	float f1
	char * t2
	short s3
PREINIT:
	float (*func)( short, float, char *, short );
CODE:
	func   = INT2PTR(float(*)( short, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fsftf( c_func, s0, f1, t2, f3 )
	SV* c_func
	short s0
	float f1
	char * t2
	float f3
PREINIT:
	float (*func)( short, float, char *, float );
CODE:
	func   = INT2PTR(float(*)( short, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fsftt( c_func, s0, f1, t2, t3 )
	SV* c_func
	short s0
	float f1
	char * t2
	char * t3
PREINIT:
	float (*func)( short, float, char *, char * );
CODE:
	func   = INT2PTR(float(*)( short, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fsfti( c_func, s0, f1, t2, i3 )
	SV* c_func
	short s0
	float f1
	char * t2
	int i3
PREINIT:
	float (*func)( short, float, char *, int );
CODE:
	func   = INT2PTR(float(*)( short, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fsfid( c_func, s0, f1, i2, d3 )
	SV* c_func
	short s0
	float f1
	int i2
	double d3
PREINIT:
	float (*func)( short, float, int, double );
CODE:
	func   = INT2PTR(float(*)( short, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fsfis( c_func, s0, f1, i2, s3 )
	SV* c_func
	short s0
	float f1
	int i2
	short s3
PREINIT:
	float (*func)( short, float, int, short );
CODE:
	func   = INT2PTR(float(*)( short, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fsfif( c_func, s0, f1, i2, f3 )
	SV* c_func
	short s0
	float f1
	int i2
	float f3
PREINIT:
	float (*func)( short, float, int, float );
CODE:
	func   = INT2PTR(float(*)( short, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fsfit( c_func, s0, f1, i2, t3 )
	SV* c_func
	short s0
	float f1
	int i2
	char * t3
PREINIT:
	float (*func)( short, float, int, char * );
CODE:
	func   = INT2PTR(float(*)( short, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fsfii( c_func, s0, f1, i2, i3 )
	SV* c_func
	short s0
	float f1
	int i2
	int i3
PREINIT:
	float (*func)( short, float, int, int );
CODE:
	func   = INT2PTR(float(*)( short, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fstdd( c_func, s0, t1, d2, d3 )
	SV* c_func
	short s0
	char * t1
	double d2
	double d3
PREINIT:
	float (*func)( short, char *, double, double );
CODE:
	func   = INT2PTR(float(*)( short, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fstds( c_func, s0, t1, d2, s3 )
	SV* c_func
	short s0
	char * t1
	double d2
	short s3
PREINIT:
	float (*func)( short, char *, double, short );
CODE:
	func   = INT2PTR(float(*)( short, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fstdf( c_func, s0, t1, d2, f3 )
	SV* c_func
	short s0
	char * t1
	double d2
	float f3
PREINIT:
	float (*func)( short, char *, double, float );
CODE:
	func   = INT2PTR(float(*)( short, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fstdt( c_func, s0, t1, d2, t3 )
	SV* c_func
	short s0
	char * t1
	double d2
	char * t3
PREINIT:
	float (*func)( short, char *, double, char * );
CODE:
	func   = INT2PTR(float(*)( short, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fstdi( c_func, s0, t1, d2, i3 )
	SV* c_func
	short s0
	char * t1
	double d2
	int i3
PREINIT:
	float (*func)( short, char *, double, int );
CODE:
	func   = INT2PTR(float(*)( short, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fstsd( c_func, s0, t1, s2, d3 )
	SV* c_func
	short s0
	char * t1
	short s2
	double d3
PREINIT:
	float (*func)( short, char *, short, double );
CODE:
	func   = INT2PTR(float(*)( short, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fstss( c_func, s0, t1, s2, s3 )
	SV* c_func
	short s0
	char * t1
	short s2
	short s3
PREINIT:
	float (*func)( short, char *, short, short );
CODE:
	func   = INT2PTR(float(*)( short, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fstsf( c_func, s0, t1, s2, f3 )
	SV* c_func
	short s0
	char * t1
	short s2
	float f3
PREINIT:
	float (*func)( short, char *, short, float );
CODE:
	func   = INT2PTR(float(*)( short, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fstst( c_func, s0, t1, s2, t3 )
	SV* c_func
	short s0
	char * t1
	short s2
	char * t3
PREINIT:
	float (*func)( short, char *, short, char * );
CODE:
	func   = INT2PTR(float(*)( short, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fstsi( c_func, s0, t1, s2, i3 )
	SV* c_func
	short s0
	char * t1
	short s2
	int i3
PREINIT:
	float (*func)( short, char *, short, int );
CODE:
	func   = INT2PTR(float(*)( short, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fstfd( c_func, s0, t1, f2, d3 )
	SV* c_func
	short s0
	char * t1
	float f2
	double d3
PREINIT:
	float (*func)( short, char *, float, double );
CODE:
	func   = INT2PTR(float(*)( short, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fstfs( c_func, s0, t1, f2, s3 )
	SV* c_func
	short s0
	char * t1
	float f2
	short s3
PREINIT:
	float (*func)( short, char *, float, short );
CODE:
	func   = INT2PTR(float(*)( short, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fstff( c_func, s0, t1, f2, f3 )
	SV* c_func
	short s0
	char * t1
	float f2
	float f3
PREINIT:
	float (*func)( short, char *, float, float );
CODE:
	func   = INT2PTR(float(*)( short, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fstft( c_func, s0, t1, f2, t3 )
	SV* c_func
	short s0
	char * t1
	float f2
	char * t3
PREINIT:
	float (*func)( short, char *, float, char * );
CODE:
	func   = INT2PTR(float(*)( short, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fstfi( c_func, s0, t1, f2, i3 )
	SV* c_func
	short s0
	char * t1
	float f2
	int i3
PREINIT:
	float (*func)( short, char *, float, int );
CODE:
	func   = INT2PTR(float(*)( short, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fsttd( c_func, s0, t1, t2, d3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	double d3
PREINIT:
	float (*func)( short, char *, char *, double );
CODE:
	func   = INT2PTR(float(*)( short, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fstts( c_func, s0, t1, t2, s3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	short s3
PREINIT:
	float (*func)( short, char *, char *, short );
CODE:
	func   = INT2PTR(float(*)( short, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fsttf( c_func, s0, t1, t2, f3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	float f3
PREINIT:
	float (*func)( short, char *, char *, float );
CODE:
	func   = INT2PTR(float(*)( short, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fsttt( c_func, s0, t1, t2, t3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	char * t3
PREINIT:
	float (*func)( short, char *, char *, char * );
CODE:
	func   = INT2PTR(float(*)( short, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fstti( c_func, s0, t1, t2, i3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	int i3
PREINIT:
	float (*func)( short, char *, char *, int );
CODE:
	func   = INT2PTR(float(*)( short, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fstid( c_func, s0, t1, i2, d3 )
	SV* c_func
	short s0
	char * t1
	int i2
	double d3
PREINIT:
	float (*func)( short, char *, int, double );
CODE:
	func   = INT2PTR(float(*)( short, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fstis( c_func, s0, t1, i2, s3 )
	SV* c_func
	short s0
	char * t1
	int i2
	short s3
PREINIT:
	float (*func)( short, char *, int, short );
CODE:
	func   = INT2PTR(float(*)( short, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fstif( c_func, s0, t1, i2, f3 )
	SV* c_func
	short s0
	char * t1
	int i2
	float f3
PREINIT:
	float (*func)( short, char *, int, float );
CODE:
	func   = INT2PTR(float(*)( short, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fstit( c_func, s0, t1, i2, t3 )
	SV* c_func
	short s0
	char * t1
	int i2
	char * t3
PREINIT:
	float (*func)( short, char *, int, char * );
CODE:
	func   = INT2PTR(float(*)( short, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fstii( c_func, s0, t1, i2, i3 )
	SV* c_func
	short s0
	char * t1
	int i2
	int i3
PREINIT:
	float (*func)( short, char *, int, int );
CODE:
	func   = INT2PTR(float(*)( short, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fsidd( c_func, s0, i1, d2, d3 )
	SV* c_func
	short s0
	int i1
	double d2
	double d3
PREINIT:
	float (*func)( short, int, double, double );
CODE:
	func   = INT2PTR(float(*)( short, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fsids( c_func, s0, i1, d2, s3 )
	SV* c_func
	short s0
	int i1
	double d2
	short s3
PREINIT:
	float (*func)( short, int, double, short );
CODE:
	func   = INT2PTR(float(*)( short, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fsidf( c_func, s0, i1, d2, f3 )
	SV* c_func
	short s0
	int i1
	double d2
	float f3
PREINIT:
	float (*func)( short, int, double, float );
CODE:
	func   = INT2PTR(float(*)( short, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fsidt( c_func, s0, i1, d2, t3 )
	SV* c_func
	short s0
	int i1
	double d2
	char * t3
PREINIT:
	float (*func)( short, int, double, char * );
CODE:
	func   = INT2PTR(float(*)( short, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fsidi( c_func, s0, i1, d2, i3 )
	SV* c_func
	short s0
	int i1
	double d2
	int i3
PREINIT:
	float (*func)( short, int, double, int );
CODE:
	func   = INT2PTR(float(*)( short, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fsisd( c_func, s0, i1, s2, d3 )
	SV* c_func
	short s0
	int i1
	short s2
	double d3
PREINIT:
	float (*func)( short, int, short, double );
CODE:
	func   = INT2PTR(float(*)( short, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fsiss( c_func, s0, i1, s2, s3 )
	SV* c_func
	short s0
	int i1
	short s2
	short s3
PREINIT:
	float (*func)( short, int, short, short );
CODE:
	func   = INT2PTR(float(*)( short, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fsisf( c_func, s0, i1, s2, f3 )
	SV* c_func
	short s0
	int i1
	short s2
	float f3
PREINIT:
	float (*func)( short, int, short, float );
CODE:
	func   = INT2PTR(float(*)( short, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fsist( c_func, s0, i1, s2, t3 )
	SV* c_func
	short s0
	int i1
	short s2
	char * t3
PREINIT:
	float (*func)( short, int, short, char * );
CODE:
	func   = INT2PTR(float(*)( short, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fsisi( c_func, s0, i1, s2, i3 )
	SV* c_func
	short s0
	int i1
	short s2
	int i3
PREINIT:
	float (*func)( short, int, short, int );
CODE:
	func   = INT2PTR(float(*)( short, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fsifd( c_func, s0, i1, f2, d3 )
	SV* c_func
	short s0
	int i1
	float f2
	double d3
PREINIT:
	float (*func)( short, int, float, double );
CODE:
	func   = INT2PTR(float(*)( short, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fsifs( c_func, s0, i1, f2, s3 )
	SV* c_func
	short s0
	int i1
	float f2
	short s3
PREINIT:
	float (*func)( short, int, float, short );
CODE:
	func   = INT2PTR(float(*)( short, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fsiff( c_func, s0, i1, f2, f3 )
	SV* c_func
	short s0
	int i1
	float f2
	float f3
PREINIT:
	float (*func)( short, int, float, float );
CODE:
	func   = INT2PTR(float(*)( short, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fsift( c_func, s0, i1, f2, t3 )
	SV* c_func
	short s0
	int i1
	float f2
	char * t3
PREINIT:
	float (*func)( short, int, float, char * );
CODE:
	func   = INT2PTR(float(*)( short, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fsifi( c_func, s0, i1, f2, i3 )
	SV* c_func
	short s0
	int i1
	float f2
	int i3
PREINIT:
	float (*func)( short, int, float, int );
CODE:
	func   = INT2PTR(float(*)( short, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fsitd( c_func, s0, i1, t2, d3 )
	SV* c_func
	short s0
	int i1
	char * t2
	double d3
PREINIT:
	float (*func)( short, int, char *, double );
CODE:
	func   = INT2PTR(float(*)( short, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fsits( c_func, s0, i1, t2, s3 )
	SV* c_func
	short s0
	int i1
	char * t2
	short s3
PREINIT:
	float (*func)( short, int, char *, short );
CODE:
	func   = INT2PTR(float(*)( short, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fsitf( c_func, s0, i1, t2, f3 )
	SV* c_func
	short s0
	int i1
	char * t2
	float f3
PREINIT:
	float (*func)( short, int, char *, float );
CODE:
	func   = INT2PTR(float(*)( short, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fsitt( c_func, s0, i1, t2, t3 )
	SV* c_func
	short s0
	int i1
	char * t2
	char * t3
PREINIT:
	float (*func)( short, int, char *, char * );
CODE:
	func   = INT2PTR(float(*)( short, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fsiti( c_func, s0, i1, t2, i3 )
	SV* c_func
	short s0
	int i1
	char * t2
	int i3
PREINIT:
	float (*func)( short, int, char *, int );
CODE:
	func   = INT2PTR(float(*)( short, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fsiid( c_func, s0, i1, i2, d3 )
	SV* c_func
	short s0
	int i1
	int i2
	double d3
PREINIT:
	float (*func)( short, int, int, double );
CODE:
	func   = INT2PTR(float(*)( short, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fsiis( c_func, s0, i1, i2, s3 )
	SV* c_func
	short s0
	int i1
	int i2
	short s3
PREINIT:
	float (*func)( short, int, int, short );
CODE:
	func   = INT2PTR(float(*)( short, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fsiif( c_func, s0, i1, i2, f3 )
	SV* c_func
	short s0
	int i1
	int i2
	float f3
PREINIT:
	float (*func)( short, int, int, float );
CODE:
	func   = INT2PTR(float(*)( short, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fsiit( c_func, s0, i1, i2, t3 )
	SV* c_func
	short s0
	int i1
	int i2
	char * t3
PREINIT:
	float (*func)( short, int, int, char * );
CODE:
	func   = INT2PTR(float(*)( short, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fsiii( c_func, s0, i1, i2, i3 )
	SV* c_func
	short s0
	int i1
	int i2
	int i3
PREINIT:
	float (*func)( short, int, int, int );
CODE:
	func   = INT2PTR(float(*)( short, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_ffddd( c_func, f0, d1, d2, d3 )
	SV* c_func
	float f0
	double d1
	double d2
	double d3
PREINIT:
	float (*func)( float, double, double, double );
CODE:
	func   = INT2PTR(float(*)( float, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_ffdds( c_func, f0, d1, d2, s3 )
	SV* c_func
	float f0
	double d1
	double d2
	short s3
PREINIT:
	float (*func)( float, double, double, short );
CODE:
	func   = INT2PTR(float(*)( float, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_ffddf( c_func, f0, d1, d2, f3 )
	SV* c_func
	float f0
	double d1
	double d2
	float f3
PREINIT:
	float (*func)( float, double, double, float );
CODE:
	func   = INT2PTR(float(*)( float, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_ffddt( c_func, f0, d1, d2, t3 )
	SV* c_func
	float f0
	double d1
	double d2
	char * t3
PREINIT:
	float (*func)( float, double, double, char * );
CODE:
	func   = INT2PTR(float(*)( float, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_ffddi( c_func, f0, d1, d2, i3 )
	SV* c_func
	float f0
	double d1
	double d2
	int i3
PREINIT:
	float (*func)( float, double, double, int );
CODE:
	func   = INT2PTR(float(*)( float, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_ffdsd( c_func, f0, d1, s2, d3 )
	SV* c_func
	float f0
	double d1
	short s2
	double d3
PREINIT:
	float (*func)( float, double, short, double );
CODE:
	func   = INT2PTR(float(*)( float, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_ffdss( c_func, f0, d1, s2, s3 )
	SV* c_func
	float f0
	double d1
	short s2
	short s3
PREINIT:
	float (*func)( float, double, short, short );
CODE:
	func   = INT2PTR(float(*)( float, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_ffdsf( c_func, f0, d1, s2, f3 )
	SV* c_func
	float f0
	double d1
	short s2
	float f3
PREINIT:
	float (*func)( float, double, short, float );
CODE:
	func   = INT2PTR(float(*)( float, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_ffdst( c_func, f0, d1, s2, t3 )
	SV* c_func
	float f0
	double d1
	short s2
	char * t3
PREINIT:
	float (*func)( float, double, short, char * );
CODE:
	func   = INT2PTR(float(*)( float, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_ffdsi( c_func, f0, d1, s2, i3 )
	SV* c_func
	float f0
	double d1
	short s2
	int i3
PREINIT:
	float (*func)( float, double, short, int );
CODE:
	func   = INT2PTR(float(*)( float, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ffdfd( c_func, f0, d1, f2, d3 )
	SV* c_func
	float f0
	double d1
	float f2
	double d3
PREINIT:
	float (*func)( float, double, float, double );
CODE:
	func   = INT2PTR(float(*)( float, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ffdfs( c_func, f0, d1, f2, s3 )
	SV* c_func
	float f0
	double d1
	float f2
	short s3
PREINIT:
	float (*func)( float, double, float, short );
CODE:
	func   = INT2PTR(float(*)( float, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_ffdff( c_func, f0, d1, f2, f3 )
	SV* c_func
	float f0
	double d1
	float f2
	float f3
PREINIT:
	float (*func)( float, double, float, float );
CODE:
	func   = INT2PTR(float(*)( float, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_ffdft( c_func, f0, d1, f2, t3 )
	SV* c_func
	float f0
	double d1
	float f2
	char * t3
PREINIT:
	float (*func)( float, double, float, char * );
CODE:
	func   = INT2PTR(float(*)( float, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ffdfi( c_func, f0, d1, f2, i3 )
	SV* c_func
	float f0
	double d1
	float f2
	int i3
PREINIT:
	float (*func)( float, double, float, int );
CODE:
	func   = INT2PTR(float(*)( float, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ffdtd( c_func, f0, d1, t2, d3 )
	SV* c_func
	float f0
	double d1
	char * t2
	double d3
PREINIT:
	float (*func)( float, double, char *, double );
CODE:
	func   = INT2PTR(float(*)( float, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_ffdts( c_func, f0, d1, t2, s3 )
	SV* c_func
	float f0
	double d1
	char * t2
	short s3
PREINIT:
	float (*func)( float, double, char *, short );
CODE:
	func   = INT2PTR(float(*)( float, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ffdtf( c_func, f0, d1, t2, f3 )
	SV* c_func
	float f0
	double d1
	char * t2
	float f3
PREINIT:
	float (*func)( float, double, char *, float );
CODE:
	func   = INT2PTR(float(*)( float, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ffdtt( c_func, f0, d1, t2, t3 )
	SV* c_func
	float f0
	double d1
	char * t2
	char * t3
PREINIT:
	float (*func)( float, double, char *, char * );
CODE:
	func   = INT2PTR(float(*)( float, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_ffdti( c_func, f0, d1, t2, i3 )
	SV* c_func
	float f0
	double d1
	char * t2
	int i3
PREINIT:
	float (*func)( float, double, char *, int );
CODE:
	func   = INT2PTR(float(*)( float, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_ffdid( c_func, f0, d1, i2, d3 )
	SV* c_func
	float f0
	double d1
	int i2
	double d3
PREINIT:
	float (*func)( float, double, int, double );
CODE:
	func   = INT2PTR(float(*)( float, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_ffdis( c_func, f0, d1, i2, s3 )
	SV* c_func
	float f0
	double d1
	int i2
	short s3
PREINIT:
	float (*func)( float, double, int, short );
CODE:
	func   = INT2PTR(float(*)( float, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_ffdif( c_func, f0, d1, i2, f3 )
	SV* c_func
	float f0
	double d1
	int i2
	float f3
PREINIT:
	float (*func)( float, double, int, float );
CODE:
	func   = INT2PTR(float(*)( float, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_ffdit( c_func, f0, d1, i2, t3 )
	SV* c_func
	float f0
	double d1
	int i2
	char * t3
PREINIT:
	float (*func)( float, double, int, char * );
CODE:
	func   = INT2PTR(float(*)( float, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_ffdii( c_func, f0, d1, i2, i3 )
	SV* c_func
	float f0
	double d1
	int i2
	int i3
PREINIT:
	float (*func)( float, double, int, int );
CODE:
	func   = INT2PTR(float(*)( float, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_ffsdd( c_func, f0, s1, d2, d3 )
	SV* c_func
	float f0
	short s1
	double d2
	double d3
PREINIT:
	float (*func)( float, short, double, double );
CODE:
	func   = INT2PTR(float(*)( float, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_ffsds( c_func, f0, s1, d2, s3 )
	SV* c_func
	float f0
	short s1
	double d2
	short s3
PREINIT:
	float (*func)( float, short, double, short );
CODE:
	func   = INT2PTR(float(*)( float, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_ffsdf( c_func, f0, s1, d2, f3 )
	SV* c_func
	float f0
	short s1
	double d2
	float f3
PREINIT:
	float (*func)( float, short, double, float );
CODE:
	func   = INT2PTR(float(*)( float, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_ffsdt( c_func, f0, s1, d2, t3 )
	SV* c_func
	float f0
	short s1
	double d2
	char * t3
PREINIT:
	float (*func)( float, short, double, char * );
CODE:
	func   = INT2PTR(float(*)( float, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_ffsdi( c_func, f0, s1, d2, i3 )
	SV* c_func
	float f0
	short s1
	double d2
	int i3
PREINIT:
	float (*func)( float, short, double, int );
CODE:
	func   = INT2PTR(float(*)( float, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_ffssd( c_func, f0, s1, s2, d3 )
	SV* c_func
	float f0
	short s1
	short s2
	double d3
PREINIT:
	float (*func)( float, short, short, double );
CODE:
	func   = INT2PTR(float(*)( float, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_ffsss( c_func, f0, s1, s2, s3 )
	SV* c_func
	float f0
	short s1
	short s2
	short s3
PREINIT:
	float (*func)( float, short, short, short );
CODE:
	func   = INT2PTR(float(*)( float, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_ffssf( c_func, f0, s1, s2, f3 )
	SV* c_func
	float f0
	short s1
	short s2
	float f3
PREINIT:
	float (*func)( float, short, short, float );
CODE:
	func   = INT2PTR(float(*)( float, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_ffsst( c_func, f0, s1, s2, t3 )
	SV* c_func
	float f0
	short s1
	short s2
	char * t3
PREINIT:
	float (*func)( float, short, short, char * );
CODE:
	func   = INT2PTR(float(*)( float, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_ffssi( c_func, f0, s1, s2, i3 )
	SV* c_func
	float f0
	short s1
	short s2
	int i3
PREINIT:
	float (*func)( float, short, short, int );
CODE:
	func   = INT2PTR(float(*)( float, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ffsfd( c_func, f0, s1, f2, d3 )
	SV* c_func
	float f0
	short s1
	float f2
	double d3
PREINIT:
	float (*func)( float, short, float, double );
CODE:
	func   = INT2PTR(float(*)( float, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ffsfs( c_func, f0, s1, f2, s3 )
	SV* c_func
	float f0
	short s1
	float f2
	short s3
PREINIT:
	float (*func)( float, short, float, short );
CODE:
	func   = INT2PTR(float(*)( float, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_ffsff( c_func, f0, s1, f2, f3 )
	SV* c_func
	float f0
	short s1
	float f2
	float f3
PREINIT:
	float (*func)( float, short, float, float );
CODE:
	func   = INT2PTR(float(*)( float, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_ffsft( c_func, f0, s1, f2, t3 )
	SV* c_func
	float f0
	short s1
	float f2
	char * t3
PREINIT:
	float (*func)( float, short, float, char * );
CODE:
	func   = INT2PTR(float(*)( float, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ffsfi( c_func, f0, s1, f2, i3 )
	SV* c_func
	float f0
	short s1
	float f2
	int i3
PREINIT:
	float (*func)( float, short, float, int );
CODE:
	func   = INT2PTR(float(*)( float, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ffstd( c_func, f0, s1, t2, d3 )
	SV* c_func
	float f0
	short s1
	char * t2
	double d3
PREINIT:
	float (*func)( float, short, char *, double );
CODE:
	func   = INT2PTR(float(*)( float, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_ffsts( c_func, f0, s1, t2, s3 )
	SV* c_func
	float f0
	short s1
	char * t2
	short s3
PREINIT:
	float (*func)( float, short, char *, short );
CODE:
	func   = INT2PTR(float(*)( float, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ffstf( c_func, f0, s1, t2, f3 )
	SV* c_func
	float f0
	short s1
	char * t2
	float f3
PREINIT:
	float (*func)( float, short, char *, float );
CODE:
	func   = INT2PTR(float(*)( float, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ffstt( c_func, f0, s1, t2, t3 )
	SV* c_func
	float f0
	short s1
	char * t2
	char * t3
PREINIT:
	float (*func)( float, short, char *, char * );
CODE:
	func   = INT2PTR(float(*)( float, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_ffsti( c_func, f0, s1, t2, i3 )
	SV* c_func
	float f0
	short s1
	char * t2
	int i3
PREINIT:
	float (*func)( float, short, char *, int );
CODE:
	func   = INT2PTR(float(*)( float, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_ffsid( c_func, f0, s1, i2, d3 )
	SV* c_func
	float f0
	short s1
	int i2
	double d3
PREINIT:
	float (*func)( float, short, int, double );
CODE:
	func   = INT2PTR(float(*)( float, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_ffsis( c_func, f0, s1, i2, s3 )
	SV* c_func
	float f0
	short s1
	int i2
	short s3
PREINIT:
	float (*func)( float, short, int, short );
CODE:
	func   = INT2PTR(float(*)( float, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_ffsif( c_func, f0, s1, i2, f3 )
	SV* c_func
	float f0
	short s1
	int i2
	float f3
PREINIT:
	float (*func)( float, short, int, float );
CODE:
	func   = INT2PTR(float(*)( float, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_ffsit( c_func, f0, s1, i2, t3 )
	SV* c_func
	float f0
	short s1
	int i2
	char * t3
PREINIT:
	float (*func)( float, short, int, char * );
CODE:
	func   = INT2PTR(float(*)( float, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_ffsii( c_func, f0, s1, i2, i3 )
	SV* c_func
	float f0
	short s1
	int i2
	int i3
PREINIT:
	float (*func)( float, short, int, int );
CODE:
	func   = INT2PTR(float(*)( float, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fffdd( c_func, f0, f1, d2, d3 )
	SV* c_func
	float f0
	float f1
	double d2
	double d3
PREINIT:
	float (*func)( float, float, double, double );
CODE:
	func   = INT2PTR(float(*)( float, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fffds( c_func, f0, f1, d2, s3 )
	SV* c_func
	float f0
	float f1
	double d2
	short s3
PREINIT:
	float (*func)( float, float, double, short );
CODE:
	func   = INT2PTR(float(*)( float, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fffdf( c_func, f0, f1, d2, f3 )
	SV* c_func
	float f0
	float f1
	double d2
	float f3
PREINIT:
	float (*func)( float, float, double, float );
CODE:
	func   = INT2PTR(float(*)( float, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fffdt( c_func, f0, f1, d2, t3 )
	SV* c_func
	float f0
	float f1
	double d2
	char * t3
PREINIT:
	float (*func)( float, float, double, char * );
CODE:
	func   = INT2PTR(float(*)( float, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fffdi( c_func, f0, f1, d2, i3 )
	SV* c_func
	float f0
	float f1
	double d2
	int i3
PREINIT:
	float (*func)( float, float, double, int );
CODE:
	func   = INT2PTR(float(*)( float, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fffsd( c_func, f0, f1, s2, d3 )
	SV* c_func
	float f0
	float f1
	short s2
	double d3
PREINIT:
	float (*func)( float, float, short, double );
CODE:
	func   = INT2PTR(float(*)( float, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fffss( c_func, f0, f1, s2, s3 )
	SV* c_func
	float f0
	float f1
	short s2
	short s3
PREINIT:
	float (*func)( float, float, short, short );
CODE:
	func   = INT2PTR(float(*)( float, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fffsf( c_func, f0, f1, s2, f3 )
	SV* c_func
	float f0
	float f1
	short s2
	float f3
PREINIT:
	float (*func)( float, float, short, float );
CODE:
	func   = INT2PTR(float(*)( float, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fffst( c_func, f0, f1, s2, t3 )
	SV* c_func
	float f0
	float f1
	short s2
	char * t3
PREINIT:
	float (*func)( float, float, short, char * );
CODE:
	func   = INT2PTR(float(*)( float, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fffsi( c_func, f0, f1, s2, i3 )
	SV* c_func
	float f0
	float f1
	short s2
	int i3
PREINIT:
	float (*func)( float, float, short, int );
CODE:
	func   = INT2PTR(float(*)( float, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ffffd( c_func, f0, f1, f2, d3 )
	SV* c_func
	float f0
	float f1
	float f2
	double d3
PREINIT:
	float (*func)( float, float, float, double );
CODE:
	func   = INT2PTR(float(*)( float, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ffffs( c_func, f0, f1, f2, s3 )
	SV* c_func
	float f0
	float f1
	float f2
	short s3
PREINIT:
	float (*func)( float, float, float, short );
CODE:
	func   = INT2PTR(float(*)( float, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fffff( c_func, f0, f1, f2, f3 )
	SV* c_func
	float f0
	float f1
	float f2
	float f3
PREINIT:
	float (*func)( float, float, float, float );
CODE:
	func   = INT2PTR(float(*)( float, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fffft( c_func, f0, f1, f2, t3 )
	SV* c_func
	float f0
	float f1
	float f2
	char * t3
PREINIT:
	float (*func)( float, float, float, char * );
CODE:
	func   = INT2PTR(float(*)( float, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ffffi( c_func, f0, f1, f2, i3 )
	SV* c_func
	float f0
	float f1
	float f2
	int i3
PREINIT:
	float (*func)( float, float, float, int );
CODE:
	func   = INT2PTR(float(*)( float, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ffftd( c_func, f0, f1, t2, d3 )
	SV* c_func
	float f0
	float f1
	char * t2
	double d3
PREINIT:
	float (*func)( float, float, char *, double );
CODE:
	func   = INT2PTR(float(*)( float, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fffts( c_func, f0, f1, t2, s3 )
	SV* c_func
	float f0
	float f1
	char * t2
	short s3
PREINIT:
	float (*func)( float, float, char *, short );
CODE:
	func   = INT2PTR(float(*)( float, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ffftf( c_func, f0, f1, t2, f3 )
	SV* c_func
	float f0
	float f1
	char * t2
	float f3
PREINIT:
	float (*func)( float, float, char *, float );
CODE:
	func   = INT2PTR(float(*)( float, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ffftt( c_func, f0, f1, t2, t3 )
	SV* c_func
	float f0
	float f1
	char * t2
	char * t3
PREINIT:
	float (*func)( float, float, char *, char * );
CODE:
	func   = INT2PTR(float(*)( float, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fffti( c_func, f0, f1, t2, i3 )
	SV* c_func
	float f0
	float f1
	char * t2
	int i3
PREINIT:
	float (*func)( float, float, char *, int );
CODE:
	func   = INT2PTR(float(*)( float, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fffid( c_func, f0, f1, i2, d3 )
	SV* c_func
	float f0
	float f1
	int i2
	double d3
PREINIT:
	float (*func)( float, float, int, double );
CODE:
	func   = INT2PTR(float(*)( float, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fffis( c_func, f0, f1, i2, s3 )
	SV* c_func
	float f0
	float f1
	int i2
	short s3
PREINIT:
	float (*func)( float, float, int, short );
CODE:
	func   = INT2PTR(float(*)( float, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fffif( c_func, f0, f1, i2, f3 )
	SV* c_func
	float f0
	float f1
	int i2
	float f3
PREINIT:
	float (*func)( float, float, int, float );
CODE:
	func   = INT2PTR(float(*)( float, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fffit( c_func, f0, f1, i2, t3 )
	SV* c_func
	float f0
	float f1
	int i2
	char * t3
PREINIT:
	float (*func)( float, float, int, char * );
CODE:
	func   = INT2PTR(float(*)( float, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fffii( c_func, f0, f1, i2, i3 )
	SV* c_func
	float f0
	float f1
	int i2
	int i3
PREINIT:
	float (*func)( float, float, int, int );
CODE:
	func   = INT2PTR(float(*)( float, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fftdd( c_func, f0, t1, d2, d3 )
	SV* c_func
	float f0
	char * t1
	double d2
	double d3
PREINIT:
	float (*func)( float, char *, double, double );
CODE:
	func   = INT2PTR(float(*)( float, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fftds( c_func, f0, t1, d2, s3 )
	SV* c_func
	float f0
	char * t1
	double d2
	short s3
PREINIT:
	float (*func)( float, char *, double, short );
CODE:
	func   = INT2PTR(float(*)( float, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fftdf( c_func, f0, t1, d2, f3 )
	SV* c_func
	float f0
	char * t1
	double d2
	float f3
PREINIT:
	float (*func)( float, char *, double, float );
CODE:
	func   = INT2PTR(float(*)( float, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fftdt( c_func, f0, t1, d2, t3 )
	SV* c_func
	float f0
	char * t1
	double d2
	char * t3
PREINIT:
	float (*func)( float, char *, double, char * );
CODE:
	func   = INT2PTR(float(*)( float, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fftdi( c_func, f0, t1, d2, i3 )
	SV* c_func
	float f0
	char * t1
	double d2
	int i3
PREINIT:
	float (*func)( float, char *, double, int );
CODE:
	func   = INT2PTR(float(*)( float, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fftsd( c_func, f0, t1, s2, d3 )
	SV* c_func
	float f0
	char * t1
	short s2
	double d3
PREINIT:
	float (*func)( float, char *, short, double );
CODE:
	func   = INT2PTR(float(*)( float, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fftss( c_func, f0, t1, s2, s3 )
	SV* c_func
	float f0
	char * t1
	short s2
	short s3
PREINIT:
	float (*func)( float, char *, short, short );
CODE:
	func   = INT2PTR(float(*)( float, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fftsf( c_func, f0, t1, s2, f3 )
	SV* c_func
	float f0
	char * t1
	short s2
	float f3
PREINIT:
	float (*func)( float, char *, short, float );
CODE:
	func   = INT2PTR(float(*)( float, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fftst( c_func, f0, t1, s2, t3 )
	SV* c_func
	float f0
	char * t1
	short s2
	char * t3
PREINIT:
	float (*func)( float, char *, short, char * );
CODE:
	func   = INT2PTR(float(*)( float, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fftsi( c_func, f0, t1, s2, i3 )
	SV* c_func
	float f0
	char * t1
	short s2
	int i3
PREINIT:
	float (*func)( float, char *, short, int );
CODE:
	func   = INT2PTR(float(*)( float, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fftfd( c_func, f0, t1, f2, d3 )
	SV* c_func
	float f0
	char * t1
	float f2
	double d3
PREINIT:
	float (*func)( float, char *, float, double );
CODE:
	func   = INT2PTR(float(*)( float, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fftfs( c_func, f0, t1, f2, s3 )
	SV* c_func
	float f0
	char * t1
	float f2
	short s3
PREINIT:
	float (*func)( float, char *, float, short );
CODE:
	func   = INT2PTR(float(*)( float, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fftff( c_func, f0, t1, f2, f3 )
	SV* c_func
	float f0
	char * t1
	float f2
	float f3
PREINIT:
	float (*func)( float, char *, float, float );
CODE:
	func   = INT2PTR(float(*)( float, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fftft( c_func, f0, t1, f2, t3 )
	SV* c_func
	float f0
	char * t1
	float f2
	char * t3
PREINIT:
	float (*func)( float, char *, float, char * );
CODE:
	func   = INT2PTR(float(*)( float, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fftfi( c_func, f0, t1, f2, i3 )
	SV* c_func
	float f0
	char * t1
	float f2
	int i3
PREINIT:
	float (*func)( float, char *, float, int );
CODE:
	func   = INT2PTR(float(*)( float, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ffttd( c_func, f0, t1, t2, d3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	double d3
PREINIT:
	float (*func)( float, char *, char *, double );
CODE:
	func   = INT2PTR(float(*)( float, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fftts( c_func, f0, t1, t2, s3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	short s3
PREINIT:
	float (*func)( float, char *, char *, short );
CODE:
	func   = INT2PTR(float(*)( float, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ffttf( c_func, f0, t1, t2, f3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	float f3
PREINIT:
	float (*func)( float, char *, char *, float );
CODE:
	func   = INT2PTR(float(*)( float, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ffttt( c_func, f0, t1, t2, t3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	char * t3
PREINIT:
	float (*func)( float, char *, char *, char * );
CODE:
	func   = INT2PTR(float(*)( float, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fftti( c_func, f0, t1, t2, i3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	int i3
PREINIT:
	float (*func)( float, char *, char *, int );
CODE:
	func   = INT2PTR(float(*)( float, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fftid( c_func, f0, t1, i2, d3 )
	SV* c_func
	float f0
	char * t1
	int i2
	double d3
PREINIT:
	float (*func)( float, char *, int, double );
CODE:
	func   = INT2PTR(float(*)( float, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fftis( c_func, f0, t1, i2, s3 )
	SV* c_func
	float f0
	char * t1
	int i2
	short s3
PREINIT:
	float (*func)( float, char *, int, short );
CODE:
	func   = INT2PTR(float(*)( float, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fftif( c_func, f0, t1, i2, f3 )
	SV* c_func
	float f0
	char * t1
	int i2
	float f3
PREINIT:
	float (*func)( float, char *, int, float );
CODE:
	func   = INT2PTR(float(*)( float, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fftit( c_func, f0, t1, i2, t3 )
	SV* c_func
	float f0
	char * t1
	int i2
	char * t3
PREINIT:
	float (*func)( float, char *, int, char * );
CODE:
	func   = INT2PTR(float(*)( float, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fftii( c_func, f0, t1, i2, i3 )
	SV* c_func
	float f0
	char * t1
	int i2
	int i3
PREINIT:
	float (*func)( float, char *, int, int );
CODE:
	func   = INT2PTR(float(*)( float, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_ffidd( c_func, f0, i1, d2, d3 )
	SV* c_func
	float f0
	int i1
	double d2
	double d3
PREINIT:
	float (*func)( float, int, double, double );
CODE:
	func   = INT2PTR(float(*)( float, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_ffids( c_func, f0, i1, d2, s3 )
	SV* c_func
	float f0
	int i1
	double d2
	short s3
PREINIT:
	float (*func)( float, int, double, short );
CODE:
	func   = INT2PTR(float(*)( float, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_ffidf( c_func, f0, i1, d2, f3 )
	SV* c_func
	float f0
	int i1
	double d2
	float f3
PREINIT:
	float (*func)( float, int, double, float );
CODE:
	func   = INT2PTR(float(*)( float, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_ffidt( c_func, f0, i1, d2, t3 )
	SV* c_func
	float f0
	int i1
	double d2
	char * t3
PREINIT:
	float (*func)( float, int, double, char * );
CODE:
	func   = INT2PTR(float(*)( float, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_ffidi( c_func, f0, i1, d2, i3 )
	SV* c_func
	float f0
	int i1
	double d2
	int i3
PREINIT:
	float (*func)( float, int, double, int );
CODE:
	func   = INT2PTR(float(*)( float, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_ffisd( c_func, f0, i1, s2, d3 )
	SV* c_func
	float f0
	int i1
	short s2
	double d3
PREINIT:
	float (*func)( float, int, short, double );
CODE:
	func   = INT2PTR(float(*)( float, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_ffiss( c_func, f0, i1, s2, s3 )
	SV* c_func
	float f0
	int i1
	short s2
	short s3
PREINIT:
	float (*func)( float, int, short, short );
CODE:
	func   = INT2PTR(float(*)( float, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_ffisf( c_func, f0, i1, s2, f3 )
	SV* c_func
	float f0
	int i1
	short s2
	float f3
PREINIT:
	float (*func)( float, int, short, float );
CODE:
	func   = INT2PTR(float(*)( float, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_ffist( c_func, f0, i1, s2, t3 )
	SV* c_func
	float f0
	int i1
	short s2
	char * t3
PREINIT:
	float (*func)( float, int, short, char * );
CODE:
	func   = INT2PTR(float(*)( float, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_ffisi( c_func, f0, i1, s2, i3 )
	SV* c_func
	float f0
	int i1
	short s2
	int i3
PREINIT:
	float (*func)( float, int, short, int );
CODE:
	func   = INT2PTR(float(*)( float, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ffifd( c_func, f0, i1, f2, d3 )
	SV* c_func
	float f0
	int i1
	float f2
	double d3
PREINIT:
	float (*func)( float, int, float, double );
CODE:
	func   = INT2PTR(float(*)( float, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ffifs( c_func, f0, i1, f2, s3 )
	SV* c_func
	float f0
	int i1
	float f2
	short s3
PREINIT:
	float (*func)( float, int, float, short );
CODE:
	func   = INT2PTR(float(*)( float, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_ffiff( c_func, f0, i1, f2, f3 )
	SV* c_func
	float f0
	int i1
	float f2
	float f3
PREINIT:
	float (*func)( float, int, float, float );
CODE:
	func   = INT2PTR(float(*)( float, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_ffift( c_func, f0, i1, f2, t3 )
	SV* c_func
	float f0
	int i1
	float f2
	char * t3
PREINIT:
	float (*func)( float, int, float, char * );
CODE:
	func   = INT2PTR(float(*)( float, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ffifi( c_func, f0, i1, f2, i3 )
	SV* c_func
	float f0
	int i1
	float f2
	int i3
PREINIT:
	float (*func)( float, int, float, int );
CODE:
	func   = INT2PTR(float(*)( float, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ffitd( c_func, f0, i1, t2, d3 )
	SV* c_func
	float f0
	int i1
	char * t2
	double d3
PREINIT:
	float (*func)( float, int, char *, double );
CODE:
	func   = INT2PTR(float(*)( float, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_ffits( c_func, f0, i1, t2, s3 )
	SV* c_func
	float f0
	int i1
	char * t2
	short s3
PREINIT:
	float (*func)( float, int, char *, short );
CODE:
	func   = INT2PTR(float(*)( float, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ffitf( c_func, f0, i1, t2, f3 )
	SV* c_func
	float f0
	int i1
	char * t2
	float f3
PREINIT:
	float (*func)( float, int, char *, float );
CODE:
	func   = INT2PTR(float(*)( float, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ffitt( c_func, f0, i1, t2, t3 )
	SV* c_func
	float f0
	int i1
	char * t2
	char * t3
PREINIT:
	float (*func)( float, int, char *, char * );
CODE:
	func   = INT2PTR(float(*)( float, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_ffiti( c_func, f0, i1, t2, i3 )
	SV* c_func
	float f0
	int i1
	char * t2
	int i3
PREINIT:
	float (*func)( float, int, char *, int );
CODE:
	func   = INT2PTR(float(*)( float, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_ffiid( c_func, f0, i1, i2, d3 )
	SV* c_func
	float f0
	int i1
	int i2
	double d3
PREINIT:
	float (*func)( float, int, int, double );
CODE:
	func   = INT2PTR(float(*)( float, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_ffiis( c_func, f0, i1, i2, s3 )
	SV* c_func
	float f0
	int i1
	int i2
	short s3
PREINIT:
	float (*func)( float, int, int, short );
CODE:
	func   = INT2PTR(float(*)( float, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_ffiif( c_func, f0, i1, i2, f3 )
	SV* c_func
	float f0
	int i1
	int i2
	float f3
PREINIT:
	float (*func)( float, int, int, float );
CODE:
	func   = INT2PTR(float(*)( float, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_ffiit( c_func, f0, i1, i2, t3 )
	SV* c_func
	float f0
	int i1
	int i2
	char * t3
PREINIT:
	float (*func)( float, int, int, char * );
CODE:
	func   = INT2PTR(float(*)( float, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_ffiii( c_func, f0, i1, i2, i3 )
	SV* c_func
	float f0
	int i1
	int i2
	int i3
PREINIT:
	float (*func)( float, int, int, int );
CODE:
	func   = INT2PTR(float(*)( float, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_ftddd( c_func, t0, d1, d2, d3 )
	SV* c_func
	char * t0
	double d1
	double d2
	double d3
PREINIT:
	float (*func)( char *, double, double, double );
CODE:
	func   = INT2PTR(float(*)( char *, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_ftdds( c_func, t0, d1, d2, s3 )
	SV* c_func
	char * t0
	double d1
	double d2
	short s3
PREINIT:
	float (*func)( char *, double, double, short );
CODE:
	func   = INT2PTR(float(*)( char *, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_ftddf( c_func, t0, d1, d2, f3 )
	SV* c_func
	char * t0
	double d1
	double d2
	float f3
PREINIT:
	float (*func)( char *, double, double, float );
CODE:
	func   = INT2PTR(float(*)( char *, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_ftddt( c_func, t0, d1, d2, t3 )
	SV* c_func
	char * t0
	double d1
	double d2
	char * t3
PREINIT:
	float (*func)( char *, double, double, char * );
CODE:
	func   = INT2PTR(float(*)( char *, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_ftddi( c_func, t0, d1, d2, i3 )
	SV* c_func
	char * t0
	double d1
	double d2
	int i3
PREINIT:
	float (*func)( char *, double, double, int );
CODE:
	func   = INT2PTR(float(*)( char *, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_ftdsd( c_func, t0, d1, s2, d3 )
	SV* c_func
	char * t0
	double d1
	short s2
	double d3
PREINIT:
	float (*func)( char *, double, short, double );
CODE:
	func   = INT2PTR(float(*)( char *, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_ftdss( c_func, t0, d1, s2, s3 )
	SV* c_func
	char * t0
	double d1
	short s2
	short s3
PREINIT:
	float (*func)( char *, double, short, short );
CODE:
	func   = INT2PTR(float(*)( char *, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_ftdsf( c_func, t0, d1, s2, f3 )
	SV* c_func
	char * t0
	double d1
	short s2
	float f3
PREINIT:
	float (*func)( char *, double, short, float );
CODE:
	func   = INT2PTR(float(*)( char *, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_ftdst( c_func, t0, d1, s2, t3 )
	SV* c_func
	char * t0
	double d1
	short s2
	char * t3
PREINIT:
	float (*func)( char *, double, short, char * );
CODE:
	func   = INT2PTR(float(*)( char *, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_ftdsi( c_func, t0, d1, s2, i3 )
	SV* c_func
	char * t0
	double d1
	short s2
	int i3
PREINIT:
	float (*func)( char *, double, short, int );
CODE:
	func   = INT2PTR(float(*)( char *, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ftdfd( c_func, t0, d1, f2, d3 )
	SV* c_func
	char * t0
	double d1
	float f2
	double d3
PREINIT:
	float (*func)( char *, double, float, double );
CODE:
	func   = INT2PTR(float(*)( char *, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ftdfs( c_func, t0, d1, f2, s3 )
	SV* c_func
	char * t0
	double d1
	float f2
	short s3
PREINIT:
	float (*func)( char *, double, float, short );
CODE:
	func   = INT2PTR(float(*)( char *, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_ftdff( c_func, t0, d1, f2, f3 )
	SV* c_func
	char * t0
	double d1
	float f2
	float f3
PREINIT:
	float (*func)( char *, double, float, float );
CODE:
	func   = INT2PTR(float(*)( char *, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_ftdft( c_func, t0, d1, f2, t3 )
	SV* c_func
	char * t0
	double d1
	float f2
	char * t3
PREINIT:
	float (*func)( char *, double, float, char * );
CODE:
	func   = INT2PTR(float(*)( char *, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ftdfi( c_func, t0, d1, f2, i3 )
	SV* c_func
	char * t0
	double d1
	float f2
	int i3
PREINIT:
	float (*func)( char *, double, float, int );
CODE:
	func   = INT2PTR(float(*)( char *, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ftdtd( c_func, t0, d1, t2, d3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	double d3
PREINIT:
	float (*func)( char *, double, char *, double );
CODE:
	func   = INT2PTR(float(*)( char *, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_ftdts( c_func, t0, d1, t2, s3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	short s3
PREINIT:
	float (*func)( char *, double, char *, short );
CODE:
	func   = INT2PTR(float(*)( char *, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ftdtf( c_func, t0, d1, t2, f3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	float f3
PREINIT:
	float (*func)( char *, double, char *, float );
CODE:
	func   = INT2PTR(float(*)( char *, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ftdtt( c_func, t0, d1, t2, t3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	char * t3
PREINIT:
	float (*func)( char *, double, char *, char * );
CODE:
	func   = INT2PTR(float(*)( char *, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_ftdti( c_func, t0, d1, t2, i3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	int i3
PREINIT:
	float (*func)( char *, double, char *, int );
CODE:
	func   = INT2PTR(float(*)( char *, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_ftdid( c_func, t0, d1, i2, d3 )
	SV* c_func
	char * t0
	double d1
	int i2
	double d3
PREINIT:
	float (*func)( char *, double, int, double );
CODE:
	func   = INT2PTR(float(*)( char *, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_ftdis( c_func, t0, d1, i2, s3 )
	SV* c_func
	char * t0
	double d1
	int i2
	short s3
PREINIT:
	float (*func)( char *, double, int, short );
CODE:
	func   = INT2PTR(float(*)( char *, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_ftdif( c_func, t0, d1, i2, f3 )
	SV* c_func
	char * t0
	double d1
	int i2
	float f3
PREINIT:
	float (*func)( char *, double, int, float );
CODE:
	func   = INT2PTR(float(*)( char *, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_ftdit( c_func, t0, d1, i2, t3 )
	SV* c_func
	char * t0
	double d1
	int i2
	char * t3
PREINIT:
	float (*func)( char *, double, int, char * );
CODE:
	func   = INT2PTR(float(*)( char *, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_ftdii( c_func, t0, d1, i2, i3 )
	SV* c_func
	char * t0
	double d1
	int i2
	int i3
PREINIT:
	float (*func)( char *, double, int, int );
CODE:
	func   = INT2PTR(float(*)( char *, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_ftsdd( c_func, t0, s1, d2, d3 )
	SV* c_func
	char * t0
	short s1
	double d2
	double d3
PREINIT:
	float (*func)( char *, short, double, double );
CODE:
	func   = INT2PTR(float(*)( char *, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_ftsds( c_func, t0, s1, d2, s3 )
	SV* c_func
	char * t0
	short s1
	double d2
	short s3
PREINIT:
	float (*func)( char *, short, double, short );
CODE:
	func   = INT2PTR(float(*)( char *, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_ftsdf( c_func, t0, s1, d2, f3 )
	SV* c_func
	char * t0
	short s1
	double d2
	float f3
PREINIT:
	float (*func)( char *, short, double, float );
CODE:
	func   = INT2PTR(float(*)( char *, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_ftsdt( c_func, t0, s1, d2, t3 )
	SV* c_func
	char * t0
	short s1
	double d2
	char * t3
PREINIT:
	float (*func)( char *, short, double, char * );
CODE:
	func   = INT2PTR(float(*)( char *, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_ftsdi( c_func, t0, s1, d2, i3 )
	SV* c_func
	char * t0
	short s1
	double d2
	int i3
PREINIT:
	float (*func)( char *, short, double, int );
CODE:
	func   = INT2PTR(float(*)( char *, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_ftssd( c_func, t0, s1, s2, d3 )
	SV* c_func
	char * t0
	short s1
	short s2
	double d3
PREINIT:
	float (*func)( char *, short, short, double );
CODE:
	func   = INT2PTR(float(*)( char *, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_ftsss( c_func, t0, s1, s2, s3 )
	SV* c_func
	char * t0
	short s1
	short s2
	short s3
PREINIT:
	float (*func)( char *, short, short, short );
CODE:
	func   = INT2PTR(float(*)( char *, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_ftssf( c_func, t0, s1, s2, f3 )
	SV* c_func
	char * t0
	short s1
	short s2
	float f3
PREINIT:
	float (*func)( char *, short, short, float );
CODE:
	func   = INT2PTR(float(*)( char *, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_ftsst( c_func, t0, s1, s2, t3 )
	SV* c_func
	char * t0
	short s1
	short s2
	char * t3
PREINIT:
	float (*func)( char *, short, short, char * );
CODE:
	func   = INT2PTR(float(*)( char *, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_ftssi( c_func, t0, s1, s2, i3 )
	SV* c_func
	char * t0
	short s1
	short s2
	int i3
PREINIT:
	float (*func)( char *, short, short, int );
CODE:
	func   = INT2PTR(float(*)( char *, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ftsfd( c_func, t0, s1, f2, d3 )
	SV* c_func
	char * t0
	short s1
	float f2
	double d3
PREINIT:
	float (*func)( char *, short, float, double );
CODE:
	func   = INT2PTR(float(*)( char *, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ftsfs( c_func, t0, s1, f2, s3 )
	SV* c_func
	char * t0
	short s1
	float f2
	short s3
PREINIT:
	float (*func)( char *, short, float, short );
CODE:
	func   = INT2PTR(float(*)( char *, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_ftsff( c_func, t0, s1, f2, f3 )
	SV* c_func
	char * t0
	short s1
	float f2
	float f3
PREINIT:
	float (*func)( char *, short, float, float );
CODE:
	func   = INT2PTR(float(*)( char *, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_ftsft( c_func, t0, s1, f2, t3 )
	SV* c_func
	char * t0
	short s1
	float f2
	char * t3
PREINIT:
	float (*func)( char *, short, float, char * );
CODE:
	func   = INT2PTR(float(*)( char *, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ftsfi( c_func, t0, s1, f2, i3 )
	SV* c_func
	char * t0
	short s1
	float f2
	int i3
PREINIT:
	float (*func)( char *, short, float, int );
CODE:
	func   = INT2PTR(float(*)( char *, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ftstd( c_func, t0, s1, t2, d3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	double d3
PREINIT:
	float (*func)( char *, short, char *, double );
CODE:
	func   = INT2PTR(float(*)( char *, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_ftsts( c_func, t0, s1, t2, s3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	short s3
PREINIT:
	float (*func)( char *, short, char *, short );
CODE:
	func   = INT2PTR(float(*)( char *, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ftstf( c_func, t0, s1, t2, f3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	float f3
PREINIT:
	float (*func)( char *, short, char *, float );
CODE:
	func   = INT2PTR(float(*)( char *, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ftstt( c_func, t0, s1, t2, t3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	char * t3
PREINIT:
	float (*func)( char *, short, char *, char * );
CODE:
	func   = INT2PTR(float(*)( char *, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_ftsti( c_func, t0, s1, t2, i3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	int i3
PREINIT:
	float (*func)( char *, short, char *, int );
CODE:
	func   = INT2PTR(float(*)( char *, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_ftsid( c_func, t0, s1, i2, d3 )
	SV* c_func
	char * t0
	short s1
	int i2
	double d3
PREINIT:
	float (*func)( char *, short, int, double );
CODE:
	func   = INT2PTR(float(*)( char *, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_ftsis( c_func, t0, s1, i2, s3 )
	SV* c_func
	char * t0
	short s1
	int i2
	short s3
PREINIT:
	float (*func)( char *, short, int, short );
CODE:
	func   = INT2PTR(float(*)( char *, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_ftsif( c_func, t0, s1, i2, f3 )
	SV* c_func
	char * t0
	short s1
	int i2
	float f3
PREINIT:
	float (*func)( char *, short, int, float );
CODE:
	func   = INT2PTR(float(*)( char *, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_ftsit( c_func, t0, s1, i2, t3 )
	SV* c_func
	char * t0
	short s1
	int i2
	char * t3
PREINIT:
	float (*func)( char *, short, int, char * );
CODE:
	func   = INT2PTR(float(*)( char *, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_ftsii( c_func, t0, s1, i2, i3 )
	SV* c_func
	char * t0
	short s1
	int i2
	int i3
PREINIT:
	float (*func)( char *, short, int, int );
CODE:
	func   = INT2PTR(float(*)( char *, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_ftfdd( c_func, t0, f1, d2, d3 )
	SV* c_func
	char * t0
	float f1
	double d2
	double d3
PREINIT:
	float (*func)( char *, float, double, double );
CODE:
	func   = INT2PTR(float(*)( char *, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_ftfds( c_func, t0, f1, d2, s3 )
	SV* c_func
	char * t0
	float f1
	double d2
	short s3
PREINIT:
	float (*func)( char *, float, double, short );
CODE:
	func   = INT2PTR(float(*)( char *, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_ftfdf( c_func, t0, f1, d2, f3 )
	SV* c_func
	char * t0
	float f1
	double d2
	float f3
PREINIT:
	float (*func)( char *, float, double, float );
CODE:
	func   = INT2PTR(float(*)( char *, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_ftfdt( c_func, t0, f1, d2, t3 )
	SV* c_func
	char * t0
	float f1
	double d2
	char * t3
PREINIT:
	float (*func)( char *, float, double, char * );
CODE:
	func   = INT2PTR(float(*)( char *, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_ftfdi( c_func, t0, f1, d2, i3 )
	SV* c_func
	char * t0
	float f1
	double d2
	int i3
PREINIT:
	float (*func)( char *, float, double, int );
CODE:
	func   = INT2PTR(float(*)( char *, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_ftfsd( c_func, t0, f1, s2, d3 )
	SV* c_func
	char * t0
	float f1
	short s2
	double d3
PREINIT:
	float (*func)( char *, float, short, double );
CODE:
	func   = INT2PTR(float(*)( char *, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_ftfss( c_func, t0, f1, s2, s3 )
	SV* c_func
	char * t0
	float f1
	short s2
	short s3
PREINIT:
	float (*func)( char *, float, short, short );
CODE:
	func   = INT2PTR(float(*)( char *, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_ftfsf( c_func, t0, f1, s2, f3 )
	SV* c_func
	char * t0
	float f1
	short s2
	float f3
PREINIT:
	float (*func)( char *, float, short, float );
CODE:
	func   = INT2PTR(float(*)( char *, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_ftfst( c_func, t0, f1, s2, t3 )
	SV* c_func
	char * t0
	float f1
	short s2
	char * t3
PREINIT:
	float (*func)( char *, float, short, char * );
CODE:
	func   = INT2PTR(float(*)( char *, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_ftfsi( c_func, t0, f1, s2, i3 )
	SV* c_func
	char * t0
	float f1
	short s2
	int i3
PREINIT:
	float (*func)( char *, float, short, int );
CODE:
	func   = INT2PTR(float(*)( char *, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ftffd( c_func, t0, f1, f2, d3 )
	SV* c_func
	char * t0
	float f1
	float f2
	double d3
PREINIT:
	float (*func)( char *, float, float, double );
CODE:
	func   = INT2PTR(float(*)( char *, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ftffs( c_func, t0, f1, f2, s3 )
	SV* c_func
	char * t0
	float f1
	float f2
	short s3
PREINIT:
	float (*func)( char *, float, float, short );
CODE:
	func   = INT2PTR(float(*)( char *, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_ftfff( c_func, t0, f1, f2, f3 )
	SV* c_func
	char * t0
	float f1
	float f2
	float f3
PREINIT:
	float (*func)( char *, float, float, float );
CODE:
	func   = INT2PTR(float(*)( char *, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_ftfft( c_func, t0, f1, f2, t3 )
	SV* c_func
	char * t0
	float f1
	float f2
	char * t3
PREINIT:
	float (*func)( char *, float, float, char * );
CODE:
	func   = INT2PTR(float(*)( char *, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ftffi( c_func, t0, f1, f2, i3 )
	SV* c_func
	char * t0
	float f1
	float f2
	int i3
PREINIT:
	float (*func)( char *, float, float, int );
CODE:
	func   = INT2PTR(float(*)( char *, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ftftd( c_func, t0, f1, t2, d3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	double d3
PREINIT:
	float (*func)( char *, float, char *, double );
CODE:
	func   = INT2PTR(float(*)( char *, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_ftfts( c_func, t0, f1, t2, s3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	short s3
PREINIT:
	float (*func)( char *, float, char *, short );
CODE:
	func   = INT2PTR(float(*)( char *, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ftftf( c_func, t0, f1, t2, f3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	float f3
PREINIT:
	float (*func)( char *, float, char *, float );
CODE:
	func   = INT2PTR(float(*)( char *, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ftftt( c_func, t0, f1, t2, t3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	char * t3
PREINIT:
	float (*func)( char *, float, char *, char * );
CODE:
	func   = INT2PTR(float(*)( char *, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_ftfti( c_func, t0, f1, t2, i3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	int i3
PREINIT:
	float (*func)( char *, float, char *, int );
CODE:
	func   = INT2PTR(float(*)( char *, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_ftfid( c_func, t0, f1, i2, d3 )
	SV* c_func
	char * t0
	float f1
	int i2
	double d3
PREINIT:
	float (*func)( char *, float, int, double );
CODE:
	func   = INT2PTR(float(*)( char *, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_ftfis( c_func, t0, f1, i2, s3 )
	SV* c_func
	char * t0
	float f1
	int i2
	short s3
PREINIT:
	float (*func)( char *, float, int, short );
CODE:
	func   = INT2PTR(float(*)( char *, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_ftfif( c_func, t0, f1, i2, f3 )
	SV* c_func
	char * t0
	float f1
	int i2
	float f3
PREINIT:
	float (*func)( char *, float, int, float );
CODE:
	func   = INT2PTR(float(*)( char *, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_ftfit( c_func, t0, f1, i2, t3 )
	SV* c_func
	char * t0
	float f1
	int i2
	char * t3
PREINIT:
	float (*func)( char *, float, int, char * );
CODE:
	func   = INT2PTR(float(*)( char *, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_ftfii( c_func, t0, f1, i2, i3 )
	SV* c_func
	char * t0
	float f1
	int i2
	int i3
PREINIT:
	float (*func)( char *, float, int, int );
CODE:
	func   = INT2PTR(float(*)( char *, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fttdd( c_func, t0, t1, d2, d3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	double d3
PREINIT:
	float (*func)( char *, char *, double, double );
CODE:
	func   = INT2PTR(float(*)( char *, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fttds( c_func, t0, t1, d2, s3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	short s3
PREINIT:
	float (*func)( char *, char *, double, short );
CODE:
	func   = INT2PTR(float(*)( char *, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fttdf( c_func, t0, t1, d2, f3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	float f3
PREINIT:
	float (*func)( char *, char *, double, float );
CODE:
	func   = INT2PTR(float(*)( char *, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fttdt( c_func, t0, t1, d2, t3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	char * t3
PREINIT:
	float (*func)( char *, char *, double, char * );
CODE:
	func   = INT2PTR(float(*)( char *, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fttdi( c_func, t0, t1, d2, i3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	int i3
PREINIT:
	float (*func)( char *, char *, double, int );
CODE:
	func   = INT2PTR(float(*)( char *, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fttsd( c_func, t0, t1, s2, d3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	double d3
PREINIT:
	float (*func)( char *, char *, short, double );
CODE:
	func   = INT2PTR(float(*)( char *, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fttss( c_func, t0, t1, s2, s3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	short s3
PREINIT:
	float (*func)( char *, char *, short, short );
CODE:
	func   = INT2PTR(float(*)( char *, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fttsf( c_func, t0, t1, s2, f3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	float f3
PREINIT:
	float (*func)( char *, char *, short, float );
CODE:
	func   = INT2PTR(float(*)( char *, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fttst( c_func, t0, t1, s2, t3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	char * t3
PREINIT:
	float (*func)( char *, char *, short, char * );
CODE:
	func   = INT2PTR(float(*)( char *, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fttsi( c_func, t0, t1, s2, i3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	int i3
PREINIT:
	float (*func)( char *, char *, short, int );
CODE:
	func   = INT2PTR(float(*)( char *, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fttfd( c_func, t0, t1, f2, d3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	double d3
PREINIT:
	float (*func)( char *, char *, float, double );
CODE:
	func   = INT2PTR(float(*)( char *, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fttfs( c_func, t0, t1, f2, s3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	short s3
PREINIT:
	float (*func)( char *, char *, float, short );
CODE:
	func   = INT2PTR(float(*)( char *, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fttff( c_func, t0, t1, f2, f3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	float f3
PREINIT:
	float (*func)( char *, char *, float, float );
CODE:
	func   = INT2PTR(float(*)( char *, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fttft( c_func, t0, t1, f2, t3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	char * t3
PREINIT:
	float (*func)( char *, char *, float, char * );
CODE:
	func   = INT2PTR(float(*)( char *, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fttfi( c_func, t0, t1, f2, i3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	int i3
PREINIT:
	float (*func)( char *, char *, float, int );
CODE:
	func   = INT2PTR(float(*)( char *, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ftttd( c_func, t0, t1, t2, d3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	double d3
PREINIT:
	float (*func)( char *, char *, char *, double );
CODE:
	func   = INT2PTR(float(*)( char *, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fttts( c_func, t0, t1, t2, s3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	short s3
PREINIT:
	float (*func)( char *, char *, char *, short );
CODE:
	func   = INT2PTR(float(*)( char *, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ftttf( c_func, t0, t1, t2, f3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	float f3
PREINIT:
	float (*func)( char *, char *, char *, float );
CODE:
	func   = INT2PTR(float(*)( char *, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ftttt( c_func, t0, t1, t2, t3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	char * t3
PREINIT:
	float (*func)( char *, char *, char *, char * );
CODE:
	func   = INT2PTR(float(*)( char *, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fttti( c_func, t0, t1, t2, i3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	int i3
PREINIT:
	float (*func)( char *, char *, char *, int );
CODE:
	func   = INT2PTR(float(*)( char *, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fttid( c_func, t0, t1, i2, d3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	double d3
PREINIT:
	float (*func)( char *, char *, int, double );
CODE:
	func   = INT2PTR(float(*)( char *, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fttis( c_func, t0, t1, i2, s3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	short s3
PREINIT:
	float (*func)( char *, char *, int, short );
CODE:
	func   = INT2PTR(float(*)( char *, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fttif( c_func, t0, t1, i2, f3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	float f3
PREINIT:
	float (*func)( char *, char *, int, float );
CODE:
	func   = INT2PTR(float(*)( char *, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fttit( c_func, t0, t1, i2, t3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	char * t3
PREINIT:
	float (*func)( char *, char *, int, char * );
CODE:
	func   = INT2PTR(float(*)( char *, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fttii( c_func, t0, t1, i2, i3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	int i3
PREINIT:
	float (*func)( char *, char *, int, int );
CODE:
	func   = INT2PTR(float(*)( char *, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_ftidd( c_func, t0, i1, d2, d3 )
	SV* c_func
	char * t0
	int i1
	double d2
	double d3
PREINIT:
	float (*func)( char *, int, double, double );
CODE:
	func   = INT2PTR(float(*)( char *, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_ftids( c_func, t0, i1, d2, s3 )
	SV* c_func
	char * t0
	int i1
	double d2
	short s3
PREINIT:
	float (*func)( char *, int, double, short );
CODE:
	func   = INT2PTR(float(*)( char *, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_ftidf( c_func, t0, i1, d2, f3 )
	SV* c_func
	char * t0
	int i1
	double d2
	float f3
PREINIT:
	float (*func)( char *, int, double, float );
CODE:
	func   = INT2PTR(float(*)( char *, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_ftidt( c_func, t0, i1, d2, t3 )
	SV* c_func
	char * t0
	int i1
	double d2
	char * t3
PREINIT:
	float (*func)( char *, int, double, char * );
CODE:
	func   = INT2PTR(float(*)( char *, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_ftidi( c_func, t0, i1, d2, i3 )
	SV* c_func
	char * t0
	int i1
	double d2
	int i3
PREINIT:
	float (*func)( char *, int, double, int );
CODE:
	func   = INT2PTR(float(*)( char *, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_ftisd( c_func, t0, i1, s2, d3 )
	SV* c_func
	char * t0
	int i1
	short s2
	double d3
PREINIT:
	float (*func)( char *, int, short, double );
CODE:
	func   = INT2PTR(float(*)( char *, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_ftiss( c_func, t0, i1, s2, s3 )
	SV* c_func
	char * t0
	int i1
	short s2
	short s3
PREINIT:
	float (*func)( char *, int, short, short );
CODE:
	func   = INT2PTR(float(*)( char *, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_ftisf( c_func, t0, i1, s2, f3 )
	SV* c_func
	char * t0
	int i1
	short s2
	float f3
PREINIT:
	float (*func)( char *, int, short, float );
CODE:
	func   = INT2PTR(float(*)( char *, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_ftist( c_func, t0, i1, s2, t3 )
	SV* c_func
	char * t0
	int i1
	short s2
	char * t3
PREINIT:
	float (*func)( char *, int, short, char * );
CODE:
	func   = INT2PTR(float(*)( char *, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_ftisi( c_func, t0, i1, s2, i3 )
	SV* c_func
	char * t0
	int i1
	short s2
	int i3
PREINIT:
	float (*func)( char *, int, short, int );
CODE:
	func   = INT2PTR(float(*)( char *, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_ftifd( c_func, t0, i1, f2, d3 )
	SV* c_func
	char * t0
	int i1
	float f2
	double d3
PREINIT:
	float (*func)( char *, int, float, double );
CODE:
	func   = INT2PTR(float(*)( char *, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_ftifs( c_func, t0, i1, f2, s3 )
	SV* c_func
	char * t0
	int i1
	float f2
	short s3
PREINIT:
	float (*func)( char *, int, float, short );
CODE:
	func   = INT2PTR(float(*)( char *, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_ftiff( c_func, t0, i1, f2, f3 )
	SV* c_func
	char * t0
	int i1
	float f2
	float f3
PREINIT:
	float (*func)( char *, int, float, float );
CODE:
	func   = INT2PTR(float(*)( char *, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_ftift( c_func, t0, i1, f2, t3 )
	SV* c_func
	char * t0
	int i1
	float f2
	char * t3
PREINIT:
	float (*func)( char *, int, float, char * );
CODE:
	func   = INT2PTR(float(*)( char *, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_ftifi( c_func, t0, i1, f2, i3 )
	SV* c_func
	char * t0
	int i1
	float f2
	int i3
PREINIT:
	float (*func)( char *, int, float, int );
CODE:
	func   = INT2PTR(float(*)( char *, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_ftitd( c_func, t0, i1, t2, d3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	double d3
PREINIT:
	float (*func)( char *, int, char *, double );
CODE:
	func   = INT2PTR(float(*)( char *, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_ftits( c_func, t0, i1, t2, s3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	short s3
PREINIT:
	float (*func)( char *, int, char *, short );
CODE:
	func   = INT2PTR(float(*)( char *, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_ftitf( c_func, t0, i1, t2, f3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	float f3
PREINIT:
	float (*func)( char *, int, char *, float );
CODE:
	func   = INT2PTR(float(*)( char *, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_ftitt( c_func, t0, i1, t2, t3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	char * t3
PREINIT:
	float (*func)( char *, int, char *, char * );
CODE:
	func   = INT2PTR(float(*)( char *, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_ftiti( c_func, t0, i1, t2, i3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	int i3
PREINIT:
	float (*func)( char *, int, char *, int );
CODE:
	func   = INT2PTR(float(*)( char *, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_ftiid( c_func, t0, i1, i2, d3 )
	SV* c_func
	char * t0
	int i1
	int i2
	double d3
PREINIT:
	float (*func)( char *, int, int, double );
CODE:
	func   = INT2PTR(float(*)( char *, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_ftiis( c_func, t0, i1, i2, s3 )
	SV* c_func
	char * t0
	int i1
	int i2
	short s3
PREINIT:
	float (*func)( char *, int, int, short );
CODE:
	func   = INT2PTR(float(*)( char *, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_ftiif( c_func, t0, i1, i2, f3 )
	SV* c_func
	char * t0
	int i1
	int i2
	float f3
PREINIT:
	float (*func)( char *, int, int, float );
CODE:
	func   = INT2PTR(float(*)( char *, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_ftiit( c_func, t0, i1, i2, t3 )
	SV* c_func
	char * t0
	int i1
	int i2
	char * t3
PREINIT:
	float (*func)( char *, int, int, char * );
CODE:
	func   = INT2PTR(float(*)( char *, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_ftiii( c_func, t0, i1, i2, i3 )
	SV* c_func
	char * t0
	int i1
	int i2
	int i3
PREINIT:
	float (*func)( char *, int, int, int );
CODE:
	func   = INT2PTR(float(*)( char *, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fiddd( c_func, i0, d1, d2, d3 )
	SV* c_func
	int i0
	double d1
	double d2
	double d3
PREINIT:
	float (*func)( int, double, double, double );
CODE:
	func   = INT2PTR(float(*)( int, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fidds( c_func, i0, d1, d2, s3 )
	SV* c_func
	int i0
	double d1
	double d2
	short s3
PREINIT:
	float (*func)( int, double, double, short );
CODE:
	func   = INT2PTR(float(*)( int, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fiddf( c_func, i0, d1, d2, f3 )
	SV* c_func
	int i0
	double d1
	double d2
	float f3
PREINIT:
	float (*func)( int, double, double, float );
CODE:
	func   = INT2PTR(float(*)( int, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fiddt( c_func, i0, d1, d2, t3 )
	SV* c_func
	int i0
	double d1
	double d2
	char * t3
PREINIT:
	float (*func)( int, double, double, char * );
CODE:
	func   = INT2PTR(float(*)( int, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fiddi( c_func, i0, d1, d2, i3 )
	SV* c_func
	int i0
	double d1
	double d2
	int i3
PREINIT:
	float (*func)( int, double, double, int );
CODE:
	func   = INT2PTR(float(*)( int, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fidsd( c_func, i0, d1, s2, d3 )
	SV* c_func
	int i0
	double d1
	short s2
	double d3
PREINIT:
	float (*func)( int, double, short, double );
CODE:
	func   = INT2PTR(float(*)( int, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fidss( c_func, i0, d1, s2, s3 )
	SV* c_func
	int i0
	double d1
	short s2
	short s3
PREINIT:
	float (*func)( int, double, short, short );
CODE:
	func   = INT2PTR(float(*)( int, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fidsf( c_func, i0, d1, s2, f3 )
	SV* c_func
	int i0
	double d1
	short s2
	float f3
PREINIT:
	float (*func)( int, double, short, float );
CODE:
	func   = INT2PTR(float(*)( int, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fidst( c_func, i0, d1, s2, t3 )
	SV* c_func
	int i0
	double d1
	short s2
	char * t3
PREINIT:
	float (*func)( int, double, short, char * );
CODE:
	func   = INT2PTR(float(*)( int, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fidsi( c_func, i0, d1, s2, i3 )
	SV* c_func
	int i0
	double d1
	short s2
	int i3
PREINIT:
	float (*func)( int, double, short, int );
CODE:
	func   = INT2PTR(float(*)( int, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fidfd( c_func, i0, d1, f2, d3 )
	SV* c_func
	int i0
	double d1
	float f2
	double d3
PREINIT:
	float (*func)( int, double, float, double );
CODE:
	func   = INT2PTR(float(*)( int, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fidfs( c_func, i0, d1, f2, s3 )
	SV* c_func
	int i0
	double d1
	float f2
	short s3
PREINIT:
	float (*func)( int, double, float, short );
CODE:
	func   = INT2PTR(float(*)( int, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fidff( c_func, i0, d1, f2, f3 )
	SV* c_func
	int i0
	double d1
	float f2
	float f3
PREINIT:
	float (*func)( int, double, float, float );
CODE:
	func   = INT2PTR(float(*)( int, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fidft( c_func, i0, d1, f2, t3 )
	SV* c_func
	int i0
	double d1
	float f2
	char * t3
PREINIT:
	float (*func)( int, double, float, char * );
CODE:
	func   = INT2PTR(float(*)( int, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fidfi( c_func, i0, d1, f2, i3 )
	SV* c_func
	int i0
	double d1
	float f2
	int i3
PREINIT:
	float (*func)( int, double, float, int );
CODE:
	func   = INT2PTR(float(*)( int, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fidtd( c_func, i0, d1, t2, d3 )
	SV* c_func
	int i0
	double d1
	char * t2
	double d3
PREINIT:
	float (*func)( int, double, char *, double );
CODE:
	func   = INT2PTR(float(*)( int, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fidts( c_func, i0, d1, t2, s3 )
	SV* c_func
	int i0
	double d1
	char * t2
	short s3
PREINIT:
	float (*func)( int, double, char *, short );
CODE:
	func   = INT2PTR(float(*)( int, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fidtf( c_func, i0, d1, t2, f3 )
	SV* c_func
	int i0
	double d1
	char * t2
	float f3
PREINIT:
	float (*func)( int, double, char *, float );
CODE:
	func   = INT2PTR(float(*)( int, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fidtt( c_func, i0, d1, t2, t3 )
	SV* c_func
	int i0
	double d1
	char * t2
	char * t3
PREINIT:
	float (*func)( int, double, char *, char * );
CODE:
	func   = INT2PTR(float(*)( int, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fidti( c_func, i0, d1, t2, i3 )
	SV* c_func
	int i0
	double d1
	char * t2
	int i3
PREINIT:
	float (*func)( int, double, char *, int );
CODE:
	func   = INT2PTR(float(*)( int, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fidid( c_func, i0, d1, i2, d3 )
	SV* c_func
	int i0
	double d1
	int i2
	double d3
PREINIT:
	float (*func)( int, double, int, double );
CODE:
	func   = INT2PTR(float(*)( int, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fidis( c_func, i0, d1, i2, s3 )
	SV* c_func
	int i0
	double d1
	int i2
	short s3
PREINIT:
	float (*func)( int, double, int, short );
CODE:
	func   = INT2PTR(float(*)( int, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fidif( c_func, i0, d1, i2, f3 )
	SV* c_func
	int i0
	double d1
	int i2
	float f3
PREINIT:
	float (*func)( int, double, int, float );
CODE:
	func   = INT2PTR(float(*)( int, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fidit( c_func, i0, d1, i2, t3 )
	SV* c_func
	int i0
	double d1
	int i2
	char * t3
PREINIT:
	float (*func)( int, double, int, char * );
CODE:
	func   = INT2PTR(float(*)( int, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fidii( c_func, i0, d1, i2, i3 )
	SV* c_func
	int i0
	double d1
	int i2
	int i3
PREINIT:
	float (*func)( int, double, int, int );
CODE:
	func   = INT2PTR(float(*)( int, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fisdd( c_func, i0, s1, d2, d3 )
	SV* c_func
	int i0
	short s1
	double d2
	double d3
PREINIT:
	float (*func)( int, short, double, double );
CODE:
	func   = INT2PTR(float(*)( int, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fisds( c_func, i0, s1, d2, s3 )
	SV* c_func
	int i0
	short s1
	double d2
	short s3
PREINIT:
	float (*func)( int, short, double, short );
CODE:
	func   = INT2PTR(float(*)( int, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fisdf( c_func, i0, s1, d2, f3 )
	SV* c_func
	int i0
	short s1
	double d2
	float f3
PREINIT:
	float (*func)( int, short, double, float );
CODE:
	func   = INT2PTR(float(*)( int, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fisdt( c_func, i0, s1, d2, t3 )
	SV* c_func
	int i0
	short s1
	double d2
	char * t3
PREINIT:
	float (*func)( int, short, double, char * );
CODE:
	func   = INT2PTR(float(*)( int, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fisdi( c_func, i0, s1, d2, i3 )
	SV* c_func
	int i0
	short s1
	double d2
	int i3
PREINIT:
	float (*func)( int, short, double, int );
CODE:
	func   = INT2PTR(float(*)( int, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fissd( c_func, i0, s1, s2, d3 )
	SV* c_func
	int i0
	short s1
	short s2
	double d3
PREINIT:
	float (*func)( int, short, short, double );
CODE:
	func   = INT2PTR(float(*)( int, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fisss( c_func, i0, s1, s2, s3 )
	SV* c_func
	int i0
	short s1
	short s2
	short s3
PREINIT:
	float (*func)( int, short, short, short );
CODE:
	func   = INT2PTR(float(*)( int, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fissf( c_func, i0, s1, s2, f3 )
	SV* c_func
	int i0
	short s1
	short s2
	float f3
PREINIT:
	float (*func)( int, short, short, float );
CODE:
	func   = INT2PTR(float(*)( int, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fisst( c_func, i0, s1, s2, t3 )
	SV* c_func
	int i0
	short s1
	short s2
	char * t3
PREINIT:
	float (*func)( int, short, short, char * );
CODE:
	func   = INT2PTR(float(*)( int, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fissi( c_func, i0, s1, s2, i3 )
	SV* c_func
	int i0
	short s1
	short s2
	int i3
PREINIT:
	float (*func)( int, short, short, int );
CODE:
	func   = INT2PTR(float(*)( int, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fisfd( c_func, i0, s1, f2, d3 )
	SV* c_func
	int i0
	short s1
	float f2
	double d3
PREINIT:
	float (*func)( int, short, float, double );
CODE:
	func   = INT2PTR(float(*)( int, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fisfs( c_func, i0, s1, f2, s3 )
	SV* c_func
	int i0
	short s1
	float f2
	short s3
PREINIT:
	float (*func)( int, short, float, short );
CODE:
	func   = INT2PTR(float(*)( int, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fisff( c_func, i0, s1, f2, f3 )
	SV* c_func
	int i0
	short s1
	float f2
	float f3
PREINIT:
	float (*func)( int, short, float, float );
CODE:
	func   = INT2PTR(float(*)( int, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fisft( c_func, i0, s1, f2, t3 )
	SV* c_func
	int i0
	short s1
	float f2
	char * t3
PREINIT:
	float (*func)( int, short, float, char * );
CODE:
	func   = INT2PTR(float(*)( int, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fisfi( c_func, i0, s1, f2, i3 )
	SV* c_func
	int i0
	short s1
	float f2
	int i3
PREINIT:
	float (*func)( int, short, float, int );
CODE:
	func   = INT2PTR(float(*)( int, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fistd( c_func, i0, s1, t2, d3 )
	SV* c_func
	int i0
	short s1
	char * t2
	double d3
PREINIT:
	float (*func)( int, short, char *, double );
CODE:
	func   = INT2PTR(float(*)( int, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fists( c_func, i0, s1, t2, s3 )
	SV* c_func
	int i0
	short s1
	char * t2
	short s3
PREINIT:
	float (*func)( int, short, char *, short );
CODE:
	func   = INT2PTR(float(*)( int, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fistf( c_func, i0, s1, t2, f3 )
	SV* c_func
	int i0
	short s1
	char * t2
	float f3
PREINIT:
	float (*func)( int, short, char *, float );
CODE:
	func   = INT2PTR(float(*)( int, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fistt( c_func, i0, s1, t2, t3 )
	SV* c_func
	int i0
	short s1
	char * t2
	char * t3
PREINIT:
	float (*func)( int, short, char *, char * );
CODE:
	func   = INT2PTR(float(*)( int, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fisti( c_func, i0, s1, t2, i3 )
	SV* c_func
	int i0
	short s1
	char * t2
	int i3
PREINIT:
	float (*func)( int, short, char *, int );
CODE:
	func   = INT2PTR(float(*)( int, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fisid( c_func, i0, s1, i2, d3 )
	SV* c_func
	int i0
	short s1
	int i2
	double d3
PREINIT:
	float (*func)( int, short, int, double );
CODE:
	func   = INT2PTR(float(*)( int, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fisis( c_func, i0, s1, i2, s3 )
	SV* c_func
	int i0
	short s1
	int i2
	short s3
PREINIT:
	float (*func)( int, short, int, short );
CODE:
	func   = INT2PTR(float(*)( int, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fisif( c_func, i0, s1, i2, f3 )
	SV* c_func
	int i0
	short s1
	int i2
	float f3
PREINIT:
	float (*func)( int, short, int, float );
CODE:
	func   = INT2PTR(float(*)( int, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fisit( c_func, i0, s1, i2, t3 )
	SV* c_func
	int i0
	short s1
	int i2
	char * t3
PREINIT:
	float (*func)( int, short, int, char * );
CODE:
	func   = INT2PTR(float(*)( int, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fisii( c_func, i0, s1, i2, i3 )
	SV* c_func
	int i0
	short s1
	int i2
	int i3
PREINIT:
	float (*func)( int, short, int, int );
CODE:
	func   = INT2PTR(float(*)( int, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fifdd( c_func, i0, f1, d2, d3 )
	SV* c_func
	int i0
	float f1
	double d2
	double d3
PREINIT:
	float (*func)( int, float, double, double );
CODE:
	func   = INT2PTR(float(*)( int, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fifds( c_func, i0, f1, d2, s3 )
	SV* c_func
	int i0
	float f1
	double d2
	short s3
PREINIT:
	float (*func)( int, float, double, short );
CODE:
	func   = INT2PTR(float(*)( int, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fifdf( c_func, i0, f1, d2, f3 )
	SV* c_func
	int i0
	float f1
	double d2
	float f3
PREINIT:
	float (*func)( int, float, double, float );
CODE:
	func   = INT2PTR(float(*)( int, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fifdt( c_func, i0, f1, d2, t3 )
	SV* c_func
	int i0
	float f1
	double d2
	char * t3
PREINIT:
	float (*func)( int, float, double, char * );
CODE:
	func   = INT2PTR(float(*)( int, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fifdi( c_func, i0, f1, d2, i3 )
	SV* c_func
	int i0
	float f1
	double d2
	int i3
PREINIT:
	float (*func)( int, float, double, int );
CODE:
	func   = INT2PTR(float(*)( int, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fifsd( c_func, i0, f1, s2, d3 )
	SV* c_func
	int i0
	float f1
	short s2
	double d3
PREINIT:
	float (*func)( int, float, short, double );
CODE:
	func   = INT2PTR(float(*)( int, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fifss( c_func, i0, f1, s2, s3 )
	SV* c_func
	int i0
	float f1
	short s2
	short s3
PREINIT:
	float (*func)( int, float, short, short );
CODE:
	func   = INT2PTR(float(*)( int, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fifsf( c_func, i0, f1, s2, f3 )
	SV* c_func
	int i0
	float f1
	short s2
	float f3
PREINIT:
	float (*func)( int, float, short, float );
CODE:
	func   = INT2PTR(float(*)( int, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fifst( c_func, i0, f1, s2, t3 )
	SV* c_func
	int i0
	float f1
	short s2
	char * t3
PREINIT:
	float (*func)( int, float, short, char * );
CODE:
	func   = INT2PTR(float(*)( int, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fifsi( c_func, i0, f1, s2, i3 )
	SV* c_func
	int i0
	float f1
	short s2
	int i3
PREINIT:
	float (*func)( int, float, short, int );
CODE:
	func   = INT2PTR(float(*)( int, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fiffd( c_func, i0, f1, f2, d3 )
	SV* c_func
	int i0
	float f1
	float f2
	double d3
PREINIT:
	float (*func)( int, float, float, double );
CODE:
	func   = INT2PTR(float(*)( int, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fiffs( c_func, i0, f1, f2, s3 )
	SV* c_func
	int i0
	float f1
	float f2
	short s3
PREINIT:
	float (*func)( int, float, float, short );
CODE:
	func   = INT2PTR(float(*)( int, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fifff( c_func, i0, f1, f2, f3 )
	SV* c_func
	int i0
	float f1
	float f2
	float f3
PREINIT:
	float (*func)( int, float, float, float );
CODE:
	func   = INT2PTR(float(*)( int, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fifft( c_func, i0, f1, f2, t3 )
	SV* c_func
	int i0
	float f1
	float f2
	char * t3
PREINIT:
	float (*func)( int, float, float, char * );
CODE:
	func   = INT2PTR(float(*)( int, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fiffi( c_func, i0, f1, f2, i3 )
	SV* c_func
	int i0
	float f1
	float f2
	int i3
PREINIT:
	float (*func)( int, float, float, int );
CODE:
	func   = INT2PTR(float(*)( int, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fiftd( c_func, i0, f1, t2, d3 )
	SV* c_func
	int i0
	float f1
	char * t2
	double d3
PREINIT:
	float (*func)( int, float, char *, double );
CODE:
	func   = INT2PTR(float(*)( int, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fifts( c_func, i0, f1, t2, s3 )
	SV* c_func
	int i0
	float f1
	char * t2
	short s3
PREINIT:
	float (*func)( int, float, char *, short );
CODE:
	func   = INT2PTR(float(*)( int, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fiftf( c_func, i0, f1, t2, f3 )
	SV* c_func
	int i0
	float f1
	char * t2
	float f3
PREINIT:
	float (*func)( int, float, char *, float );
CODE:
	func   = INT2PTR(float(*)( int, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fiftt( c_func, i0, f1, t2, t3 )
	SV* c_func
	int i0
	float f1
	char * t2
	char * t3
PREINIT:
	float (*func)( int, float, char *, char * );
CODE:
	func   = INT2PTR(float(*)( int, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fifti( c_func, i0, f1, t2, i3 )
	SV* c_func
	int i0
	float f1
	char * t2
	int i3
PREINIT:
	float (*func)( int, float, char *, int );
CODE:
	func   = INT2PTR(float(*)( int, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fifid( c_func, i0, f1, i2, d3 )
	SV* c_func
	int i0
	float f1
	int i2
	double d3
PREINIT:
	float (*func)( int, float, int, double );
CODE:
	func   = INT2PTR(float(*)( int, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fifis( c_func, i0, f1, i2, s3 )
	SV* c_func
	int i0
	float f1
	int i2
	short s3
PREINIT:
	float (*func)( int, float, int, short );
CODE:
	func   = INT2PTR(float(*)( int, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fifif( c_func, i0, f1, i2, f3 )
	SV* c_func
	int i0
	float f1
	int i2
	float f3
PREINIT:
	float (*func)( int, float, int, float );
CODE:
	func   = INT2PTR(float(*)( int, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fifit( c_func, i0, f1, i2, t3 )
	SV* c_func
	int i0
	float f1
	int i2
	char * t3
PREINIT:
	float (*func)( int, float, int, char * );
CODE:
	func   = INT2PTR(float(*)( int, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fifii( c_func, i0, f1, i2, i3 )
	SV* c_func
	int i0
	float f1
	int i2
	int i3
PREINIT:
	float (*func)( int, float, int, int );
CODE:
	func   = INT2PTR(float(*)( int, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fitdd( c_func, i0, t1, d2, d3 )
	SV* c_func
	int i0
	char * t1
	double d2
	double d3
PREINIT:
	float (*func)( int, char *, double, double );
CODE:
	func   = INT2PTR(float(*)( int, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fitds( c_func, i0, t1, d2, s3 )
	SV* c_func
	int i0
	char * t1
	double d2
	short s3
PREINIT:
	float (*func)( int, char *, double, short );
CODE:
	func   = INT2PTR(float(*)( int, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fitdf( c_func, i0, t1, d2, f3 )
	SV* c_func
	int i0
	char * t1
	double d2
	float f3
PREINIT:
	float (*func)( int, char *, double, float );
CODE:
	func   = INT2PTR(float(*)( int, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fitdt( c_func, i0, t1, d2, t3 )
	SV* c_func
	int i0
	char * t1
	double d2
	char * t3
PREINIT:
	float (*func)( int, char *, double, char * );
CODE:
	func   = INT2PTR(float(*)( int, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fitdi( c_func, i0, t1, d2, i3 )
	SV* c_func
	int i0
	char * t1
	double d2
	int i3
PREINIT:
	float (*func)( int, char *, double, int );
CODE:
	func   = INT2PTR(float(*)( int, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fitsd( c_func, i0, t1, s2, d3 )
	SV* c_func
	int i0
	char * t1
	short s2
	double d3
PREINIT:
	float (*func)( int, char *, short, double );
CODE:
	func   = INT2PTR(float(*)( int, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fitss( c_func, i0, t1, s2, s3 )
	SV* c_func
	int i0
	char * t1
	short s2
	short s3
PREINIT:
	float (*func)( int, char *, short, short );
CODE:
	func   = INT2PTR(float(*)( int, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fitsf( c_func, i0, t1, s2, f3 )
	SV* c_func
	int i0
	char * t1
	short s2
	float f3
PREINIT:
	float (*func)( int, char *, short, float );
CODE:
	func   = INT2PTR(float(*)( int, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fitst( c_func, i0, t1, s2, t3 )
	SV* c_func
	int i0
	char * t1
	short s2
	char * t3
PREINIT:
	float (*func)( int, char *, short, char * );
CODE:
	func   = INT2PTR(float(*)( int, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fitsi( c_func, i0, t1, s2, i3 )
	SV* c_func
	int i0
	char * t1
	short s2
	int i3
PREINIT:
	float (*func)( int, char *, short, int );
CODE:
	func   = INT2PTR(float(*)( int, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fitfd( c_func, i0, t1, f2, d3 )
	SV* c_func
	int i0
	char * t1
	float f2
	double d3
PREINIT:
	float (*func)( int, char *, float, double );
CODE:
	func   = INT2PTR(float(*)( int, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fitfs( c_func, i0, t1, f2, s3 )
	SV* c_func
	int i0
	char * t1
	float f2
	short s3
PREINIT:
	float (*func)( int, char *, float, short );
CODE:
	func   = INT2PTR(float(*)( int, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fitff( c_func, i0, t1, f2, f3 )
	SV* c_func
	int i0
	char * t1
	float f2
	float f3
PREINIT:
	float (*func)( int, char *, float, float );
CODE:
	func   = INT2PTR(float(*)( int, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fitft( c_func, i0, t1, f2, t3 )
	SV* c_func
	int i0
	char * t1
	float f2
	char * t3
PREINIT:
	float (*func)( int, char *, float, char * );
CODE:
	func   = INT2PTR(float(*)( int, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fitfi( c_func, i0, t1, f2, i3 )
	SV* c_func
	int i0
	char * t1
	float f2
	int i3
PREINIT:
	float (*func)( int, char *, float, int );
CODE:
	func   = INT2PTR(float(*)( int, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fittd( c_func, i0, t1, t2, d3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	double d3
PREINIT:
	float (*func)( int, char *, char *, double );
CODE:
	func   = INT2PTR(float(*)( int, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fitts( c_func, i0, t1, t2, s3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	short s3
PREINIT:
	float (*func)( int, char *, char *, short );
CODE:
	func   = INT2PTR(float(*)( int, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fittf( c_func, i0, t1, t2, f3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	float f3
PREINIT:
	float (*func)( int, char *, char *, float );
CODE:
	func   = INT2PTR(float(*)( int, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fittt( c_func, i0, t1, t2, t3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	char * t3
PREINIT:
	float (*func)( int, char *, char *, char * );
CODE:
	func   = INT2PTR(float(*)( int, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fitti( c_func, i0, t1, t2, i3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	int i3
PREINIT:
	float (*func)( int, char *, char *, int );
CODE:
	func   = INT2PTR(float(*)( int, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fitid( c_func, i0, t1, i2, d3 )
	SV* c_func
	int i0
	char * t1
	int i2
	double d3
PREINIT:
	float (*func)( int, char *, int, double );
CODE:
	func   = INT2PTR(float(*)( int, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fitis( c_func, i0, t1, i2, s3 )
	SV* c_func
	int i0
	char * t1
	int i2
	short s3
PREINIT:
	float (*func)( int, char *, int, short );
CODE:
	func   = INT2PTR(float(*)( int, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fitif( c_func, i0, t1, i2, f3 )
	SV* c_func
	int i0
	char * t1
	int i2
	float f3
PREINIT:
	float (*func)( int, char *, int, float );
CODE:
	func   = INT2PTR(float(*)( int, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fitit( c_func, i0, t1, i2, t3 )
	SV* c_func
	int i0
	char * t1
	int i2
	char * t3
PREINIT:
	float (*func)( int, char *, int, char * );
CODE:
	func   = INT2PTR(float(*)( int, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fitii( c_func, i0, t1, i2, i3 )
	SV* c_func
	int i0
	char * t1
	int i2
	int i3
PREINIT:
	float (*func)( int, char *, int, int );
CODE:
	func   = INT2PTR(float(*)( int, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, i3 );
OUTPUT:
	RETVAL

float
nci_fiidd( c_func, i0, i1, d2, d3 )
	SV* c_func
	int i0
	int i1
	double d2
	double d3
PREINIT:
	float (*func)( int, int, double, double );
CODE:
	func   = INT2PTR(float(*)( int, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, d3 );
OUTPUT:
	RETVAL

float
nci_fiids( c_func, i0, i1, d2, s3 )
	SV* c_func
	int i0
	int i1
	double d2
	short s3
PREINIT:
	float (*func)( int, int, double, short );
CODE:
	func   = INT2PTR(float(*)( int, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, s3 );
OUTPUT:
	RETVAL

float
nci_fiidf( c_func, i0, i1, d2, f3 )
	SV* c_func
	int i0
	int i1
	double d2
	float f3
PREINIT:
	float (*func)( int, int, double, float );
CODE:
	func   = INT2PTR(float(*)( int, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, f3 );
OUTPUT:
	RETVAL

float
nci_fiidt( c_func, i0, i1, d2, t3 )
	SV* c_func
	int i0
	int i1
	double d2
	char * t3
PREINIT:
	float (*func)( int, int, double, char * );
CODE:
	func   = INT2PTR(float(*)( int, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, t3 );
OUTPUT:
	RETVAL

float
nci_fiidi( c_func, i0, i1, d2, i3 )
	SV* c_func
	int i0
	int i1
	double d2
	int i3
PREINIT:
	float (*func)( int, int, double, int );
CODE:
	func   = INT2PTR(float(*)( int, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, i3 );
OUTPUT:
	RETVAL

float
nci_fiisd( c_func, i0, i1, s2, d3 )
	SV* c_func
	int i0
	int i1
	short s2
	double d3
PREINIT:
	float (*func)( int, int, short, double );
CODE:
	func   = INT2PTR(float(*)( int, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, d3 );
OUTPUT:
	RETVAL

float
nci_fiiss( c_func, i0, i1, s2, s3 )
	SV* c_func
	int i0
	int i1
	short s2
	short s3
PREINIT:
	float (*func)( int, int, short, short );
CODE:
	func   = INT2PTR(float(*)( int, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, s3 );
OUTPUT:
	RETVAL

float
nci_fiisf( c_func, i0, i1, s2, f3 )
	SV* c_func
	int i0
	int i1
	short s2
	float f3
PREINIT:
	float (*func)( int, int, short, float );
CODE:
	func   = INT2PTR(float(*)( int, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, f3 );
OUTPUT:
	RETVAL

float
nci_fiist( c_func, i0, i1, s2, t3 )
	SV* c_func
	int i0
	int i1
	short s2
	char * t3
PREINIT:
	float (*func)( int, int, short, char * );
CODE:
	func   = INT2PTR(float(*)( int, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, t3 );
OUTPUT:
	RETVAL

float
nci_fiisi( c_func, i0, i1, s2, i3 )
	SV* c_func
	int i0
	int i1
	short s2
	int i3
PREINIT:
	float (*func)( int, int, short, int );
CODE:
	func   = INT2PTR(float(*)( int, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, i3 );
OUTPUT:
	RETVAL

float
nci_fiifd( c_func, i0, i1, f2, d3 )
	SV* c_func
	int i0
	int i1
	float f2
	double d3
PREINIT:
	float (*func)( int, int, float, double );
CODE:
	func   = INT2PTR(float(*)( int, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, d3 );
OUTPUT:
	RETVAL

float
nci_fiifs( c_func, i0, i1, f2, s3 )
	SV* c_func
	int i0
	int i1
	float f2
	short s3
PREINIT:
	float (*func)( int, int, float, short );
CODE:
	func   = INT2PTR(float(*)( int, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, s3 );
OUTPUT:
	RETVAL

float
nci_fiiff( c_func, i0, i1, f2, f3 )
	SV* c_func
	int i0
	int i1
	float f2
	float f3
PREINIT:
	float (*func)( int, int, float, float );
CODE:
	func   = INT2PTR(float(*)( int, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, f3 );
OUTPUT:
	RETVAL

float
nci_fiift( c_func, i0, i1, f2, t3 )
	SV* c_func
	int i0
	int i1
	float f2
	char * t3
PREINIT:
	float (*func)( int, int, float, char * );
CODE:
	func   = INT2PTR(float(*)( int, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, t3 );
OUTPUT:
	RETVAL

float
nci_fiifi( c_func, i0, i1, f2, i3 )
	SV* c_func
	int i0
	int i1
	float f2
	int i3
PREINIT:
	float (*func)( int, int, float, int );
CODE:
	func   = INT2PTR(float(*)( int, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, i3 );
OUTPUT:
	RETVAL

float
nci_fiitd( c_func, i0, i1, t2, d3 )
	SV* c_func
	int i0
	int i1
	char * t2
	double d3
PREINIT:
	float (*func)( int, int, char *, double );
CODE:
	func   = INT2PTR(float(*)( int, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, d3 );
OUTPUT:
	RETVAL

float
nci_fiits( c_func, i0, i1, t2, s3 )
	SV* c_func
	int i0
	int i1
	char * t2
	short s3
PREINIT:
	float (*func)( int, int, char *, short );
CODE:
	func   = INT2PTR(float(*)( int, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, s3 );
OUTPUT:
	RETVAL

float
nci_fiitf( c_func, i0, i1, t2, f3 )
	SV* c_func
	int i0
	int i1
	char * t2
	float f3
PREINIT:
	float (*func)( int, int, char *, float );
CODE:
	func   = INT2PTR(float(*)( int, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, f3 );
OUTPUT:
	RETVAL

float
nci_fiitt( c_func, i0, i1, t2, t3 )
	SV* c_func
	int i0
	int i1
	char * t2
	char * t3
PREINIT:
	float (*func)( int, int, char *, char * );
CODE:
	func   = INT2PTR(float(*)( int, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, t3 );
OUTPUT:
	RETVAL

float
nci_fiiti( c_func, i0, i1, t2, i3 )
	SV* c_func
	int i0
	int i1
	char * t2
	int i3
PREINIT:
	float (*func)( int, int, char *, int );
CODE:
	func   = INT2PTR(float(*)( int, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, i3 );
OUTPUT:
	RETVAL

float
nci_fiiid( c_func, i0, i1, i2, d3 )
	SV* c_func
	int i0
	int i1
	int i2
	double d3
PREINIT:
	float (*func)( int, int, int, double );
CODE:
	func   = INT2PTR(float(*)( int, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, d3 );
OUTPUT:
	RETVAL

float
nci_fiiis( c_func, i0, i1, i2, s3 )
	SV* c_func
	int i0
	int i1
	int i2
	short s3
PREINIT:
	float (*func)( int, int, int, short );
CODE:
	func   = INT2PTR(float(*)( int, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, s3 );
OUTPUT:
	RETVAL

float
nci_fiiif( c_func, i0, i1, i2, f3 )
	SV* c_func
	int i0
	int i1
	int i2
	float f3
PREINIT:
	float (*func)( int, int, int, float );
CODE:
	func   = INT2PTR(float(*)( int, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, f3 );
OUTPUT:
	RETVAL

float
nci_fiiit( c_func, i0, i1, i2, t3 )
	SV* c_func
	int i0
	int i1
	int i2
	char * t3
PREINIT:
	float (*func)( int, int, int, char * );
CODE:
	func   = INT2PTR(float(*)( int, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, t3 );
OUTPUT:
	RETVAL

float
nci_fiiii( c_func, i0, i1, i2, i3 )
	SV* c_func
	int i0
	int i1
	int i2
	int i3
PREINIT:
	float (*func)( int, int, int, int );
CODE:
	func   = INT2PTR(float(*)( int, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdddd( c_func, d0, d1, d2, d3 )
	SV* c_func
	double d0
	double d1
	double d2
	double d3
PREINIT:
	char * (*func)( double, double, double, double );
CODE:
	func   = INT2PTR(char *(*)( double, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tddds( c_func, d0, d1, d2, s3 )
	SV* c_func
	double d0
	double d1
	double d2
	short s3
PREINIT:
	char * (*func)( double, double, double, short );
CODE:
	func   = INT2PTR(char *(*)( double, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdddf( c_func, d0, d1, d2, f3 )
	SV* c_func
	double d0
	double d1
	double d2
	float f3
PREINIT:
	char * (*func)( double, double, double, float );
CODE:
	func   = INT2PTR(char *(*)( double, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdddt( c_func, d0, d1, d2, t3 )
	SV* c_func
	double d0
	double d1
	double d2
	char * t3
PREINIT:
	char * (*func)( double, double, double, char * );
CODE:
	func   = INT2PTR(char *(*)( double, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdddi( c_func, d0, d1, d2, i3 )
	SV* c_func
	double d0
	double d1
	double d2
	int i3
PREINIT:
	char * (*func)( double, double, double, int );
CODE:
	func   = INT2PTR(char *(*)( double, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tddsd( c_func, d0, d1, s2, d3 )
	SV* c_func
	double d0
	double d1
	short s2
	double d3
PREINIT:
	char * (*func)( double, double, short, double );
CODE:
	func   = INT2PTR(char *(*)( double, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tddss( c_func, d0, d1, s2, s3 )
	SV* c_func
	double d0
	double d1
	short s2
	short s3
PREINIT:
	char * (*func)( double, double, short, short );
CODE:
	func   = INT2PTR(char *(*)( double, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tddsf( c_func, d0, d1, s2, f3 )
	SV* c_func
	double d0
	double d1
	short s2
	float f3
PREINIT:
	char * (*func)( double, double, short, float );
CODE:
	func   = INT2PTR(char *(*)( double, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tddst( c_func, d0, d1, s2, t3 )
	SV* c_func
	double d0
	double d1
	short s2
	char * t3
PREINIT:
	char * (*func)( double, double, short, char * );
CODE:
	func   = INT2PTR(char *(*)( double, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tddsi( c_func, d0, d1, s2, i3 )
	SV* c_func
	double d0
	double d1
	short s2
	int i3
PREINIT:
	char * (*func)( double, double, short, int );
CODE:
	func   = INT2PTR(char *(*)( double, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tddfd( c_func, d0, d1, f2, d3 )
	SV* c_func
	double d0
	double d1
	float f2
	double d3
PREINIT:
	char * (*func)( double, double, float, double );
CODE:
	func   = INT2PTR(char *(*)( double, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tddfs( c_func, d0, d1, f2, s3 )
	SV* c_func
	double d0
	double d1
	float f2
	short s3
PREINIT:
	char * (*func)( double, double, float, short );
CODE:
	func   = INT2PTR(char *(*)( double, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tddff( c_func, d0, d1, f2, f3 )
	SV* c_func
	double d0
	double d1
	float f2
	float f3
PREINIT:
	char * (*func)( double, double, float, float );
CODE:
	func   = INT2PTR(char *(*)( double, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tddft( c_func, d0, d1, f2, t3 )
	SV* c_func
	double d0
	double d1
	float f2
	char * t3
PREINIT:
	char * (*func)( double, double, float, char * );
CODE:
	func   = INT2PTR(char *(*)( double, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tddfi( c_func, d0, d1, f2, i3 )
	SV* c_func
	double d0
	double d1
	float f2
	int i3
PREINIT:
	char * (*func)( double, double, float, int );
CODE:
	func   = INT2PTR(char *(*)( double, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tddtd( c_func, d0, d1, t2, d3 )
	SV* c_func
	double d0
	double d1
	char * t2
	double d3
PREINIT:
	char * (*func)( double, double, char *, double );
CODE:
	func   = INT2PTR(char *(*)( double, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tddts( c_func, d0, d1, t2, s3 )
	SV* c_func
	double d0
	double d1
	char * t2
	short s3
PREINIT:
	char * (*func)( double, double, char *, short );
CODE:
	func   = INT2PTR(char *(*)( double, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tddtf( c_func, d0, d1, t2, f3 )
	SV* c_func
	double d0
	double d1
	char * t2
	float f3
PREINIT:
	char * (*func)( double, double, char *, float );
CODE:
	func   = INT2PTR(char *(*)( double, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tddtt( c_func, d0, d1, t2, t3 )
	SV* c_func
	double d0
	double d1
	char * t2
	char * t3
PREINIT:
	char * (*func)( double, double, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( double, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tddti( c_func, d0, d1, t2, i3 )
	SV* c_func
	double d0
	double d1
	char * t2
	int i3
PREINIT:
	char * (*func)( double, double, char *, int );
CODE:
	func   = INT2PTR(char *(*)( double, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tddid( c_func, d0, d1, i2, d3 )
	SV* c_func
	double d0
	double d1
	int i2
	double d3
PREINIT:
	char * (*func)( double, double, int, double );
CODE:
	func   = INT2PTR(char *(*)( double, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tddis( c_func, d0, d1, i2, s3 )
	SV* c_func
	double d0
	double d1
	int i2
	short s3
PREINIT:
	char * (*func)( double, double, int, short );
CODE:
	func   = INT2PTR(char *(*)( double, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tddif( c_func, d0, d1, i2, f3 )
	SV* c_func
	double d0
	double d1
	int i2
	float f3
PREINIT:
	char * (*func)( double, double, int, float );
CODE:
	func   = INT2PTR(char *(*)( double, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tddit( c_func, d0, d1, i2, t3 )
	SV* c_func
	double d0
	double d1
	int i2
	char * t3
PREINIT:
	char * (*func)( double, double, int, char * );
CODE:
	func   = INT2PTR(char *(*)( double, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tddii( c_func, d0, d1, i2, i3 )
	SV* c_func
	double d0
	double d1
	int i2
	int i3
PREINIT:
	char * (*func)( double, double, int, int );
CODE:
	func   = INT2PTR(char *(*)( double, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdsdd( c_func, d0, s1, d2, d3 )
	SV* c_func
	double d0
	short s1
	double d2
	double d3
PREINIT:
	char * (*func)( double, short, double, double );
CODE:
	func   = INT2PTR(char *(*)( double, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdsds( c_func, d0, s1, d2, s3 )
	SV* c_func
	double d0
	short s1
	double d2
	short s3
PREINIT:
	char * (*func)( double, short, double, short );
CODE:
	func   = INT2PTR(char *(*)( double, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdsdf( c_func, d0, s1, d2, f3 )
	SV* c_func
	double d0
	short s1
	double d2
	float f3
PREINIT:
	char * (*func)( double, short, double, float );
CODE:
	func   = INT2PTR(char *(*)( double, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdsdt( c_func, d0, s1, d2, t3 )
	SV* c_func
	double d0
	short s1
	double d2
	char * t3
PREINIT:
	char * (*func)( double, short, double, char * );
CODE:
	func   = INT2PTR(char *(*)( double, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdsdi( c_func, d0, s1, d2, i3 )
	SV* c_func
	double d0
	short s1
	double d2
	int i3
PREINIT:
	char * (*func)( double, short, double, int );
CODE:
	func   = INT2PTR(char *(*)( double, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdssd( c_func, d0, s1, s2, d3 )
	SV* c_func
	double d0
	short s1
	short s2
	double d3
PREINIT:
	char * (*func)( double, short, short, double );
CODE:
	func   = INT2PTR(char *(*)( double, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdsss( c_func, d0, s1, s2, s3 )
	SV* c_func
	double d0
	short s1
	short s2
	short s3
PREINIT:
	char * (*func)( double, short, short, short );
CODE:
	func   = INT2PTR(char *(*)( double, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdssf( c_func, d0, s1, s2, f3 )
	SV* c_func
	double d0
	short s1
	short s2
	float f3
PREINIT:
	char * (*func)( double, short, short, float );
CODE:
	func   = INT2PTR(char *(*)( double, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdsst( c_func, d0, s1, s2, t3 )
	SV* c_func
	double d0
	short s1
	short s2
	char * t3
PREINIT:
	char * (*func)( double, short, short, char * );
CODE:
	func   = INT2PTR(char *(*)( double, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdssi( c_func, d0, s1, s2, i3 )
	SV* c_func
	double d0
	short s1
	short s2
	int i3
PREINIT:
	char * (*func)( double, short, short, int );
CODE:
	func   = INT2PTR(char *(*)( double, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdsfd( c_func, d0, s1, f2, d3 )
	SV* c_func
	double d0
	short s1
	float f2
	double d3
PREINIT:
	char * (*func)( double, short, float, double );
CODE:
	func   = INT2PTR(char *(*)( double, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdsfs( c_func, d0, s1, f2, s3 )
	SV* c_func
	double d0
	short s1
	float f2
	short s3
PREINIT:
	char * (*func)( double, short, float, short );
CODE:
	func   = INT2PTR(char *(*)( double, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdsff( c_func, d0, s1, f2, f3 )
	SV* c_func
	double d0
	short s1
	float f2
	float f3
PREINIT:
	char * (*func)( double, short, float, float );
CODE:
	func   = INT2PTR(char *(*)( double, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdsft( c_func, d0, s1, f2, t3 )
	SV* c_func
	double d0
	short s1
	float f2
	char * t3
PREINIT:
	char * (*func)( double, short, float, char * );
CODE:
	func   = INT2PTR(char *(*)( double, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdsfi( c_func, d0, s1, f2, i3 )
	SV* c_func
	double d0
	short s1
	float f2
	int i3
PREINIT:
	char * (*func)( double, short, float, int );
CODE:
	func   = INT2PTR(char *(*)( double, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdstd( c_func, d0, s1, t2, d3 )
	SV* c_func
	double d0
	short s1
	char * t2
	double d3
PREINIT:
	char * (*func)( double, short, char *, double );
CODE:
	func   = INT2PTR(char *(*)( double, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdsts( c_func, d0, s1, t2, s3 )
	SV* c_func
	double d0
	short s1
	char * t2
	short s3
PREINIT:
	char * (*func)( double, short, char *, short );
CODE:
	func   = INT2PTR(char *(*)( double, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdstf( c_func, d0, s1, t2, f3 )
	SV* c_func
	double d0
	short s1
	char * t2
	float f3
PREINIT:
	char * (*func)( double, short, char *, float );
CODE:
	func   = INT2PTR(char *(*)( double, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdstt( c_func, d0, s1, t2, t3 )
	SV* c_func
	double d0
	short s1
	char * t2
	char * t3
PREINIT:
	char * (*func)( double, short, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( double, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdsti( c_func, d0, s1, t2, i3 )
	SV* c_func
	double d0
	short s1
	char * t2
	int i3
PREINIT:
	char * (*func)( double, short, char *, int );
CODE:
	func   = INT2PTR(char *(*)( double, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdsid( c_func, d0, s1, i2, d3 )
	SV* c_func
	double d0
	short s1
	int i2
	double d3
PREINIT:
	char * (*func)( double, short, int, double );
CODE:
	func   = INT2PTR(char *(*)( double, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdsis( c_func, d0, s1, i2, s3 )
	SV* c_func
	double d0
	short s1
	int i2
	short s3
PREINIT:
	char * (*func)( double, short, int, short );
CODE:
	func   = INT2PTR(char *(*)( double, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdsif( c_func, d0, s1, i2, f3 )
	SV* c_func
	double d0
	short s1
	int i2
	float f3
PREINIT:
	char * (*func)( double, short, int, float );
CODE:
	func   = INT2PTR(char *(*)( double, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdsit( c_func, d0, s1, i2, t3 )
	SV* c_func
	double d0
	short s1
	int i2
	char * t3
PREINIT:
	char * (*func)( double, short, int, char * );
CODE:
	func   = INT2PTR(char *(*)( double, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdsii( c_func, d0, s1, i2, i3 )
	SV* c_func
	double d0
	short s1
	int i2
	int i3
PREINIT:
	char * (*func)( double, short, int, int );
CODE:
	func   = INT2PTR(char *(*)( double, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdfdd( c_func, d0, f1, d2, d3 )
	SV* c_func
	double d0
	float f1
	double d2
	double d3
PREINIT:
	char * (*func)( double, float, double, double );
CODE:
	func   = INT2PTR(char *(*)( double, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdfds( c_func, d0, f1, d2, s3 )
	SV* c_func
	double d0
	float f1
	double d2
	short s3
PREINIT:
	char * (*func)( double, float, double, short );
CODE:
	func   = INT2PTR(char *(*)( double, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdfdf( c_func, d0, f1, d2, f3 )
	SV* c_func
	double d0
	float f1
	double d2
	float f3
PREINIT:
	char * (*func)( double, float, double, float );
CODE:
	func   = INT2PTR(char *(*)( double, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdfdt( c_func, d0, f1, d2, t3 )
	SV* c_func
	double d0
	float f1
	double d2
	char * t3
PREINIT:
	char * (*func)( double, float, double, char * );
CODE:
	func   = INT2PTR(char *(*)( double, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdfdi( c_func, d0, f1, d2, i3 )
	SV* c_func
	double d0
	float f1
	double d2
	int i3
PREINIT:
	char * (*func)( double, float, double, int );
CODE:
	func   = INT2PTR(char *(*)( double, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdfsd( c_func, d0, f1, s2, d3 )
	SV* c_func
	double d0
	float f1
	short s2
	double d3
PREINIT:
	char * (*func)( double, float, short, double );
CODE:
	func   = INT2PTR(char *(*)( double, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdfss( c_func, d0, f1, s2, s3 )
	SV* c_func
	double d0
	float f1
	short s2
	short s3
PREINIT:
	char * (*func)( double, float, short, short );
CODE:
	func   = INT2PTR(char *(*)( double, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdfsf( c_func, d0, f1, s2, f3 )
	SV* c_func
	double d0
	float f1
	short s2
	float f3
PREINIT:
	char * (*func)( double, float, short, float );
CODE:
	func   = INT2PTR(char *(*)( double, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdfst( c_func, d0, f1, s2, t3 )
	SV* c_func
	double d0
	float f1
	short s2
	char * t3
PREINIT:
	char * (*func)( double, float, short, char * );
CODE:
	func   = INT2PTR(char *(*)( double, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdfsi( c_func, d0, f1, s2, i3 )
	SV* c_func
	double d0
	float f1
	short s2
	int i3
PREINIT:
	char * (*func)( double, float, short, int );
CODE:
	func   = INT2PTR(char *(*)( double, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdffd( c_func, d0, f1, f2, d3 )
	SV* c_func
	double d0
	float f1
	float f2
	double d3
PREINIT:
	char * (*func)( double, float, float, double );
CODE:
	func   = INT2PTR(char *(*)( double, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdffs( c_func, d0, f1, f2, s3 )
	SV* c_func
	double d0
	float f1
	float f2
	short s3
PREINIT:
	char * (*func)( double, float, float, short );
CODE:
	func   = INT2PTR(char *(*)( double, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdfff( c_func, d0, f1, f2, f3 )
	SV* c_func
	double d0
	float f1
	float f2
	float f3
PREINIT:
	char * (*func)( double, float, float, float );
CODE:
	func   = INT2PTR(char *(*)( double, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdfft( c_func, d0, f1, f2, t3 )
	SV* c_func
	double d0
	float f1
	float f2
	char * t3
PREINIT:
	char * (*func)( double, float, float, char * );
CODE:
	func   = INT2PTR(char *(*)( double, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdffi( c_func, d0, f1, f2, i3 )
	SV* c_func
	double d0
	float f1
	float f2
	int i3
PREINIT:
	char * (*func)( double, float, float, int );
CODE:
	func   = INT2PTR(char *(*)( double, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdftd( c_func, d0, f1, t2, d3 )
	SV* c_func
	double d0
	float f1
	char * t2
	double d3
PREINIT:
	char * (*func)( double, float, char *, double );
CODE:
	func   = INT2PTR(char *(*)( double, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdfts( c_func, d0, f1, t2, s3 )
	SV* c_func
	double d0
	float f1
	char * t2
	short s3
PREINIT:
	char * (*func)( double, float, char *, short );
CODE:
	func   = INT2PTR(char *(*)( double, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdftf( c_func, d0, f1, t2, f3 )
	SV* c_func
	double d0
	float f1
	char * t2
	float f3
PREINIT:
	char * (*func)( double, float, char *, float );
CODE:
	func   = INT2PTR(char *(*)( double, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdftt( c_func, d0, f1, t2, t3 )
	SV* c_func
	double d0
	float f1
	char * t2
	char * t3
PREINIT:
	char * (*func)( double, float, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( double, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdfti( c_func, d0, f1, t2, i3 )
	SV* c_func
	double d0
	float f1
	char * t2
	int i3
PREINIT:
	char * (*func)( double, float, char *, int );
CODE:
	func   = INT2PTR(char *(*)( double, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdfid( c_func, d0, f1, i2, d3 )
	SV* c_func
	double d0
	float f1
	int i2
	double d3
PREINIT:
	char * (*func)( double, float, int, double );
CODE:
	func   = INT2PTR(char *(*)( double, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdfis( c_func, d0, f1, i2, s3 )
	SV* c_func
	double d0
	float f1
	int i2
	short s3
PREINIT:
	char * (*func)( double, float, int, short );
CODE:
	func   = INT2PTR(char *(*)( double, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdfif( c_func, d0, f1, i2, f3 )
	SV* c_func
	double d0
	float f1
	int i2
	float f3
PREINIT:
	char * (*func)( double, float, int, float );
CODE:
	func   = INT2PTR(char *(*)( double, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdfit( c_func, d0, f1, i2, t3 )
	SV* c_func
	double d0
	float f1
	int i2
	char * t3
PREINIT:
	char * (*func)( double, float, int, char * );
CODE:
	func   = INT2PTR(char *(*)( double, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdfii( c_func, d0, f1, i2, i3 )
	SV* c_func
	double d0
	float f1
	int i2
	int i3
PREINIT:
	char * (*func)( double, float, int, int );
CODE:
	func   = INT2PTR(char *(*)( double, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdtdd( c_func, d0, t1, d2, d3 )
	SV* c_func
	double d0
	char * t1
	double d2
	double d3
PREINIT:
	char * (*func)( double, char *, double, double );
CODE:
	func   = INT2PTR(char *(*)( double, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdtds( c_func, d0, t1, d2, s3 )
	SV* c_func
	double d0
	char * t1
	double d2
	short s3
PREINIT:
	char * (*func)( double, char *, double, short );
CODE:
	func   = INT2PTR(char *(*)( double, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdtdf( c_func, d0, t1, d2, f3 )
	SV* c_func
	double d0
	char * t1
	double d2
	float f3
PREINIT:
	char * (*func)( double, char *, double, float );
CODE:
	func   = INT2PTR(char *(*)( double, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdtdt( c_func, d0, t1, d2, t3 )
	SV* c_func
	double d0
	char * t1
	double d2
	char * t3
PREINIT:
	char * (*func)( double, char *, double, char * );
CODE:
	func   = INT2PTR(char *(*)( double, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdtdi( c_func, d0, t1, d2, i3 )
	SV* c_func
	double d0
	char * t1
	double d2
	int i3
PREINIT:
	char * (*func)( double, char *, double, int );
CODE:
	func   = INT2PTR(char *(*)( double, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdtsd( c_func, d0, t1, s2, d3 )
	SV* c_func
	double d0
	char * t1
	short s2
	double d3
PREINIT:
	char * (*func)( double, char *, short, double );
CODE:
	func   = INT2PTR(char *(*)( double, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdtss( c_func, d0, t1, s2, s3 )
	SV* c_func
	double d0
	char * t1
	short s2
	short s3
PREINIT:
	char * (*func)( double, char *, short, short );
CODE:
	func   = INT2PTR(char *(*)( double, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdtsf( c_func, d0, t1, s2, f3 )
	SV* c_func
	double d0
	char * t1
	short s2
	float f3
PREINIT:
	char * (*func)( double, char *, short, float );
CODE:
	func   = INT2PTR(char *(*)( double, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdtst( c_func, d0, t1, s2, t3 )
	SV* c_func
	double d0
	char * t1
	short s2
	char * t3
PREINIT:
	char * (*func)( double, char *, short, char * );
CODE:
	func   = INT2PTR(char *(*)( double, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdtsi( c_func, d0, t1, s2, i3 )
	SV* c_func
	double d0
	char * t1
	short s2
	int i3
PREINIT:
	char * (*func)( double, char *, short, int );
CODE:
	func   = INT2PTR(char *(*)( double, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdtfd( c_func, d0, t1, f2, d3 )
	SV* c_func
	double d0
	char * t1
	float f2
	double d3
PREINIT:
	char * (*func)( double, char *, float, double );
CODE:
	func   = INT2PTR(char *(*)( double, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdtfs( c_func, d0, t1, f2, s3 )
	SV* c_func
	double d0
	char * t1
	float f2
	short s3
PREINIT:
	char * (*func)( double, char *, float, short );
CODE:
	func   = INT2PTR(char *(*)( double, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdtff( c_func, d0, t1, f2, f3 )
	SV* c_func
	double d0
	char * t1
	float f2
	float f3
PREINIT:
	char * (*func)( double, char *, float, float );
CODE:
	func   = INT2PTR(char *(*)( double, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdtft( c_func, d0, t1, f2, t3 )
	SV* c_func
	double d0
	char * t1
	float f2
	char * t3
PREINIT:
	char * (*func)( double, char *, float, char * );
CODE:
	func   = INT2PTR(char *(*)( double, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdtfi( c_func, d0, t1, f2, i3 )
	SV* c_func
	double d0
	char * t1
	float f2
	int i3
PREINIT:
	char * (*func)( double, char *, float, int );
CODE:
	func   = INT2PTR(char *(*)( double, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdttd( c_func, d0, t1, t2, d3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	double d3
PREINIT:
	char * (*func)( double, char *, char *, double );
CODE:
	func   = INT2PTR(char *(*)( double, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdtts( c_func, d0, t1, t2, s3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	short s3
PREINIT:
	char * (*func)( double, char *, char *, short );
CODE:
	func   = INT2PTR(char *(*)( double, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdttf( c_func, d0, t1, t2, f3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	float f3
PREINIT:
	char * (*func)( double, char *, char *, float );
CODE:
	func   = INT2PTR(char *(*)( double, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdttt( c_func, d0, t1, t2, t3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	char * t3
PREINIT:
	char * (*func)( double, char *, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( double, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdtti( c_func, d0, t1, t2, i3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	int i3
PREINIT:
	char * (*func)( double, char *, char *, int );
CODE:
	func   = INT2PTR(char *(*)( double, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdtid( c_func, d0, t1, i2, d3 )
	SV* c_func
	double d0
	char * t1
	int i2
	double d3
PREINIT:
	char * (*func)( double, char *, int, double );
CODE:
	func   = INT2PTR(char *(*)( double, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdtis( c_func, d0, t1, i2, s3 )
	SV* c_func
	double d0
	char * t1
	int i2
	short s3
PREINIT:
	char * (*func)( double, char *, int, short );
CODE:
	func   = INT2PTR(char *(*)( double, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdtif( c_func, d0, t1, i2, f3 )
	SV* c_func
	double d0
	char * t1
	int i2
	float f3
PREINIT:
	char * (*func)( double, char *, int, float );
CODE:
	func   = INT2PTR(char *(*)( double, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdtit( c_func, d0, t1, i2, t3 )
	SV* c_func
	double d0
	char * t1
	int i2
	char * t3
PREINIT:
	char * (*func)( double, char *, int, char * );
CODE:
	func   = INT2PTR(char *(*)( double, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdtii( c_func, d0, t1, i2, i3 )
	SV* c_func
	double d0
	char * t1
	int i2
	int i3
PREINIT:
	char * (*func)( double, char *, int, int );
CODE:
	func   = INT2PTR(char *(*)( double, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdidd( c_func, d0, i1, d2, d3 )
	SV* c_func
	double d0
	int i1
	double d2
	double d3
PREINIT:
	char * (*func)( double, int, double, double );
CODE:
	func   = INT2PTR(char *(*)( double, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdids( c_func, d0, i1, d2, s3 )
	SV* c_func
	double d0
	int i1
	double d2
	short s3
PREINIT:
	char * (*func)( double, int, double, short );
CODE:
	func   = INT2PTR(char *(*)( double, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdidf( c_func, d0, i1, d2, f3 )
	SV* c_func
	double d0
	int i1
	double d2
	float f3
PREINIT:
	char * (*func)( double, int, double, float );
CODE:
	func   = INT2PTR(char *(*)( double, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdidt( c_func, d0, i1, d2, t3 )
	SV* c_func
	double d0
	int i1
	double d2
	char * t3
PREINIT:
	char * (*func)( double, int, double, char * );
CODE:
	func   = INT2PTR(char *(*)( double, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdidi( c_func, d0, i1, d2, i3 )
	SV* c_func
	double d0
	int i1
	double d2
	int i3
PREINIT:
	char * (*func)( double, int, double, int );
CODE:
	func   = INT2PTR(char *(*)( double, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdisd( c_func, d0, i1, s2, d3 )
	SV* c_func
	double d0
	int i1
	short s2
	double d3
PREINIT:
	char * (*func)( double, int, short, double );
CODE:
	func   = INT2PTR(char *(*)( double, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdiss( c_func, d0, i1, s2, s3 )
	SV* c_func
	double d0
	int i1
	short s2
	short s3
PREINIT:
	char * (*func)( double, int, short, short );
CODE:
	func   = INT2PTR(char *(*)( double, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdisf( c_func, d0, i1, s2, f3 )
	SV* c_func
	double d0
	int i1
	short s2
	float f3
PREINIT:
	char * (*func)( double, int, short, float );
CODE:
	func   = INT2PTR(char *(*)( double, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdist( c_func, d0, i1, s2, t3 )
	SV* c_func
	double d0
	int i1
	short s2
	char * t3
PREINIT:
	char * (*func)( double, int, short, char * );
CODE:
	func   = INT2PTR(char *(*)( double, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdisi( c_func, d0, i1, s2, i3 )
	SV* c_func
	double d0
	int i1
	short s2
	int i3
PREINIT:
	char * (*func)( double, int, short, int );
CODE:
	func   = INT2PTR(char *(*)( double, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdifd( c_func, d0, i1, f2, d3 )
	SV* c_func
	double d0
	int i1
	float f2
	double d3
PREINIT:
	char * (*func)( double, int, float, double );
CODE:
	func   = INT2PTR(char *(*)( double, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdifs( c_func, d0, i1, f2, s3 )
	SV* c_func
	double d0
	int i1
	float f2
	short s3
PREINIT:
	char * (*func)( double, int, float, short );
CODE:
	func   = INT2PTR(char *(*)( double, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdiff( c_func, d0, i1, f2, f3 )
	SV* c_func
	double d0
	int i1
	float f2
	float f3
PREINIT:
	char * (*func)( double, int, float, float );
CODE:
	func   = INT2PTR(char *(*)( double, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdift( c_func, d0, i1, f2, t3 )
	SV* c_func
	double d0
	int i1
	float f2
	char * t3
PREINIT:
	char * (*func)( double, int, float, char * );
CODE:
	func   = INT2PTR(char *(*)( double, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdifi( c_func, d0, i1, f2, i3 )
	SV* c_func
	double d0
	int i1
	float f2
	int i3
PREINIT:
	char * (*func)( double, int, float, int );
CODE:
	func   = INT2PTR(char *(*)( double, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tditd( c_func, d0, i1, t2, d3 )
	SV* c_func
	double d0
	int i1
	char * t2
	double d3
PREINIT:
	char * (*func)( double, int, char *, double );
CODE:
	func   = INT2PTR(char *(*)( double, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdits( c_func, d0, i1, t2, s3 )
	SV* c_func
	double d0
	int i1
	char * t2
	short s3
PREINIT:
	char * (*func)( double, int, char *, short );
CODE:
	func   = INT2PTR(char *(*)( double, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tditf( c_func, d0, i1, t2, f3 )
	SV* c_func
	double d0
	int i1
	char * t2
	float f3
PREINIT:
	char * (*func)( double, int, char *, float );
CODE:
	func   = INT2PTR(char *(*)( double, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tditt( c_func, d0, i1, t2, t3 )
	SV* c_func
	double d0
	int i1
	char * t2
	char * t3
PREINIT:
	char * (*func)( double, int, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( double, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tditi( c_func, d0, i1, t2, i3 )
	SV* c_func
	double d0
	int i1
	char * t2
	int i3
PREINIT:
	char * (*func)( double, int, char *, int );
CODE:
	func   = INT2PTR(char *(*)( double, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tdiid( c_func, d0, i1, i2, d3 )
	SV* c_func
	double d0
	int i1
	int i2
	double d3
PREINIT:
	char * (*func)( double, int, int, double );
CODE:
	func   = INT2PTR(char *(*)( double, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tdiis( c_func, d0, i1, i2, s3 )
	SV* c_func
	double d0
	int i1
	int i2
	short s3
PREINIT:
	char * (*func)( double, int, int, short );
CODE:
	func   = INT2PTR(char *(*)( double, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tdiif( c_func, d0, i1, i2, f3 )
	SV* c_func
	double d0
	int i1
	int i2
	float f3
PREINIT:
	char * (*func)( double, int, int, float );
CODE:
	func   = INT2PTR(char *(*)( double, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tdiit( c_func, d0, i1, i2, t3 )
	SV* c_func
	double d0
	int i1
	int i2
	char * t3
PREINIT:
	char * (*func)( double, int, int, char * );
CODE:
	func   = INT2PTR(char *(*)( double, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tdiii( c_func, d0, i1, i2, i3 )
	SV* c_func
	double d0
	int i1
	int i2
	int i3
PREINIT:
	char * (*func)( double, int, int, int );
CODE:
	func   = INT2PTR(char *(*)( double, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsddd( c_func, s0, d1, d2, d3 )
	SV* c_func
	short s0
	double d1
	double d2
	double d3
PREINIT:
	char * (*func)( short, double, double, double );
CODE:
	func   = INT2PTR(char *(*)( short, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsdds( c_func, s0, d1, d2, s3 )
	SV* c_func
	short s0
	double d1
	double d2
	short s3
PREINIT:
	char * (*func)( short, double, double, short );
CODE:
	func   = INT2PTR(char *(*)( short, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsddf( c_func, s0, d1, d2, f3 )
	SV* c_func
	short s0
	double d1
	double d2
	float f3
PREINIT:
	char * (*func)( short, double, double, float );
CODE:
	func   = INT2PTR(char *(*)( short, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsddt( c_func, s0, d1, d2, t3 )
	SV* c_func
	short s0
	double d1
	double d2
	char * t3
PREINIT:
	char * (*func)( short, double, double, char * );
CODE:
	func   = INT2PTR(char *(*)( short, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsddi( c_func, s0, d1, d2, i3 )
	SV* c_func
	short s0
	double d1
	double d2
	int i3
PREINIT:
	char * (*func)( short, double, double, int );
CODE:
	func   = INT2PTR(char *(*)( short, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsdsd( c_func, s0, d1, s2, d3 )
	SV* c_func
	short s0
	double d1
	short s2
	double d3
PREINIT:
	char * (*func)( short, double, short, double );
CODE:
	func   = INT2PTR(char *(*)( short, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsdss( c_func, s0, d1, s2, s3 )
	SV* c_func
	short s0
	double d1
	short s2
	short s3
PREINIT:
	char * (*func)( short, double, short, short );
CODE:
	func   = INT2PTR(char *(*)( short, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsdsf( c_func, s0, d1, s2, f3 )
	SV* c_func
	short s0
	double d1
	short s2
	float f3
PREINIT:
	char * (*func)( short, double, short, float );
CODE:
	func   = INT2PTR(char *(*)( short, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsdst( c_func, s0, d1, s2, t3 )
	SV* c_func
	short s0
	double d1
	short s2
	char * t3
PREINIT:
	char * (*func)( short, double, short, char * );
CODE:
	func   = INT2PTR(char *(*)( short, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsdsi( c_func, s0, d1, s2, i3 )
	SV* c_func
	short s0
	double d1
	short s2
	int i3
PREINIT:
	char * (*func)( short, double, short, int );
CODE:
	func   = INT2PTR(char *(*)( short, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsdfd( c_func, s0, d1, f2, d3 )
	SV* c_func
	short s0
	double d1
	float f2
	double d3
PREINIT:
	char * (*func)( short, double, float, double );
CODE:
	func   = INT2PTR(char *(*)( short, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsdfs( c_func, s0, d1, f2, s3 )
	SV* c_func
	short s0
	double d1
	float f2
	short s3
PREINIT:
	char * (*func)( short, double, float, short );
CODE:
	func   = INT2PTR(char *(*)( short, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsdff( c_func, s0, d1, f2, f3 )
	SV* c_func
	short s0
	double d1
	float f2
	float f3
PREINIT:
	char * (*func)( short, double, float, float );
CODE:
	func   = INT2PTR(char *(*)( short, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsdft( c_func, s0, d1, f2, t3 )
	SV* c_func
	short s0
	double d1
	float f2
	char * t3
PREINIT:
	char * (*func)( short, double, float, char * );
CODE:
	func   = INT2PTR(char *(*)( short, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsdfi( c_func, s0, d1, f2, i3 )
	SV* c_func
	short s0
	double d1
	float f2
	int i3
PREINIT:
	char * (*func)( short, double, float, int );
CODE:
	func   = INT2PTR(char *(*)( short, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsdtd( c_func, s0, d1, t2, d3 )
	SV* c_func
	short s0
	double d1
	char * t2
	double d3
PREINIT:
	char * (*func)( short, double, char *, double );
CODE:
	func   = INT2PTR(char *(*)( short, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsdts( c_func, s0, d1, t2, s3 )
	SV* c_func
	short s0
	double d1
	char * t2
	short s3
PREINIT:
	char * (*func)( short, double, char *, short );
CODE:
	func   = INT2PTR(char *(*)( short, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsdtf( c_func, s0, d1, t2, f3 )
	SV* c_func
	short s0
	double d1
	char * t2
	float f3
PREINIT:
	char * (*func)( short, double, char *, float );
CODE:
	func   = INT2PTR(char *(*)( short, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsdtt( c_func, s0, d1, t2, t3 )
	SV* c_func
	short s0
	double d1
	char * t2
	char * t3
PREINIT:
	char * (*func)( short, double, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( short, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsdti( c_func, s0, d1, t2, i3 )
	SV* c_func
	short s0
	double d1
	char * t2
	int i3
PREINIT:
	char * (*func)( short, double, char *, int );
CODE:
	func   = INT2PTR(char *(*)( short, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsdid( c_func, s0, d1, i2, d3 )
	SV* c_func
	short s0
	double d1
	int i2
	double d3
PREINIT:
	char * (*func)( short, double, int, double );
CODE:
	func   = INT2PTR(char *(*)( short, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsdis( c_func, s0, d1, i2, s3 )
	SV* c_func
	short s0
	double d1
	int i2
	short s3
PREINIT:
	char * (*func)( short, double, int, short );
CODE:
	func   = INT2PTR(char *(*)( short, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsdif( c_func, s0, d1, i2, f3 )
	SV* c_func
	short s0
	double d1
	int i2
	float f3
PREINIT:
	char * (*func)( short, double, int, float );
CODE:
	func   = INT2PTR(char *(*)( short, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsdit( c_func, s0, d1, i2, t3 )
	SV* c_func
	short s0
	double d1
	int i2
	char * t3
PREINIT:
	char * (*func)( short, double, int, char * );
CODE:
	func   = INT2PTR(char *(*)( short, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsdii( c_func, s0, d1, i2, i3 )
	SV* c_func
	short s0
	double d1
	int i2
	int i3
PREINIT:
	char * (*func)( short, double, int, int );
CODE:
	func   = INT2PTR(char *(*)( short, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tssdd( c_func, s0, s1, d2, d3 )
	SV* c_func
	short s0
	short s1
	double d2
	double d3
PREINIT:
	char * (*func)( short, short, double, double );
CODE:
	func   = INT2PTR(char *(*)( short, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tssds( c_func, s0, s1, d2, s3 )
	SV* c_func
	short s0
	short s1
	double d2
	short s3
PREINIT:
	char * (*func)( short, short, double, short );
CODE:
	func   = INT2PTR(char *(*)( short, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tssdf( c_func, s0, s1, d2, f3 )
	SV* c_func
	short s0
	short s1
	double d2
	float f3
PREINIT:
	char * (*func)( short, short, double, float );
CODE:
	func   = INT2PTR(char *(*)( short, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tssdt( c_func, s0, s1, d2, t3 )
	SV* c_func
	short s0
	short s1
	double d2
	char * t3
PREINIT:
	char * (*func)( short, short, double, char * );
CODE:
	func   = INT2PTR(char *(*)( short, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tssdi( c_func, s0, s1, d2, i3 )
	SV* c_func
	short s0
	short s1
	double d2
	int i3
PREINIT:
	char * (*func)( short, short, double, int );
CODE:
	func   = INT2PTR(char *(*)( short, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsssd( c_func, s0, s1, s2, d3 )
	SV* c_func
	short s0
	short s1
	short s2
	double d3
PREINIT:
	char * (*func)( short, short, short, double );
CODE:
	func   = INT2PTR(char *(*)( short, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tssss( c_func, s0, s1, s2, s3 )
	SV* c_func
	short s0
	short s1
	short s2
	short s3
PREINIT:
	char * (*func)( short, short, short, short );
CODE:
	func   = INT2PTR(char *(*)( short, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsssf( c_func, s0, s1, s2, f3 )
	SV* c_func
	short s0
	short s1
	short s2
	float f3
PREINIT:
	char * (*func)( short, short, short, float );
CODE:
	func   = INT2PTR(char *(*)( short, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tssst( c_func, s0, s1, s2, t3 )
	SV* c_func
	short s0
	short s1
	short s2
	char * t3
PREINIT:
	char * (*func)( short, short, short, char * );
CODE:
	func   = INT2PTR(char *(*)( short, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsssi( c_func, s0, s1, s2, i3 )
	SV* c_func
	short s0
	short s1
	short s2
	int i3
PREINIT:
	char * (*func)( short, short, short, int );
CODE:
	func   = INT2PTR(char *(*)( short, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tssfd( c_func, s0, s1, f2, d3 )
	SV* c_func
	short s0
	short s1
	float f2
	double d3
PREINIT:
	char * (*func)( short, short, float, double );
CODE:
	func   = INT2PTR(char *(*)( short, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tssfs( c_func, s0, s1, f2, s3 )
	SV* c_func
	short s0
	short s1
	float f2
	short s3
PREINIT:
	char * (*func)( short, short, float, short );
CODE:
	func   = INT2PTR(char *(*)( short, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tssff( c_func, s0, s1, f2, f3 )
	SV* c_func
	short s0
	short s1
	float f2
	float f3
PREINIT:
	char * (*func)( short, short, float, float );
CODE:
	func   = INT2PTR(char *(*)( short, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tssft( c_func, s0, s1, f2, t3 )
	SV* c_func
	short s0
	short s1
	float f2
	char * t3
PREINIT:
	char * (*func)( short, short, float, char * );
CODE:
	func   = INT2PTR(char *(*)( short, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tssfi( c_func, s0, s1, f2, i3 )
	SV* c_func
	short s0
	short s1
	float f2
	int i3
PREINIT:
	char * (*func)( short, short, float, int );
CODE:
	func   = INT2PTR(char *(*)( short, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsstd( c_func, s0, s1, t2, d3 )
	SV* c_func
	short s0
	short s1
	char * t2
	double d3
PREINIT:
	char * (*func)( short, short, char *, double );
CODE:
	func   = INT2PTR(char *(*)( short, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tssts( c_func, s0, s1, t2, s3 )
	SV* c_func
	short s0
	short s1
	char * t2
	short s3
PREINIT:
	char * (*func)( short, short, char *, short );
CODE:
	func   = INT2PTR(char *(*)( short, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsstf( c_func, s0, s1, t2, f3 )
	SV* c_func
	short s0
	short s1
	char * t2
	float f3
PREINIT:
	char * (*func)( short, short, char *, float );
CODE:
	func   = INT2PTR(char *(*)( short, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsstt( c_func, s0, s1, t2, t3 )
	SV* c_func
	short s0
	short s1
	char * t2
	char * t3
PREINIT:
	char * (*func)( short, short, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( short, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tssti( c_func, s0, s1, t2, i3 )
	SV* c_func
	short s0
	short s1
	char * t2
	int i3
PREINIT:
	char * (*func)( short, short, char *, int );
CODE:
	func   = INT2PTR(char *(*)( short, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tssid( c_func, s0, s1, i2, d3 )
	SV* c_func
	short s0
	short s1
	int i2
	double d3
PREINIT:
	char * (*func)( short, short, int, double );
CODE:
	func   = INT2PTR(char *(*)( short, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tssis( c_func, s0, s1, i2, s3 )
	SV* c_func
	short s0
	short s1
	int i2
	short s3
PREINIT:
	char * (*func)( short, short, int, short );
CODE:
	func   = INT2PTR(char *(*)( short, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tssif( c_func, s0, s1, i2, f3 )
	SV* c_func
	short s0
	short s1
	int i2
	float f3
PREINIT:
	char * (*func)( short, short, int, float );
CODE:
	func   = INT2PTR(char *(*)( short, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tssit( c_func, s0, s1, i2, t3 )
	SV* c_func
	short s0
	short s1
	int i2
	char * t3
PREINIT:
	char * (*func)( short, short, int, char * );
CODE:
	func   = INT2PTR(char *(*)( short, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tssii( c_func, s0, s1, i2, i3 )
	SV* c_func
	short s0
	short s1
	int i2
	int i3
PREINIT:
	char * (*func)( short, short, int, int );
CODE:
	func   = INT2PTR(char *(*)( short, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsfdd( c_func, s0, f1, d2, d3 )
	SV* c_func
	short s0
	float f1
	double d2
	double d3
PREINIT:
	char * (*func)( short, float, double, double );
CODE:
	func   = INT2PTR(char *(*)( short, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsfds( c_func, s0, f1, d2, s3 )
	SV* c_func
	short s0
	float f1
	double d2
	short s3
PREINIT:
	char * (*func)( short, float, double, short );
CODE:
	func   = INT2PTR(char *(*)( short, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsfdf( c_func, s0, f1, d2, f3 )
	SV* c_func
	short s0
	float f1
	double d2
	float f3
PREINIT:
	char * (*func)( short, float, double, float );
CODE:
	func   = INT2PTR(char *(*)( short, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsfdt( c_func, s0, f1, d2, t3 )
	SV* c_func
	short s0
	float f1
	double d2
	char * t3
PREINIT:
	char * (*func)( short, float, double, char * );
CODE:
	func   = INT2PTR(char *(*)( short, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsfdi( c_func, s0, f1, d2, i3 )
	SV* c_func
	short s0
	float f1
	double d2
	int i3
PREINIT:
	char * (*func)( short, float, double, int );
CODE:
	func   = INT2PTR(char *(*)( short, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsfsd( c_func, s0, f1, s2, d3 )
	SV* c_func
	short s0
	float f1
	short s2
	double d3
PREINIT:
	char * (*func)( short, float, short, double );
CODE:
	func   = INT2PTR(char *(*)( short, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsfss( c_func, s0, f1, s2, s3 )
	SV* c_func
	short s0
	float f1
	short s2
	short s3
PREINIT:
	char * (*func)( short, float, short, short );
CODE:
	func   = INT2PTR(char *(*)( short, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsfsf( c_func, s0, f1, s2, f3 )
	SV* c_func
	short s0
	float f1
	short s2
	float f3
PREINIT:
	char * (*func)( short, float, short, float );
CODE:
	func   = INT2PTR(char *(*)( short, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsfst( c_func, s0, f1, s2, t3 )
	SV* c_func
	short s0
	float f1
	short s2
	char * t3
PREINIT:
	char * (*func)( short, float, short, char * );
CODE:
	func   = INT2PTR(char *(*)( short, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsfsi( c_func, s0, f1, s2, i3 )
	SV* c_func
	short s0
	float f1
	short s2
	int i3
PREINIT:
	char * (*func)( short, float, short, int );
CODE:
	func   = INT2PTR(char *(*)( short, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsffd( c_func, s0, f1, f2, d3 )
	SV* c_func
	short s0
	float f1
	float f2
	double d3
PREINIT:
	char * (*func)( short, float, float, double );
CODE:
	func   = INT2PTR(char *(*)( short, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsffs( c_func, s0, f1, f2, s3 )
	SV* c_func
	short s0
	float f1
	float f2
	short s3
PREINIT:
	char * (*func)( short, float, float, short );
CODE:
	func   = INT2PTR(char *(*)( short, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsfff( c_func, s0, f1, f2, f3 )
	SV* c_func
	short s0
	float f1
	float f2
	float f3
PREINIT:
	char * (*func)( short, float, float, float );
CODE:
	func   = INT2PTR(char *(*)( short, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsfft( c_func, s0, f1, f2, t3 )
	SV* c_func
	short s0
	float f1
	float f2
	char * t3
PREINIT:
	char * (*func)( short, float, float, char * );
CODE:
	func   = INT2PTR(char *(*)( short, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsffi( c_func, s0, f1, f2, i3 )
	SV* c_func
	short s0
	float f1
	float f2
	int i3
PREINIT:
	char * (*func)( short, float, float, int );
CODE:
	func   = INT2PTR(char *(*)( short, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsftd( c_func, s0, f1, t2, d3 )
	SV* c_func
	short s0
	float f1
	char * t2
	double d3
PREINIT:
	char * (*func)( short, float, char *, double );
CODE:
	func   = INT2PTR(char *(*)( short, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsfts( c_func, s0, f1, t2, s3 )
	SV* c_func
	short s0
	float f1
	char * t2
	short s3
PREINIT:
	char * (*func)( short, float, char *, short );
CODE:
	func   = INT2PTR(char *(*)( short, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsftf( c_func, s0, f1, t2, f3 )
	SV* c_func
	short s0
	float f1
	char * t2
	float f3
PREINIT:
	char * (*func)( short, float, char *, float );
CODE:
	func   = INT2PTR(char *(*)( short, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsftt( c_func, s0, f1, t2, t3 )
	SV* c_func
	short s0
	float f1
	char * t2
	char * t3
PREINIT:
	char * (*func)( short, float, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( short, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsfti( c_func, s0, f1, t2, i3 )
	SV* c_func
	short s0
	float f1
	char * t2
	int i3
PREINIT:
	char * (*func)( short, float, char *, int );
CODE:
	func   = INT2PTR(char *(*)( short, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsfid( c_func, s0, f1, i2, d3 )
	SV* c_func
	short s0
	float f1
	int i2
	double d3
PREINIT:
	char * (*func)( short, float, int, double );
CODE:
	func   = INT2PTR(char *(*)( short, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsfis( c_func, s0, f1, i2, s3 )
	SV* c_func
	short s0
	float f1
	int i2
	short s3
PREINIT:
	char * (*func)( short, float, int, short );
CODE:
	func   = INT2PTR(char *(*)( short, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsfif( c_func, s0, f1, i2, f3 )
	SV* c_func
	short s0
	float f1
	int i2
	float f3
PREINIT:
	char * (*func)( short, float, int, float );
CODE:
	func   = INT2PTR(char *(*)( short, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsfit( c_func, s0, f1, i2, t3 )
	SV* c_func
	short s0
	float f1
	int i2
	char * t3
PREINIT:
	char * (*func)( short, float, int, char * );
CODE:
	func   = INT2PTR(char *(*)( short, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsfii( c_func, s0, f1, i2, i3 )
	SV* c_func
	short s0
	float f1
	int i2
	int i3
PREINIT:
	char * (*func)( short, float, int, int );
CODE:
	func   = INT2PTR(char *(*)( short, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tstdd( c_func, s0, t1, d2, d3 )
	SV* c_func
	short s0
	char * t1
	double d2
	double d3
PREINIT:
	char * (*func)( short, char *, double, double );
CODE:
	func   = INT2PTR(char *(*)( short, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tstds( c_func, s0, t1, d2, s3 )
	SV* c_func
	short s0
	char * t1
	double d2
	short s3
PREINIT:
	char * (*func)( short, char *, double, short );
CODE:
	func   = INT2PTR(char *(*)( short, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tstdf( c_func, s0, t1, d2, f3 )
	SV* c_func
	short s0
	char * t1
	double d2
	float f3
PREINIT:
	char * (*func)( short, char *, double, float );
CODE:
	func   = INT2PTR(char *(*)( short, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tstdt( c_func, s0, t1, d2, t3 )
	SV* c_func
	short s0
	char * t1
	double d2
	char * t3
PREINIT:
	char * (*func)( short, char *, double, char * );
CODE:
	func   = INT2PTR(char *(*)( short, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tstdi( c_func, s0, t1, d2, i3 )
	SV* c_func
	short s0
	char * t1
	double d2
	int i3
PREINIT:
	char * (*func)( short, char *, double, int );
CODE:
	func   = INT2PTR(char *(*)( short, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tstsd( c_func, s0, t1, s2, d3 )
	SV* c_func
	short s0
	char * t1
	short s2
	double d3
PREINIT:
	char * (*func)( short, char *, short, double );
CODE:
	func   = INT2PTR(char *(*)( short, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tstss( c_func, s0, t1, s2, s3 )
	SV* c_func
	short s0
	char * t1
	short s2
	short s3
PREINIT:
	char * (*func)( short, char *, short, short );
CODE:
	func   = INT2PTR(char *(*)( short, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tstsf( c_func, s0, t1, s2, f3 )
	SV* c_func
	short s0
	char * t1
	short s2
	float f3
PREINIT:
	char * (*func)( short, char *, short, float );
CODE:
	func   = INT2PTR(char *(*)( short, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tstst( c_func, s0, t1, s2, t3 )
	SV* c_func
	short s0
	char * t1
	short s2
	char * t3
PREINIT:
	char * (*func)( short, char *, short, char * );
CODE:
	func   = INT2PTR(char *(*)( short, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tstsi( c_func, s0, t1, s2, i3 )
	SV* c_func
	short s0
	char * t1
	short s2
	int i3
PREINIT:
	char * (*func)( short, char *, short, int );
CODE:
	func   = INT2PTR(char *(*)( short, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tstfd( c_func, s0, t1, f2, d3 )
	SV* c_func
	short s0
	char * t1
	float f2
	double d3
PREINIT:
	char * (*func)( short, char *, float, double );
CODE:
	func   = INT2PTR(char *(*)( short, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tstfs( c_func, s0, t1, f2, s3 )
	SV* c_func
	short s0
	char * t1
	float f2
	short s3
PREINIT:
	char * (*func)( short, char *, float, short );
CODE:
	func   = INT2PTR(char *(*)( short, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tstff( c_func, s0, t1, f2, f3 )
	SV* c_func
	short s0
	char * t1
	float f2
	float f3
PREINIT:
	char * (*func)( short, char *, float, float );
CODE:
	func   = INT2PTR(char *(*)( short, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tstft( c_func, s0, t1, f2, t3 )
	SV* c_func
	short s0
	char * t1
	float f2
	char * t3
PREINIT:
	char * (*func)( short, char *, float, char * );
CODE:
	func   = INT2PTR(char *(*)( short, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tstfi( c_func, s0, t1, f2, i3 )
	SV* c_func
	short s0
	char * t1
	float f2
	int i3
PREINIT:
	char * (*func)( short, char *, float, int );
CODE:
	func   = INT2PTR(char *(*)( short, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsttd( c_func, s0, t1, t2, d3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	double d3
PREINIT:
	char * (*func)( short, char *, char *, double );
CODE:
	func   = INT2PTR(char *(*)( short, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tstts( c_func, s0, t1, t2, s3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	short s3
PREINIT:
	char * (*func)( short, char *, char *, short );
CODE:
	func   = INT2PTR(char *(*)( short, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsttf( c_func, s0, t1, t2, f3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	float f3
PREINIT:
	char * (*func)( short, char *, char *, float );
CODE:
	func   = INT2PTR(char *(*)( short, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsttt( c_func, s0, t1, t2, t3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	char * t3
PREINIT:
	char * (*func)( short, char *, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( short, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tstti( c_func, s0, t1, t2, i3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	int i3
PREINIT:
	char * (*func)( short, char *, char *, int );
CODE:
	func   = INT2PTR(char *(*)( short, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tstid( c_func, s0, t1, i2, d3 )
	SV* c_func
	short s0
	char * t1
	int i2
	double d3
PREINIT:
	char * (*func)( short, char *, int, double );
CODE:
	func   = INT2PTR(char *(*)( short, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tstis( c_func, s0, t1, i2, s3 )
	SV* c_func
	short s0
	char * t1
	int i2
	short s3
PREINIT:
	char * (*func)( short, char *, int, short );
CODE:
	func   = INT2PTR(char *(*)( short, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tstif( c_func, s0, t1, i2, f3 )
	SV* c_func
	short s0
	char * t1
	int i2
	float f3
PREINIT:
	char * (*func)( short, char *, int, float );
CODE:
	func   = INT2PTR(char *(*)( short, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tstit( c_func, s0, t1, i2, t3 )
	SV* c_func
	short s0
	char * t1
	int i2
	char * t3
PREINIT:
	char * (*func)( short, char *, int, char * );
CODE:
	func   = INT2PTR(char *(*)( short, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tstii( c_func, s0, t1, i2, i3 )
	SV* c_func
	short s0
	char * t1
	int i2
	int i3
PREINIT:
	char * (*func)( short, char *, int, int );
CODE:
	func   = INT2PTR(char *(*)( short, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsidd( c_func, s0, i1, d2, d3 )
	SV* c_func
	short s0
	int i1
	double d2
	double d3
PREINIT:
	char * (*func)( short, int, double, double );
CODE:
	func   = INT2PTR(char *(*)( short, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsids( c_func, s0, i1, d2, s3 )
	SV* c_func
	short s0
	int i1
	double d2
	short s3
PREINIT:
	char * (*func)( short, int, double, short );
CODE:
	func   = INT2PTR(char *(*)( short, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsidf( c_func, s0, i1, d2, f3 )
	SV* c_func
	short s0
	int i1
	double d2
	float f3
PREINIT:
	char * (*func)( short, int, double, float );
CODE:
	func   = INT2PTR(char *(*)( short, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsidt( c_func, s0, i1, d2, t3 )
	SV* c_func
	short s0
	int i1
	double d2
	char * t3
PREINIT:
	char * (*func)( short, int, double, char * );
CODE:
	func   = INT2PTR(char *(*)( short, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsidi( c_func, s0, i1, d2, i3 )
	SV* c_func
	short s0
	int i1
	double d2
	int i3
PREINIT:
	char * (*func)( short, int, double, int );
CODE:
	func   = INT2PTR(char *(*)( short, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsisd( c_func, s0, i1, s2, d3 )
	SV* c_func
	short s0
	int i1
	short s2
	double d3
PREINIT:
	char * (*func)( short, int, short, double );
CODE:
	func   = INT2PTR(char *(*)( short, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsiss( c_func, s0, i1, s2, s3 )
	SV* c_func
	short s0
	int i1
	short s2
	short s3
PREINIT:
	char * (*func)( short, int, short, short );
CODE:
	func   = INT2PTR(char *(*)( short, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsisf( c_func, s0, i1, s2, f3 )
	SV* c_func
	short s0
	int i1
	short s2
	float f3
PREINIT:
	char * (*func)( short, int, short, float );
CODE:
	func   = INT2PTR(char *(*)( short, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsist( c_func, s0, i1, s2, t3 )
	SV* c_func
	short s0
	int i1
	short s2
	char * t3
PREINIT:
	char * (*func)( short, int, short, char * );
CODE:
	func   = INT2PTR(char *(*)( short, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsisi( c_func, s0, i1, s2, i3 )
	SV* c_func
	short s0
	int i1
	short s2
	int i3
PREINIT:
	char * (*func)( short, int, short, int );
CODE:
	func   = INT2PTR(char *(*)( short, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsifd( c_func, s0, i1, f2, d3 )
	SV* c_func
	short s0
	int i1
	float f2
	double d3
PREINIT:
	char * (*func)( short, int, float, double );
CODE:
	func   = INT2PTR(char *(*)( short, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsifs( c_func, s0, i1, f2, s3 )
	SV* c_func
	short s0
	int i1
	float f2
	short s3
PREINIT:
	char * (*func)( short, int, float, short );
CODE:
	func   = INT2PTR(char *(*)( short, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsiff( c_func, s0, i1, f2, f3 )
	SV* c_func
	short s0
	int i1
	float f2
	float f3
PREINIT:
	char * (*func)( short, int, float, float );
CODE:
	func   = INT2PTR(char *(*)( short, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsift( c_func, s0, i1, f2, t3 )
	SV* c_func
	short s0
	int i1
	float f2
	char * t3
PREINIT:
	char * (*func)( short, int, float, char * );
CODE:
	func   = INT2PTR(char *(*)( short, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsifi( c_func, s0, i1, f2, i3 )
	SV* c_func
	short s0
	int i1
	float f2
	int i3
PREINIT:
	char * (*func)( short, int, float, int );
CODE:
	func   = INT2PTR(char *(*)( short, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsitd( c_func, s0, i1, t2, d3 )
	SV* c_func
	short s0
	int i1
	char * t2
	double d3
PREINIT:
	char * (*func)( short, int, char *, double );
CODE:
	func   = INT2PTR(char *(*)( short, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsits( c_func, s0, i1, t2, s3 )
	SV* c_func
	short s0
	int i1
	char * t2
	short s3
PREINIT:
	char * (*func)( short, int, char *, short );
CODE:
	func   = INT2PTR(char *(*)( short, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsitf( c_func, s0, i1, t2, f3 )
	SV* c_func
	short s0
	int i1
	char * t2
	float f3
PREINIT:
	char * (*func)( short, int, char *, float );
CODE:
	func   = INT2PTR(char *(*)( short, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsitt( c_func, s0, i1, t2, t3 )
	SV* c_func
	short s0
	int i1
	char * t2
	char * t3
PREINIT:
	char * (*func)( short, int, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( short, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsiti( c_func, s0, i1, t2, i3 )
	SV* c_func
	short s0
	int i1
	char * t2
	int i3
PREINIT:
	char * (*func)( short, int, char *, int );
CODE:
	func   = INT2PTR(char *(*)( short, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tsiid( c_func, s0, i1, i2, d3 )
	SV* c_func
	short s0
	int i1
	int i2
	double d3
PREINIT:
	char * (*func)( short, int, int, double );
CODE:
	func   = INT2PTR(char *(*)( short, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tsiis( c_func, s0, i1, i2, s3 )
	SV* c_func
	short s0
	int i1
	int i2
	short s3
PREINIT:
	char * (*func)( short, int, int, short );
CODE:
	func   = INT2PTR(char *(*)( short, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tsiif( c_func, s0, i1, i2, f3 )
	SV* c_func
	short s0
	int i1
	int i2
	float f3
PREINIT:
	char * (*func)( short, int, int, float );
CODE:
	func   = INT2PTR(char *(*)( short, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tsiit( c_func, s0, i1, i2, t3 )
	SV* c_func
	short s0
	int i1
	int i2
	char * t3
PREINIT:
	char * (*func)( short, int, int, char * );
CODE:
	func   = INT2PTR(char *(*)( short, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tsiii( c_func, s0, i1, i2, i3 )
	SV* c_func
	short s0
	int i1
	int i2
	int i3
PREINIT:
	char * (*func)( short, int, int, int );
CODE:
	func   = INT2PTR(char *(*)( short, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfddd( c_func, f0, d1, d2, d3 )
	SV* c_func
	float f0
	double d1
	double d2
	double d3
PREINIT:
	char * (*func)( float, double, double, double );
CODE:
	func   = INT2PTR(char *(*)( float, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfdds( c_func, f0, d1, d2, s3 )
	SV* c_func
	float f0
	double d1
	double d2
	short s3
PREINIT:
	char * (*func)( float, double, double, short );
CODE:
	func   = INT2PTR(char *(*)( float, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfddf( c_func, f0, d1, d2, f3 )
	SV* c_func
	float f0
	double d1
	double d2
	float f3
PREINIT:
	char * (*func)( float, double, double, float );
CODE:
	func   = INT2PTR(char *(*)( float, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfddt( c_func, f0, d1, d2, t3 )
	SV* c_func
	float f0
	double d1
	double d2
	char * t3
PREINIT:
	char * (*func)( float, double, double, char * );
CODE:
	func   = INT2PTR(char *(*)( float, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfddi( c_func, f0, d1, d2, i3 )
	SV* c_func
	float f0
	double d1
	double d2
	int i3
PREINIT:
	char * (*func)( float, double, double, int );
CODE:
	func   = INT2PTR(char *(*)( float, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfdsd( c_func, f0, d1, s2, d3 )
	SV* c_func
	float f0
	double d1
	short s2
	double d3
PREINIT:
	char * (*func)( float, double, short, double );
CODE:
	func   = INT2PTR(char *(*)( float, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfdss( c_func, f0, d1, s2, s3 )
	SV* c_func
	float f0
	double d1
	short s2
	short s3
PREINIT:
	char * (*func)( float, double, short, short );
CODE:
	func   = INT2PTR(char *(*)( float, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfdsf( c_func, f0, d1, s2, f3 )
	SV* c_func
	float f0
	double d1
	short s2
	float f3
PREINIT:
	char * (*func)( float, double, short, float );
CODE:
	func   = INT2PTR(char *(*)( float, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfdst( c_func, f0, d1, s2, t3 )
	SV* c_func
	float f0
	double d1
	short s2
	char * t3
PREINIT:
	char * (*func)( float, double, short, char * );
CODE:
	func   = INT2PTR(char *(*)( float, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfdsi( c_func, f0, d1, s2, i3 )
	SV* c_func
	float f0
	double d1
	short s2
	int i3
PREINIT:
	char * (*func)( float, double, short, int );
CODE:
	func   = INT2PTR(char *(*)( float, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfdfd( c_func, f0, d1, f2, d3 )
	SV* c_func
	float f0
	double d1
	float f2
	double d3
PREINIT:
	char * (*func)( float, double, float, double );
CODE:
	func   = INT2PTR(char *(*)( float, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfdfs( c_func, f0, d1, f2, s3 )
	SV* c_func
	float f0
	double d1
	float f2
	short s3
PREINIT:
	char * (*func)( float, double, float, short );
CODE:
	func   = INT2PTR(char *(*)( float, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfdff( c_func, f0, d1, f2, f3 )
	SV* c_func
	float f0
	double d1
	float f2
	float f3
PREINIT:
	char * (*func)( float, double, float, float );
CODE:
	func   = INT2PTR(char *(*)( float, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfdft( c_func, f0, d1, f2, t3 )
	SV* c_func
	float f0
	double d1
	float f2
	char * t3
PREINIT:
	char * (*func)( float, double, float, char * );
CODE:
	func   = INT2PTR(char *(*)( float, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfdfi( c_func, f0, d1, f2, i3 )
	SV* c_func
	float f0
	double d1
	float f2
	int i3
PREINIT:
	char * (*func)( float, double, float, int );
CODE:
	func   = INT2PTR(char *(*)( float, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfdtd( c_func, f0, d1, t2, d3 )
	SV* c_func
	float f0
	double d1
	char * t2
	double d3
PREINIT:
	char * (*func)( float, double, char *, double );
CODE:
	func   = INT2PTR(char *(*)( float, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfdts( c_func, f0, d1, t2, s3 )
	SV* c_func
	float f0
	double d1
	char * t2
	short s3
PREINIT:
	char * (*func)( float, double, char *, short );
CODE:
	func   = INT2PTR(char *(*)( float, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfdtf( c_func, f0, d1, t2, f3 )
	SV* c_func
	float f0
	double d1
	char * t2
	float f3
PREINIT:
	char * (*func)( float, double, char *, float );
CODE:
	func   = INT2PTR(char *(*)( float, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfdtt( c_func, f0, d1, t2, t3 )
	SV* c_func
	float f0
	double d1
	char * t2
	char * t3
PREINIT:
	char * (*func)( float, double, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( float, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfdti( c_func, f0, d1, t2, i3 )
	SV* c_func
	float f0
	double d1
	char * t2
	int i3
PREINIT:
	char * (*func)( float, double, char *, int );
CODE:
	func   = INT2PTR(char *(*)( float, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfdid( c_func, f0, d1, i2, d3 )
	SV* c_func
	float f0
	double d1
	int i2
	double d3
PREINIT:
	char * (*func)( float, double, int, double );
CODE:
	func   = INT2PTR(char *(*)( float, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfdis( c_func, f0, d1, i2, s3 )
	SV* c_func
	float f0
	double d1
	int i2
	short s3
PREINIT:
	char * (*func)( float, double, int, short );
CODE:
	func   = INT2PTR(char *(*)( float, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfdif( c_func, f0, d1, i2, f3 )
	SV* c_func
	float f0
	double d1
	int i2
	float f3
PREINIT:
	char * (*func)( float, double, int, float );
CODE:
	func   = INT2PTR(char *(*)( float, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfdit( c_func, f0, d1, i2, t3 )
	SV* c_func
	float f0
	double d1
	int i2
	char * t3
PREINIT:
	char * (*func)( float, double, int, char * );
CODE:
	func   = INT2PTR(char *(*)( float, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfdii( c_func, f0, d1, i2, i3 )
	SV* c_func
	float f0
	double d1
	int i2
	int i3
PREINIT:
	char * (*func)( float, double, int, int );
CODE:
	func   = INT2PTR(char *(*)( float, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfsdd( c_func, f0, s1, d2, d3 )
	SV* c_func
	float f0
	short s1
	double d2
	double d3
PREINIT:
	char * (*func)( float, short, double, double );
CODE:
	func   = INT2PTR(char *(*)( float, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfsds( c_func, f0, s1, d2, s3 )
	SV* c_func
	float f0
	short s1
	double d2
	short s3
PREINIT:
	char * (*func)( float, short, double, short );
CODE:
	func   = INT2PTR(char *(*)( float, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfsdf( c_func, f0, s1, d2, f3 )
	SV* c_func
	float f0
	short s1
	double d2
	float f3
PREINIT:
	char * (*func)( float, short, double, float );
CODE:
	func   = INT2PTR(char *(*)( float, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfsdt( c_func, f0, s1, d2, t3 )
	SV* c_func
	float f0
	short s1
	double d2
	char * t3
PREINIT:
	char * (*func)( float, short, double, char * );
CODE:
	func   = INT2PTR(char *(*)( float, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfsdi( c_func, f0, s1, d2, i3 )
	SV* c_func
	float f0
	short s1
	double d2
	int i3
PREINIT:
	char * (*func)( float, short, double, int );
CODE:
	func   = INT2PTR(char *(*)( float, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfssd( c_func, f0, s1, s2, d3 )
	SV* c_func
	float f0
	short s1
	short s2
	double d3
PREINIT:
	char * (*func)( float, short, short, double );
CODE:
	func   = INT2PTR(char *(*)( float, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfsss( c_func, f0, s1, s2, s3 )
	SV* c_func
	float f0
	short s1
	short s2
	short s3
PREINIT:
	char * (*func)( float, short, short, short );
CODE:
	func   = INT2PTR(char *(*)( float, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfssf( c_func, f0, s1, s2, f3 )
	SV* c_func
	float f0
	short s1
	short s2
	float f3
PREINIT:
	char * (*func)( float, short, short, float );
CODE:
	func   = INT2PTR(char *(*)( float, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfsst( c_func, f0, s1, s2, t3 )
	SV* c_func
	float f0
	short s1
	short s2
	char * t3
PREINIT:
	char * (*func)( float, short, short, char * );
CODE:
	func   = INT2PTR(char *(*)( float, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfssi( c_func, f0, s1, s2, i3 )
	SV* c_func
	float f0
	short s1
	short s2
	int i3
PREINIT:
	char * (*func)( float, short, short, int );
CODE:
	func   = INT2PTR(char *(*)( float, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfsfd( c_func, f0, s1, f2, d3 )
	SV* c_func
	float f0
	short s1
	float f2
	double d3
PREINIT:
	char * (*func)( float, short, float, double );
CODE:
	func   = INT2PTR(char *(*)( float, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfsfs( c_func, f0, s1, f2, s3 )
	SV* c_func
	float f0
	short s1
	float f2
	short s3
PREINIT:
	char * (*func)( float, short, float, short );
CODE:
	func   = INT2PTR(char *(*)( float, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfsff( c_func, f0, s1, f2, f3 )
	SV* c_func
	float f0
	short s1
	float f2
	float f3
PREINIT:
	char * (*func)( float, short, float, float );
CODE:
	func   = INT2PTR(char *(*)( float, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfsft( c_func, f0, s1, f2, t3 )
	SV* c_func
	float f0
	short s1
	float f2
	char * t3
PREINIT:
	char * (*func)( float, short, float, char * );
CODE:
	func   = INT2PTR(char *(*)( float, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfsfi( c_func, f0, s1, f2, i3 )
	SV* c_func
	float f0
	short s1
	float f2
	int i3
PREINIT:
	char * (*func)( float, short, float, int );
CODE:
	func   = INT2PTR(char *(*)( float, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfstd( c_func, f0, s1, t2, d3 )
	SV* c_func
	float f0
	short s1
	char * t2
	double d3
PREINIT:
	char * (*func)( float, short, char *, double );
CODE:
	func   = INT2PTR(char *(*)( float, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfsts( c_func, f0, s1, t2, s3 )
	SV* c_func
	float f0
	short s1
	char * t2
	short s3
PREINIT:
	char * (*func)( float, short, char *, short );
CODE:
	func   = INT2PTR(char *(*)( float, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfstf( c_func, f0, s1, t2, f3 )
	SV* c_func
	float f0
	short s1
	char * t2
	float f3
PREINIT:
	char * (*func)( float, short, char *, float );
CODE:
	func   = INT2PTR(char *(*)( float, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfstt( c_func, f0, s1, t2, t3 )
	SV* c_func
	float f0
	short s1
	char * t2
	char * t3
PREINIT:
	char * (*func)( float, short, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( float, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfsti( c_func, f0, s1, t2, i3 )
	SV* c_func
	float f0
	short s1
	char * t2
	int i3
PREINIT:
	char * (*func)( float, short, char *, int );
CODE:
	func   = INT2PTR(char *(*)( float, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfsid( c_func, f0, s1, i2, d3 )
	SV* c_func
	float f0
	short s1
	int i2
	double d3
PREINIT:
	char * (*func)( float, short, int, double );
CODE:
	func   = INT2PTR(char *(*)( float, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfsis( c_func, f0, s1, i2, s3 )
	SV* c_func
	float f0
	short s1
	int i2
	short s3
PREINIT:
	char * (*func)( float, short, int, short );
CODE:
	func   = INT2PTR(char *(*)( float, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfsif( c_func, f0, s1, i2, f3 )
	SV* c_func
	float f0
	short s1
	int i2
	float f3
PREINIT:
	char * (*func)( float, short, int, float );
CODE:
	func   = INT2PTR(char *(*)( float, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfsit( c_func, f0, s1, i2, t3 )
	SV* c_func
	float f0
	short s1
	int i2
	char * t3
PREINIT:
	char * (*func)( float, short, int, char * );
CODE:
	func   = INT2PTR(char *(*)( float, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfsii( c_func, f0, s1, i2, i3 )
	SV* c_func
	float f0
	short s1
	int i2
	int i3
PREINIT:
	char * (*func)( float, short, int, int );
CODE:
	func   = INT2PTR(char *(*)( float, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tffdd( c_func, f0, f1, d2, d3 )
	SV* c_func
	float f0
	float f1
	double d2
	double d3
PREINIT:
	char * (*func)( float, float, double, double );
CODE:
	func   = INT2PTR(char *(*)( float, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tffds( c_func, f0, f1, d2, s3 )
	SV* c_func
	float f0
	float f1
	double d2
	short s3
PREINIT:
	char * (*func)( float, float, double, short );
CODE:
	func   = INT2PTR(char *(*)( float, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tffdf( c_func, f0, f1, d2, f3 )
	SV* c_func
	float f0
	float f1
	double d2
	float f3
PREINIT:
	char * (*func)( float, float, double, float );
CODE:
	func   = INT2PTR(char *(*)( float, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tffdt( c_func, f0, f1, d2, t3 )
	SV* c_func
	float f0
	float f1
	double d2
	char * t3
PREINIT:
	char * (*func)( float, float, double, char * );
CODE:
	func   = INT2PTR(char *(*)( float, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tffdi( c_func, f0, f1, d2, i3 )
	SV* c_func
	float f0
	float f1
	double d2
	int i3
PREINIT:
	char * (*func)( float, float, double, int );
CODE:
	func   = INT2PTR(char *(*)( float, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tffsd( c_func, f0, f1, s2, d3 )
	SV* c_func
	float f0
	float f1
	short s2
	double d3
PREINIT:
	char * (*func)( float, float, short, double );
CODE:
	func   = INT2PTR(char *(*)( float, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tffss( c_func, f0, f1, s2, s3 )
	SV* c_func
	float f0
	float f1
	short s2
	short s3
PREINIT:
	char * (*func)( float, float, short, short );
CODE:
	func   = INT2PTR(char *(*)( float, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tffsf( c_func, f0, f1, s2, f3 )
	SV* c_func
	float f0
	float f1
	short s2
	float f3
PREINIT:
	char * (*func)( float, float, short, float );
CODE:
	func   = INT2PTR(char *(*)( float, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tffst( c_func, f0, f1, s2, t3 )
	SV* c_func
	float f0
	float f1
	short s2
	char * t3
PREINIT:
	char * (*func)( float, float, short, char * );
CODE:
	func   = INT2PTR(char *(*)( float, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tffsi( c_func, f0, f1, s2, i3 )
	SV* c_func
	float f0
	float f1
	short s2
	int i3
PREINIT:
	char * (*func)( float, float, short, int );
CODE:
	func   = INT2PTR(char *(*)( float, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfffd( c_func, f0, f1, f2, d3 )
	SV* c_func
	float f0
	float f1
	float f2
	double d3
PREINIT:
	char * (*func)( float, float, float, double );
CODE:
	func   = INT2PTR(char *(*)( float, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfffs( c_func, f0, f1, f2, s3 )
	SV* c_func
	float f0
	float f1
	float f2
	short s3
PREINIT:
	char * (*func)( float, float, float, short );
CODE:
	func   = INT2PTR(char *(*)( float, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tffff( c_func, f0, f1, f2, f3 )
	SV* c_func
	float f0
	float f1
	float f2
	float f3
PREINIT:
	char * (*func)( float, float, float, float );
CODE:
	func   = INT2PTR(char *(*)( float, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tffft( c_func, f0, f1, f2, t3 )
	SV* c_func
	float f0
	float f1
	float f2
	char * t3
PREINIT:
	char * (*func)( float, float, float, char * );
CODE:
	func   = INT2PTR(char *(*)( float, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfffi( c_func, f0, f1, f2, i3 )
	SV* c_func
	float f0
	float f1
	float f2
	int i3
PREINIT:
	char * (*func)( float, float, float, int );
CODE:
	func   = INT2PTR(char *(*)( float, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfftd( c_func, f0, f1, t2, d3 )
	SV* c_func
	float f0
	float f1
	char * t2
	double d3
PREINIT:
	char * (*func)( float, float, char *, double );
CODE:
	func   = INT2PTR(char *(*)( float, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tffts( c_func, f0, f1, t2, s3 )
	SV* c_func
	float f0
	float f1
	char * t2
	short s3
PREINIT:
	char * (*func)( float, float, char *, short );
CODE:
	func   = INT2PTR(char *(*)( float, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfftf( c_func, f0, f1, t2, f3 )
	SV* c_func
	float f0
	float f1
	char * t2
	float f3
PREINIT:
	char * (*func)( float, float, char *, float );
CODE:
	func   = INT2PTR(char *(*)( float, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfftt( c_func, f0, f1, t2, t3 )
	SV* c_func
	float f0
	float f1
	char * t2
	char * t3
PREINIT:
	char * (*func)( float, float, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( float, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tffti( c_func, f0, f1, t2, i3 )
	SV* c_func
	float f0
	float f1
	char * t2
	int i3
PREINIT:
	char * (*func)( float, float, char *, int );
CODE:
	func   = INT2PTR(char *(*)( float, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tffid( c_func, f0, f1, i2, d3 )
	SV* c_func
	float f0
	float f1
	int i2
	double d3
PREINIT:
	char * (*func)( float, float, int, double );
CODE:
	func   = INT2PTR(char *(*)( float, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tffis( c_func, f0, f1, i2, s3 )
	SV* c_func
	float f0
	float f1
	int i2
	short s3
PREINIT:
	char * (*func)( float, float, int, short );
CODE:
	func   = INT2PTR(char *(*)( float, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tffif( c_func, f0, f1, i2, f3 )
	SV* c_func
	float f0
	float f1
	int i2
	float f3
PREINIT:
	char * (*func)( float, float, int, float );
CODE:
	func   = INT2PTR(char *(*)( float, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tffit( c_func, f0, f1, i2, t3 )
	SV* c_func
	float f0
	float f1
	int i2
	char * t3
PREINIT:
	char * (*func)( float, float, int, char * );
CODE:
	func   = INT2PTR(char *(*)( float, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tffii( c_func, f0, f1, i2, i3 )
	SV* c_func
	float f0
	float f1
	int i2
	int i3
PREINIT:
	char * (*func)( float, float, int, int );
CODE:
	func   = INT2PTR(char *(*)( float, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tftdd( c_func, f0, t1, d2, d3 )
	SV* c_func
	float f0
	char * t1
	double d2
	double d3
PREINIT:
	char * (*func)( float, char *, double, double );
CODE:
	func   = INT2PTR(char *(*)( float, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tftds( c_func, f0, t1, d2, s3 )
	SV* c_func
	float f0
	char * t1
	double d2
	short s3
PREINIT:
	char * (*func)( float, char *, double, short );
CODE:
	func   = INT2PTR(char *(*)( float, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tftdf( c_func, f0, t1, d2, f3 )
	SV* c_func
	float f0
	char * t1
	double d2
	float f3
PREINIT:
	char * (*func)( float, char *, double, float );
CODE:
	func   = INT2PTR(char *(*)( float, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tftdt( c_func, f0, t1, d2, t3 )
	SV* c_func
	float f0
	char * t1
	double d2
	char * t3
PREINIT:
	char * (*func)( float, char *, double, char * );
CODE:
	func   = INT2PTR(char *(*)( float, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tftdi( c_func, f0, t1, d2, i3 )
	SV* c_func
	float f0
	char * t1
	double d2
	int i3
PREINIT:
	char * (*func)( float, char *, double, int );
CODE:
	func   = INT2PTR(char *(*)( float, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tftsd( c_func, f0, t1, s2, d3 )
	SV* c_func
	float f0
	char * t1
	short s2
	double d3
PREINIT:
	char * (*func)( float, char *, short, double );
CODE:
	func   = INT2PTR(char *(*)( float, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tftss( c_func, f0, t1, s2, s3 )
	SV* c_func
	float f0
	char * t1
	short s2
	short s3
PREINIT:
	char * (*func)( float, char *, short, short );
CODE:
	func   = INT2PTR(char *(*)( float, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tftsf( c_func, f0, t1, s2, f3 )
	SV* c_func
	float f0
	char * t1
	short s2
	float f3
PREINIT:
	char * (*func)( float, char *, short, float );
CODE:
	func   = INT2PTR(char *(*)( float, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tftst( c_func, f0, t1, s2, t3 )
	SV* c_func
	float f0
	char * t1
	short s2
	char * t3
PREINIT:
	char * (*func)( float, char *, short, char * );
CODE:
	func   = INT2PTR(char *(*)( float, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tftsi( c_func, f0, t1, s2, i3 )
	SV* c_func
	float f0
	char * t1
	short s2
	int i3
PREINIT:
	char * (*func)( float, char *, short, int );
CODE:
	func   = INT2PTR(char *(*)( float, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tftfd( c_func, f0, t1, f2, d3 )
	SV* c_func
	float f0
	char * t1
	float f2
	double d3
PREINIT:
	char * (*func)( float, char *, float, double );
CODE:
	func   = INT2PTR(char *(*)( float, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tftfs( c_func, f0, t1, f2, s3 )
	SV* c_func
	float f0
	char * t1
	float f2
	short s3
PREINIT:
	char * (*func)( float, char *, float, short );
CODE:
	func   = INT2PTR(char *(*)( float, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tftff( c_func, f0, t1, f2, f3 )
	SV* c_func
	float f0
	char * t1
	float f2
	float f3
PREINIT:
	char * (*func)( float, char *, float, float );
CODE:
	func   = INT2PTR(char *(*)( float, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tftft( c_func, f0, t1, f2, t3 )
	SV* c_func
	float f0
	char * t1
	float f2
	char * t3
PREINIT:
	char * (*func)( float, char *, float, char * );
CODE:
	func   = INT2PTR(char *(*)( float, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tftfi( c_func, f0, t1, f2, i3 )
	SV* c_func
	float f0
	char * t1
	float f2
	int i3
PREINIT:
	char * (*func)( float, char *, float, int );
CODE:
	func   = INT2PTR(char *(*)( float, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfttd( c_func, f0, t1, t2, d3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	double d3
PREINIT:
	char * (*func)( float, char *, char *, double );
CODE:
	func   = INT2PTR(char *(*)( float, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tftts( c_func, f0, t1, t2, s3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	short s3
PREINIT:
	char * (*func)( float, char *, char *, short );
CODE:
	func   = INT2PTR(char *(*)( float, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfttf( c_func, f0, t1, t2, f3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	float f3
PREINIT:
	char * (*func)( float, char *, char *, float );
CODE:
	func   = INT2PTR(char *(*)( float, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfttt( c_func, f0, t1, t2, t3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	char * t3
PREINIT:
	char * (*func)( float, char *, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( float, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tftti( c_func, f0, t1, t2, i3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	int i3
PREINIT:
	char * (*func)( float, char *, char *, int );
CODE:
	func   = INT2PTR(char *(*)( float, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tftid( c_func, f0, t1, i2, d3 )
	SV* c_func
	float f0
	char * t1
	int i2
	double d3
PREINIT:
	char * (*func)( float, char *, int, double );
CODE:
	func   = INT2PTR(char *(*)( float, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tftis( c_func, f0, t1, i2, s3 )
	SV* c_func
	float f0
	char * t1
	int i2
	short s3
PREINIT:
	char * (*func)( float, char *, int, short );
CODE:
	func   = INT2PTR(char *(*)( float, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tftif( c_func, f0, t1, i2, f3 )
	SV* c_func
	float f0
	char * t1
	int i2
	float f3
PREINIT:
	char * (*func)( float, char *, int, float );
CODE:
	func   = INT2PTR(char *(*)( float, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tftit( c_func, f0, t1, i2, t3 )
	SV* c_func
	float f0
	char * t1
	int i2
	char * t3
PREINIT:
	char * (*func)( float, char *, int, char * );
CODE:
	func   = INT2PTR(char *(*)( float, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tftii( c_func, f0, t1, i2, i3 )
	SV* c_func
	float f0
	char * t1
	int i2
	int i3
PREINIT:
	char * (*func)( float, char *, int, int );
CODE:
	func   = INT2PTR(char *(*)( float, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfidd( c_func, f0, i1, d2, d3 )
	SV* c_func
	float f0
	int i1
	double d2
	double d3
PREINIT:
	char * (*func)( float, int, double, double );
CODE:
	func   = INT2PTR(char *(*)( float, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfids( c_func, f0, i1, d2, s3 )
	SV* c_func
	float f0
	int i1
	double d2
	short s3
PREINIT:
	char * (*func)( float, int, double, short );
CODE:
	func   = INT2PTR(char *(*)( float, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfidf( c_func, f0, i1, d2, f3 )
	SV* c_func
	float f0
	int i1
	double d2
	float f3
PREINIT:
	char * (*func)( float, int, double, float );
CODE:
	func   = INT2PTR(char *(*)( float, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfidt( c_func, f0, i1, d2, t3 )
	SV* c_func
	float f0
	int i1
	double d2
	char * t3
PREINIT:
	char * (*func)( float, int, double, char * );
CODE:
	func   = INT2PTR(char *(*)( float, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfidi( c_func, f0, i1, d2, i3 )
	SV* c_func
	float f0
	int i1
	double d2
	int i3
PREINIT:
	char * (*func)( float, int, double, int );
CODE:
	func   = INT2PTR(char *(*)( float, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfisd( c_func, f0, i1, s2, d3 )
	SV* c_func
	float f0
	int i1
	short s2
	double d3
PREINIT:
	char * (*func)( float, int, short, double );
CODE:
	func   = INT2PTR(char *(*)( float, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfiss( c_func, f0, i1, s2, s3 )
	SV* c_func
	float f0
	int i1
	short s2
	short s3
PREINIT:
	char * (*func)( float, int, short, short );
CODE:
	func   = INT2PTR(char *(*)( float, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfisf( c_func, f0, i1, s2, f3 )
	SV* c_func
	float f0
	int i1
	short s2
	float f3
PREINIT:
	char * (*func)( float, int, short, float );
CODE:
	func   = INT2PTR(char *(*)( float, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfist( c_func, f0, i1, s2, t3 )
	SV* c_func
	float f0
	int i1
	short s2
	char * t3
PREINIT:
	char * (*func)( float, int, short, char * );
CODE:
	func   = INT2PTR(char *(*)( float, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfisi( c_func, f0, i1, s2, i3 )
	SV* c_func
	float f0
	int i1
	short s2
	int i3
PREINIT:
	char * (*func)( float, int, short, int );
CODE:
	func   = INT2PTR(char *(*)( float, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfifd( c_func, f0, i1, f2, d3 )
	SV* c_func
	float f0
	int i1
	float f2
	double d3
PREINIT:
	char * (*func)( float, int, float, double );
CODE:
	func   = INT2PTR(char *(*)( float, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfifs( c_func, f0, i1, f2, s3 )
	SV* c_func
	float f0
	int i1
	float f2
	short s3
PREINIT:
	char * (*func)( float, int, float, short );
CODE:
	func   = INT2PTR(char *(*)( float, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfiff( c_func, f0, i1, f2, f3 )
	SV* c_func
	float f0
	int i1
	float f2
	float f3
PREINIT:
	char * (*func)( float, int, float, float );
CODE:
	func   = INT2PTR(char *(*)( float, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfift( c_func, f0, i1, f2, t3 )
	SV* c_func
	float f0
	int i1
	float f2
	char * t3
PREINIT:
	char * (*func)( float, int, float, char * );
CODE:
	func   = INT2PTR(char *(*)( float, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfifi( c_func, f0, i1, f2, i3 )
	SV* c_func
	float f0
	int i1
	float f2
	int i3
PREINIT:
	char * (*func)( float, int, float, int );
CODE:
	func   = INT2PTR(char *(*)( float, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfitd( c_func, f0, i1, t2, d3 )
	SV* c_func
	float f0
	int i1
	char * t2
	double d3
PREINIT:
	char * (*func)( float, int, char *, double );
CODE:
	func   = INT2PTR(char *(*)( float, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfits( c_func, f0, i1, t2, s3 )
	SV* c_func
	float f0
	int i1
	char * t2
	short s3
PREINIT:
	char * (*func)( float, int, char *, short );
CODE:
	func   = INT2PTR(char *(*)( float, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfitf( c_func, f0, i1, t2, f3 )
	SV* c_func
	float f0
	int i1
	char * t2
	float f3
PREINIT:
	char * (*func)( float, int, char *, float );
CODE:
	func   = INT2PTR(char *(*)( float, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfitt( c_func, f0, i1, t2, t3 )
	SV* c_func
	float f0
	int i1
	char * t2
	char * t3
PREINIT:
	char * (*func)( float, int, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( float, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfiti( c_func, f0, i1, t2, i3 )
	SV* c_func
	float f0
	int i1
	char * t2
	int i3
PREINIT:
	char * (*func)( float, int, char *, int );
CODE:
	func   = INT2PTR(char *(*)( float, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tfiid( c_func, f0, i1, i2, d3 )
	SV* c_func
	float f0
	int i1
	int i2
	double d3
PREINIT:
	char * (*func)( float, int, int, double );
CODE:
	func   = INT2PTR(char *(*)( float, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tfiis( c_func, f0, i1, i2, s3 )
	SV* c_func
	float f0
	int i1
	int i2
	short s3
PREINIT:
	char * (*func)( float, int, int, short );
CODE:
	func   = INT2PTR(char *(*)( float, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tfiif( c_func, f0, i1, i2, f3 )
	SV* c_func
	float f0
	int i1
	int i2
	float f3
PREINIT:
	char * (*func)( float, int, int, float );
CODE:
	func   = INT2PTR(char *(*)( float, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tfiit( c_func, f0, i1, i2, t3 )
	SV* c_func
	float f0
	int i1
	int i2
	char * t3
PREINIT:
	char * (*func)( float, int, int, char * );
CODE:
	func   = INT2PTR(char *(*)( float, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tfiii( c_func, f0, i1, i2, i3 )
	SV* c_func
	float f0
	int i1
	int i2
	int i3
PREINIT:
	char * (*func)( float, int, int, int );
CODE:
	func   = INT2PTR(char *(*)( float, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, i1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttddd( c_func, t0, d1, d2, d3 )
	SV* c_func
	char * t0
	double d1
	double d2
	double d3
PREINIT:
	char * (*func)( char *, double, double, double );
CODE:
	func   = INT2PTR(char *(*)( char *, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttdds( c_func, t0, d1, d2, s3 )
	SV* c_func
	char * t0
	double d1
	double d2
	short s3
PREINIT:
	char * (*func)( char *, double, double, short );
CODE:
	func   = INT2PTR(char *(*)( char *, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttddf( c_func, t0, d1, d2, f3 )
	SV* c_func
	char * t0
	double d1
	double d2
	float f3
PREINIT:
	char * (*func)( char *, double, double, float );
CODE:
	func   = INT2PTR(char *(*)( char *, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttddt( c_func, t0, d1, d2, t3 )
	SV* c_func
	char * t0
	double d1
	double d2
	char * t3
PREINIT:
	char * (*func)( char *, double, double, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttddi( c_func, t0, d1, d2, i3 )
	SV* c_func
	char * t0
	double d1
	double d2
	int i3
PREINIT:
	char * (*func)( char *, double, double, int );
CODE:
	func   = INT2PTR(char *(*)( char *, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttdsd( c_func, t0, d1, s2, d3 )
	SV* c_func
	char * t0
	double d1
	short s2
	double d3
PREINIT:
	char * (*func)( char *, double, short, double );
CODE:
	func   = INT2PTR(char *(*)( char *, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttdss( c_func, t0, d1, s2, s3 )
	SV* c_func
	char * t0
	double d1
	short s2
	short s3
PREINIT:
	char * (*func)( char *, double, short, short );
CODE:
	func   = INT2PTR(char *(*)( char *, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttdsf( c_func, t0, d1, s2, f3 )
	SV* c_func
	char * t0
	double d1
	short s2
	float f3
PREINIT:
	char * (*func)( char *, double, short, float );
CODE:
	func   = INT2PTR(char *(*)( char *, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttdst( c_func, t0, d1, s2, t3 )
	SV* c_func
	char * t0
	double d1
	short s2
	char * t3
PREINIT:
	char * (*func)( char *, double, short, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttdsi( c_func, t0, d1, s2, i3 )
	SV* c_func
	char * t0
	double d1
	short s2
	int i3
PREINIT:
	char * (*func)( char *, double, short, int );
CODE:
	func   = INT2PTR(char *(*)( char *, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttdfd( c_func, t0, d1, f2, d3 )
	SV* c_func
	char * t0
	double d1
	float f2
	double d3
PREINIT:
	char * (*func)( char *, double, float, double );
CODE:
	func   = INT2PTR(char *(*)( char *, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttdfs( c_func, t0, d1, f2, s3 )
	SV* c_func
	char * t0
	double d1
	float f2
	short s3
PREINIT:
	char * (*func)( char *, double, float, short );
CODE:
	func   = INT2PTR(char *(*)( char *, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttdff( c_func, t0, d1, f2, f3 )
	SV* c_func
	char * t0
	double d1
	float f2
	float f3
PREINIT:
	char * (*func)( char *, double, float, float );
CODE:
	func   = INT2PTR(char *(*)( char *, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttdft( c_func, t0, d1, f2, t3 )
	SV* c_func
	char * t0
	double d1
	float f2
	char * t3
PREINIT:
	char * (*func)( char *, double, float, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttdfi( c_func, t0, d1, f2, i3 )
	SV* c_func
	char * t0
	double d1
	float f2
	int i3
PREINIT:
	char * (*func)( char *, double, float, int );
CODE:
	func   = INT2PTR(char *(*)( char *, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttdtd( c_func, t0, d1, t2, d3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	double d3
PREINIT:
	char * (*func)( char *, double, char *, double );
CODE:
	func   = INT2PTR(char *(*)( char *, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttdts( c_func, t0, d1, t2, s3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	short s3
PREINIT:
	char * (*func)( char *, double, char *, short );
CODE:
	func   = INT2PTR(char *(*)( char *, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttdtf( c_func, t0, d1, t2, f3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	float f3
PREINIT:
	char * (*func)( char *, double, char *, float );
CODE:
	func   = INT2PTR(char *(*)( char *, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttdtt( c_func, t0, d1, t2, t3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	char * t3
PREINIT:
	char * (*func)( char *, double, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttdti( c_func, t0, d1, t2, i3 )
	SV* c_func
	char * t0
	double d1
	char * t2
	int i3
PREINIT:
	char * (*func)( char *, double, char *, int );
CODE:
	func   = INT2PTR(char *(*)( char *, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttdid( c_func, t0, d1, i2, d3 )
	SV* c_func
	char * t0
	double d1
	int i2
	double d3
PREINIT:
	char * (*func)( char *, double, int, double );
CODE:
	func   = INT2PTR(char *(*)( char *, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttdis( c_func, t0, d1, i2, s3 )
	SV* c_func
	char * t0
	double d1
	int i2
	short s3
PREINIT:
	char * (*func)( char *, double, int, short );
CODE:
	func   = INT2PTR(char *(*)( char *, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttdif( c_func, t0, d1, i2, f3 )
	SV* c_func
	char * t0
	double d1
	int i2
	float f3
PREINIT:
	char * (*func)( char *, double, int, float );
CODE:
	func   = INT2PTR(char *(*)( char *, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttdit( c_func, t0, d1, i2, t3 )
	SV* c_func
	char * t0
	double d1
	int i2
	char * t3
PREINIT:
	char * (*func)( char *, double, int, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttdii( c_func, t0, d1, i2, i3 )
	SV* c_func
	char * t0
	double d1
	int i2
	int i3
PREINIT:
	char * (*func)( char *, double, int, int );
CODE:
	func   = INT2PTR(char *(*)( char *, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, d1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttsdd( c_func, t0, s1, d2, d3 )
	SV* c_func
	char * t0
	short s1
	double d2
	double d3
PREINIT:
	char * (*func)( char *, short, double, double );
CODE:
	func   = INT2PTR(char *(*)( char *, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttsds( c_func, t0, s1, d2, s3 )
	SV* c_func
	char * t0
	short s1
	double d2
	short s3
PREINIT:
	char * (*func)( char *, short, double, short );
CODE:
	func   = INT2PTR(char *(*)( char *, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttsdf( c_func, t0, s1, d2, f3 )
	SV* c_func
	char * t0
	short s1
	double d2
	float f3
PREINIT:
	char * (*func)( char *, short, double, float );
CODE:
	func   = INT2PTR(char *(*)( char *, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttsdt( c_func, t0, s1, d2, t3 )
	SV* c_func
	char * t0
	short s1
	double d2
	char * t3
PREINIT:
	char * (*func)( char *, short, double, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttsdi( c_func, t0, s1, d2, i3 )
	SV* c_func
	char * t0
	short s1
	double d2
	int i3
PREINIT:
	char * (*func)( char *, short, double, int );
CODE:
	func   = INT2PTR(char *(*)( char *, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttssd( c_func, t0, s1, s2, d3 )
	SV* c_func
	char * t0
	short s1
	short s2
	double d3
PREINIT:
	char * (*func)( char *, short, short, double );
CODE:
	func   = INT2PTR(char *(*)( char *, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttsss( c_func, t0, s1, s2, s3 )
	SV* c_func
	char * t0
	short s1
	short s2
	short s3
PREINIT:
	char * (*func)( char *, short, short, short );
CODE:
	func   = INT2PTR(char *(*)( char *, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttssf( c_func, t0, s1, s2, f3 )
	SV* c_func
	char * t0
	short s1
	short s2
	float f3
PREINIT:
	char * (*func)( char *, short, short, float );
CODE:
	func   = INT2PTR(char *(*)( char *, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttsst( c_func, t0, s1, s2, t3 )
	SV* c_func
	char * t0
	short s1
	short s2
	char * t3
PREINIT:
	char * (*func)( char *, short, short, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttssi( c_func, t0, s1, s2, i3 )
	SV* c_func
	char * t0
	short s1
	short s2
	int i3
PREINIT:
	char * (*func)( char *, short, short, int );
CODE:
	func   = INT2PTR(char *(*)( char *, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttsfd( c_func, t0, s1, f2, d3 )
	SV* c_func
	char * t0
	short s1
	float f2
	double d3
PREINIT:
	char * (*func)( char *, short, float, double );
CODE:
	func   = INT2PTR(char *(*)( char *, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttsfs( c_func, t0, s1, f2, s3 )
	SV* c_func
	char * t0
	short s1
	float f2
	short s3
PREINIT:
	char * (*func)( char *, short, float, short );
CODE:
	func   = INT2PTR(char *(*)( char *, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttsff( c_func, t0, s1, f2, f3 )
	SV* c_func
	char * t0
	short s1
	float f2
	float f3
PREINIT:
	char * (*func)( char *, short, float, float );
CODE:
	func   = INT2PTR(char *(*)( char *, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttsft( c_func, t0, s1, f2, t3 )
	SV* c_func
	char * t0
	short s1
	float f2
	char * t3
PREINIT:
	char * (*func)( char *, short, float, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttsfi( c_func, t0, s1, f2, i3 )
	SV* c_func
	char * t0
	short s1
	float f2
	int i3
PREINIT:
	char * (*func)( char *, short, float, int );
CODE:
	func   = INT2PTR(char *(*)( char *, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttstd( c_func, t0, s1, t2, d3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	double d3
PREINIT:
	char * (*func)( char *, short, char *, double );
CODE:
	func   = INT2PTR(char *(*)( char *, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttsts( c_func, t0, s1, t2, s3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	short s3
PREINIT:
	char * (*func)( char *, short, char *, short );
CODE:
	func   = INT2PTR(char *(*)( char *, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttstf( c_func, t0, s1, t2, f3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	float f3
PREINIT:
	char * (*func)( char *, short, char *, float );
CODE:
	func   = INT2PTR(char *(*)( char *, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttstt( c_func, t0, s1, t2, t3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	char * t3
PREINIT:
	char * (*func)( char *, short, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttsti( c_func, t0, s1, t2, i3 )
	SV* c_func
	char * t0
	short s1
	char * t2
	int i3
PREINIT:
	char * (*func)( char *, short, char *, int );
CODE:
	func   = INT2PTR(char *(*)( char *, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttsid( c_func, t0, s1, i2, d3 )
	SV* c_func
	char * t0
	short s1
	int i2
	double d3
PREINIT:
	char * (*func)( char *, short, int, double );
CODE:
	func   = INT2PTR(char *(*)( char *, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttsis( c_func, t0, s1, i2, s3 )
	SV* c_func
	char * t0
	short s1
	int i2
	short s3
PREINIT:
	char * (*func)( char *, short, int, short );
CODE:
	func   = INT2PTR(char *(*)( char *, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttsif( c_func, t0, s1, i2, f3 )
	SV* c_func
	char * t0
	short s1
	int i2
	float f3
PREINIT:
	char * (*func)( char *, short, int, float );
CODE:
	func   = INT2PTR(char *(*)( char *, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttsit( c_func, t0, s1, i2, t3 )
	SV* c_func
	char * t0
	short s1
	int i2
	char * t3
PREINIT:
	char * (*func)( char *, short, int, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttsii( c_func, t0, s1, i2, i3 )
	SV* c_func
	char * t0
	short s1
	int i2
	int i3
PREINIT:
	char * (*func)( char *, short, int, int );
CODE:
	func   = INT2PTR(char *(*)( char *, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, s1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttfdd( c_func, t0, f1, d2, d3 )
	SV* c_func
	char * t0
	float f1
	double d2
	double d3
PREINIT:
	char * (*func)( char *, float, double, double );
CODE:
	func   = INT2PTR(char *(*)( char *, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttfds( c_func, t0, f1, d2, s3 )
	SV* c_func
	char * t0
	float f1
	double d2
	short s3
PREINIT:
	char * (*func)( char *, float, double, short );
CODE:
	func   = INT2PTR(char *(*)( char *, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttfdf( c_func, t0, f1, d2, f3 )
	SV* c_func
	char * t0
	float f1
	double d2
	float f3
PREINIT:
	char * (*func)( char *, float, double, float );
CODE:
	func   = INT2PTR(char *(*)( char *, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttfdt( c_func, t0, f1, d2, t3 )
	SV* c_func
	char * t0
	float f1
	double d2
	char * t3
PREINIT:
	char * (*func)( char *, float, double, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttfdi( c_func, t0, f1, d2, i3 )
	SV* c_func
	char * t0
	float f1
	double d2
	int i3
PREINIT:
	char * (*func)( char *, float, double, int );
CODE:
	func   = INT2PTR(char *(*)( char *, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttfsd( c_func, t0, f1, s2, d3 )
	SV* c_func
	char * t0
	float f1
	short s2
	double d3
PREINIT:
	char * (*func)( char *, float, short, double );
CODE:
	func   = INT2PTR(char *(*)( char *, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttfss( c_func, t0, f1, s2, s3 )
	SV* c_func
	char * t0
	float f1
	short s2
	short s3
PREINIT:
	char * (*func)( char *, float, short, short );
CODE:
	func   = INT2PTR(char *(*)( char *, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttfsf( c_func, t0, f1, s2, f3 )
	SV* c_func
	char * t0
	float f1
	short s2
	float f3
PREINIT:
	char * (*func)( char *, float, short, float );
CODE:
	func   = INT2PTR(char *(*)( char *, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttfst( c_func, t0, f1, s2, t3 )
	SV* c_func
	char * t0
	float f1
	short s2
	char * t3
PREINIT:
	char * (*func)( char *, float, short, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttfsi( c_func, t0, f1, s2, i3 )
	SV* c_func
	char * t0
	float f1
	short s2
	int i3
PREINIT:
	char * (*func)( char *, float, short, int );
CODE:
	func   = INT2PTR(char *(*)( char *, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttffd( c_func, t0, f1, f2, d3 )
	SV* c_func
	char * t0
	float f1
	float f2
	double d3
PREINIT:
	char * (*func)( char *, float, float, double );
CODE:
	func   = INT2PTR(char *(*)( char *, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttffs( c_func, t0, f1, f2, s3 )
	SV* c_func
	char * t0
	float f1
	float f2
	short s3
PREINIT:
	char * (*func)( char *, float, float, short );
CODE:
	func   = INT2PTR(char *(*)( char *, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttfff( c_func, t0, f1, f2, f3 )
	SV* c_func
	char * t0
	float f1
	float f2
	float f3
PREINIT:
	char * (*func)( char *, float, float, float );
CODE:
	func   = INT2PTR(char *(*)( char *, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttfft( c_func, t0, f1, f2, t3 )
	SV* c_func
	char * t0
	float f1
	float f2
	char * t3
PREINIT:
	char * (*func)( char *, float, float, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttffi( c_func, t0, f1, f2, i3 )
	SV* c_func
	char * t0
	float f1
	float f2
	int i3
PREINIT:
	char * (*func)( char *, float, float, int );
CODE:
	func   = INT2PTR(char *(*)( char *, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttftd( c_func, t0, f1, t2, d3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	double d3
PREINIT:
	char * (*func)( char *, float, char *, double );
CODE:
	func   = INT2PTR(char *(*)( char *, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttfts( c_func, t0, f1, t2, s3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	short s3
PREINIT:
	char * (*func)( char *, float, char *, short );
CODE:
	func   = INT2PTR(char *(*)( char *, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttftf( c_func, t0, f1, t2, f3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	float f3
PREINIT:
	char * (*func)( char *, float, char *, float );
CODE:
	func   = INT2PTR(char *(*)( char *, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttftt( c_func, t0, f1, t2, t3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	char * t3
PREINIT:
	char * (*func)( char *, float, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttfti( c_func, t0, f1, t2, i3 )
	SV* c_func
	char * t0
	float f1
	char * t2
	int i3
PREINIT:
	char * (*func)( char *, float, char *, int );
CODE:
	func   = INT2PTR(char *(*)( char *, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttfid( c_func, t0, f1, i2, d3 )
	SV* c_func
	char * t0
	float f1
	int i2
	double d3
PREINIT:
	char * (*func)( char *, float, int, double );
CODE:
	func   = INT2PTR(char *(*)( char *, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttfis( c_func, t0, f1, i2, s3 )
	SV* c_func
	char * t0
	float f1
	int i2
	short s3
PREINIT:
	char * (*func)( char *, float, int, short );
CODE:
	func   = INT2PTR(char *(*)( char *, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttfif( c_func, t0, f1, i2, f3 )
	SV* c_func
	char * t0
	float f1
	int i2
	float f3
PREINIT:
	char * (*func)( char *, float, int, float );
CODE:
	func   = INT2PTR(char *(*)( char *, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttfit( c_func, t0, f1, i2, t3 )
	SV* c_func
	char * t0
	float f1
	int i2
	char * t3
PREINIT:
	char * (*func)( char *, float, int, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttfii( c_func, t0, f1, i2, i3 )
	SV* c_func
	char * t0
	float f1
	int i2
	int i3
PREINIT:
	char * (*func)( char *, float, int, int );
CODE:
	func   = INT2PTR(char *(*)( char *, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, f1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tttdd( c_func, t0, t1, d2, d3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	double d3
PREINIT:
	char * (*func)( char *, char *, double, double );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tttds( c_func, t0, t1, d2, s3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	short s3
PREINIT:
	char * (*func)( char *, char *, double, short );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tttdf( c_func, t0, t1, d2, f3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	float f3
PREINIT:
	char * (*func)( char *, char *, double, float );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tttdt( c_func, t0, t1, d2, t3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	char * t3
PREINIT:
	char * (*func)( char *, char *, double, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tttdi( c_func, t0, t1, d2, i3 )
	SV* c_func
	char * t0
	char * t1
	double d2
	int i3
PREINIT:
	char * (*func)( char *, char *, double, int );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tttsd( c_func, t0, t1, s2, d3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	double d3
PREINIT:
	char * (*func)( char *, char *, short, double );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tttss( c_func, t0, t1, s2, s3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	short s3
PREINIT:
	char * (*func)( char *, char *, short, short );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tttsf( c_func, t0, t1, s2, f3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	float f3
PREINIT:
	char * (*func)( char *, char *, short, float );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tttst( c_func, t0, t1, s2, t3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	char * t3
PREINIT:
	char * (*func)( char *, char *, short, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tttsi( c_func, t0, t1, s2, i3 )
	SV* c_func
	char * t0
	char * t1
	short s2
	int i3
PREINIT:
	char * (*func)( char *, char *, short, int );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tttfd( c_func, t0, t1, f2, d3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	double d3
PREINIT:
	char * (*func)( char *, char *, float, double );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tttfs( c_func, t0, t1, f2, s3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	short s3
PREINIT:
	char * (*func)( char *, char *, float, short );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tttff( c_func, t0, t1, f2, f3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	float f3
PREINIT:
	char * (*func)( char *, char *, float, float );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tttft( c_func, t0, t1, f2, t3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	char * t3
PREINIT:
	char * (*func)( char *, char *, float, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tttfi( c_func, t0, t1, f2, i3 )
	SV* c_func
	char * t0
	char * t1
	float f2
	int i3
PREINIT:
	char * (*func)( char *, char *, float, int );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttttd( c_func, t0, t1, t2, d3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	double d3
PREINIT:
	char * (*func)( char *, char *, char *, double );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tttts( c_func, t0, t1, t2, s3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	short s3
PREINIT:
	char * (*func)( char *, char *, char *, short );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttttf( c_func, t0, t1, t2, f3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	float f3
PREINIT:
	char * (*func)( char *, char *, char *, float );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttttt( c_func, t0, t1, t2, t3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	char * t3
PREINIT:
	char * (*func)( char *, char *, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tttti( c_func, t0, t1, t2, i3 )
	SV* c_func
	char * t0
	char * t1
	char * t2
	int i3
PREINIT:
	char * (*func)( char *, char *, char *, int );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tttid( c_func, t0, t1, i2, d3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	double d3
PREINIT:
	char * (*func)( char *, char *, int, double );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tttis( c_func, t0, t1, i2, s3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	short s3
PREINIT:
	char * (*func)( char *, char *, int, short );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tttif( c_func, t0, t1, i2, f3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	float f3
PREINIT:
	char * (*func)( char *, char *, int, float );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tttit( c_func, t0, t1, i2, t3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	char * t3
PREINIT:
	char * (*func)( char *, char *, int, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tttii( c_func, t0, t1, i2, i3 )
	SV* c_func
	char * t0
	char * t1
	int i2
	int i3
PREINIT:
	char * (*func)( char *, char *, int, int );
CODE:
	func   = INT2PTR(char *(*)( char *, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, t1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttidd( c_func, t0, i1, d2, d3 )
	SV* c_func
	char * t0
	int i1
	double d2
	double d3
PREINIT:
	char * (*func)( char *, int, double, double );
CODE:
	func   = INT2PTR(char *(*)( char *, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttids( c_func, t0, i1, d2, s3 )
	SV* c_func
	char * t0
	int i1
	double d2
	short s3
PREINIT:
	char * (*func)( char *, int, double, short );
CODE:
	func   = INT2PTR(char *(*)( char *, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttidf( c_func, t0, i1, d2, f3 )
	SV* c_func
	char * t0
	int i1
	double d2
	float f3
PREINIT:
	char * (*func)( char *, int, double, float );
CODE:
	func   = INT2PTR(char *(*)( char *, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttidt( c_func, t0, i1, d2, t3 )
	SV* c_func
	char * t0
	int i1
	double d2
	char * t3
PREINIT:
	char * (*func)( char *, int, double, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttidi( c_func, t0, i1, d2, i3 )
	SV* c_func
	char * t0
	int i1
	double d2
	int i3
PREINIT:
	char * (*func)( char *, int, double, int );
CODE:
	func   = INT2PTR(char *(*)( char *, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttisd( c_func, t0, i1, s2, d3 )
	SV* c_func
	char * t0
	int i1
	short s2
	double d3
PREINIT:
	char * (*func)( char *, int, short, double );
CODE:
	func   = INT2PTR(char *(*)( char *, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttiss( c_func, t0, i1, s2, s3 )
	SV* c_func
	char * t0
	int i1
	short s2
	short s3
PREINIT:
	char * (*func)( char *, int, short, short );
CODE:
	func   = INT2PTR(char *(*)( char *, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttisf( c_func, t0, i1, s2, f3 )
	SV* c_func
	char * t0
	int i1
	short s2
	float f3
PREINIT:
	char * (*func)( char *, int, short, float );
CODE:
	func   = INT2PTR(char *(*)( char *, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttist( c_func, t0, i1, s2, t3 )
	SV* c_func
	char * t0
	int i1
	short s2
	char * t3
PREINIT:
	char * (*func)( char *, int, short, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttisi( c_func, t0, i1, s2, i3 )
	SV* c_func
	char * t0
	int i1
	short s2
	int i3
PREINIT:
	char * (*func)( char *, int, short, int );
CODE:
	func   = INT2PTR(char *(*)( char *, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttifd( c_func, t0, i1, f2, d3 )
	SV* c_func
	char * t0
	int i1
	float f2
	double d3
PREINIT:
	char * (*func)( char *, int, float, double );
CODE:
	func   = INT2PTR(char *(*)( char *, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttifs( c_func, t0, i1, f2, s3 )
	SV* c_func
	char * t0
	int i1
	float f2
	short s3
PREINIT:
	char * (*func)( char *, int, float, short );
CODE:
	func   = INT2PTR(char *(*)( char *, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttiff( c_func, t0, i1, f2, f3 )
	SV* c_func
	char * t0
	int i1
	float f2
	float f3
PREINIT:
	char * (*func)( char *, int, float, float );
CODE:
	func   = INT2PTR(char *(*)( char *, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttift( c_func, t0, i1, f2, t3 )
	SV* c_func
	char * t0
	int i1
	float f2
	char * t3
PREINIT:
	char * (*func)( char *, int, float, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttifi( c_func, t0, i1, f2, i3 )
	SV* c_func
	char * t0
	int i1
	float f2
	int i3
PREINIT:
	char * (*func)( char *, int, float, int );
CODE:
	func   = INT2PTR(char *(*)( char *, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttitd( c_func, t0, i1, t2, d3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	double d3
PREINIT:
	char * (*func)( char *, int, char *, double );
CODE:
	func   = INT2PTR(char *(*)( char *, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttits( c_func, t0, i1, t2, s3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	short s3
PREINIT:
	char * (*func)( char *, int, char *, short );
CODE:
	func   = INT2PTR(char *(*)( char *, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttitf( c_func, t0, i1, t2, f3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	float f3
PREINIT:
	char * (*func)( char *, int, char *, float );
CODE:
	func   = INT2PTR(char *(*)( char *, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttitt( c_func, t0, i1, t2, t3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	char * t3
PREINIT:
	char * (*func)( char *, int, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttiti( c_func, t0, i1, t2, i3 )
	SV* c_func
	char * t0
	int i1
	char * t2
	int i3
PREINIT:
	char * (*func)( char *, int, char *, int );
CODE:
	func   = INT2PTR(char *(*)( char *, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_ttiid( c_func, t0, i1, i2, d3 )
	SV* c_func
	char * t0
	int i1
	int i2
	double d3
PREINIT:
	char * (*func)( char *, int, int, double );
CODE:
	func   = INT2PTR(char *(*)( char *, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_ttiis( c_func, t0, i1, i2, s3 )
	SV* c_func
	char * t0
	int i1
	int i2
	short s3
PREINIT:
	char * (*func)( char *, int, int, short );
CODE:
	func   = INT2PTR(char *(*)( char *, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_ttiif( c_func, t0, i1, i2, f3 )
	SV* c_func
	char * t0
	int i1
	int i2
	float f3
PREINIT:
	char * (*func)( char *, int, int, float );
CODE:
	func   = INT2PTR(char *(*)( char *, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_ttiit( c_func, t0, i1, i2, t3 )
	SV* c_func
	char * t0
	int i1
	int i2
	char * t3
PREINIT:
	char * (*func)( char *, int, int, char * );
CODE:
	func   = INT2PTR(char *(*)( char *, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_ttiii( c_func, t0, i1, i2, i3 )
	SV* c_func
	char * t0
	int i1
	int i2
	int i3
PREINIT:
	char * (*func)( char *, int, int, int );
CODE:
	func   = INT2PTR(char *(*)( char *, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( t0, i1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiddd( c_func, i0, d1, d2, d3 )
	SV* c_func
	int i0
	double d1
	double d2
	double d3
PREINIT:
	char * (*func)( int, double, double, double );
CODE:
	func   = INT2PTR(char *(*)( int, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tidds( c_func, i0, d1, d2, s3 )
	SV* c_func
	int i0
	double d1
	double d2
	short s3
PREINIT:
	char * (*func)( int, double, double, short );
CODE:
	func   = INT2PTR(char *(*)( int, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tiddf( c_func, i0, d1, d2, f3 )
	SV* c_func
	int i0
	double d1
	double d2
	float f3
PREINIT:
	char * (*func)( int, double, double, float );
CODE:
	func   = INT2PTR(char *(*)( int, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tiddt( c_func, i0, d1, d2, t3 )
	SV* c_func
	int i0
	double d1
	double d2
	char * t3
PREINIT:
	char * (*func)( int, double, double, char * );
CODE:
	func   = INT2PTR(char *(*)( int, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tiddi( c_func, i0, d1, d2, i3 )
	SV* c_func
	int i0
	double d1
	double d2
	int i3
PREINIT:
	char * (*func)( int, double, double, int );
CODE:
	func   = INT2PTR(char *(*)( int, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tidsd( c_func, i0, d1, s2, d3 )
	SV* c_func
	int i0
	double d1
	short s2
	double d3
PREINIT:
	char * (*func)( int, double, short, double );
CODE:
	func   = INT2PTR(char *(*)( int, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tidss( c_func, i0, d1, s2, s3 )
	SV* c_func
	int i0
	double d1
	short s2
	short s3
PREINIT:
	char * (*func)( int, double, short, short );
CODE:
	func   = INT2PTR(char *(*)( int, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tidsf( c_func, i0, d1, s2, f3 )
	SV* c_func
	int i0
	double d1
	short s2
	float f3
PREINIT:
	char * (*func)( int, double, short, float );
CODE:
	func   = INT2PTR(char *(*)( int, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tidst( c_func, i0, d1, s2, t3 )
	SV* c_func
	int i0
	double d1
	short s2
	char * t3
PREINIT:
	char * (*func)( int, double, short, char * );
CODE:
	func   = INT2PTR(char *(*)( int, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tidsi( c_func, i0, d1, s2, i3 )
	SV* c_func
	int i0
	double d1
	short s2
	int i3
PREINIT:
	char * (*func)( int, double, short, int );
CODE:
	func   = INT2PTR(char *(*)( int, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tidfd( c_func, i0, d1, f2, d3 )
	SV* c_func
	int i0
	double d1
	float f2
	double d3
PREINIT:
	char * (*func)( int, double, float, double );
CODE:
	func   = INT2PTR(char *(*)( int, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tidfs( c_func, i0, d1, f2, s3 )
	SV* c_func
	int i0
	double d1
	float f2
	short s3
PREINIT:
	char * (*func)( int, double, float, short );
CODE:
	func   = INT2PTR(char *(*)( int, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tidff( c_func, i0, d1, f2, f3 )
	SV* c_func
	int i0
	double d1
	float f2
	float f3
PREINIT:
	char * (*func)( int, double, float, float );
CODE:
	func   = INT2PTR(char *(*)( int, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tidft( c_func, i0, d1, f2, t3 )
	SV* c_func
	int i0
	double d1
	float f2
	char * t3
PREINIT:
	char * (*func)( int, double, float, char * );
CODE:
	func   = INT2PTR(char *(*)( int, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tidfi( c_func, i0, d1, f2, i3 )
	SV* c_func
	int i0
	double d1
	float f2
	int i3
PREINIT:
	char * (*func)( int, double, float, int );
CODE:
	func   = INT2PTR(char *(*)( int, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tidtd( c_func, i0, d1, t2, d3 )
	SV* c_func
	int i0
	double d1
	char * t2
	double d3
PREINIT:
	char * (*func)( int, double, char *, double );
CODE:
	func   = INT2PTR(char *(*)( int, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tidts( c_func, i0, d1, t2, s3 )
	SV* c_func
	int i0
	double d1
	char * t2
	short s3
PREINIT:
	char * (*func)( int, double, char *, short );
CODE:
	func   = INT2PTR(char *(*)( int, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tidtf( c_func, i0, d1, t2, f3 )
	SV* c_func
	int i0
	double d1
	char * t2
	float f3
PREINIT:
	char * (*func)( int, double, char *, float );
CODE:
	func   = INT2PTR(char *(*)( int, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tidtt( c_func, i0, d1, t2, t3 )
	SV* c_func
	int i0
	double d1
	char * t2
	char * t3
PREINIT:
	char * (*func)( int, double, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( int, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tidti( c_func, i0, d1, t2, i3 )
	SV* c_func
	int i0
	double d1
	char * t2
	int i3
PREINIT:
	char * (*func)( int, double, char *, int );
CODE:
	func   = INT2PTR(char *(*)( int, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tidid( c_func, i0, d1, i2, d3 )
	SV* c_func
	int i0
	double d1
	int i2
	double d3
PREINIT:
	char * (*func)( int, double, int, double );
CODE:
	func   = INT2PTR(char *(*)( int, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tidis( c_func, i0, d1, i2, s3 )
	SV* c_func
	int i0
	double d1
	int i2
	short s3
PREINIT:
	char * (*func)( int, double, int, short );
CODE:
	func   = INT2PTR(char *(*)( int, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tidif( c_func, i0, d1, i2, f3 )
	SV* c_func
	int i0
	double d1
	int i2
	float f3
PREINIT:
	char * (*func)( int, double, int, float );
CODE:
	func   = INT2PTR(char *(*)( int, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tidit( c_func, i0, d1, i2, t3 )
	SV* c_func
	int i0
	double d1
	int i2
	char * t3
PREINIT:
	char * (*func)( int, double, int, char * );
CODE:
	func   = INT2PTR(char *(*)( int, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tidii( c_func, i0, d1, i2, i3 )
	SV* c_func
	int i0
	double d1
	int i2
	int i3
PREINIT:
	char * (*func)( int, double, int, int );
CODE:
	func   = INT2PTR(char *(*)( int, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, d1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tisdd( c_func, i0, s1, d2, d3 )
	SV* c_func
	int i0
	short s1
	double d2
	double d3
PREINIT:
	char * (*func)( int, short, double, double );
CODE:
	func   = INT2PTR(char *(*)( int, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tisds( c_func, i0, s1, d2, s3 )
	SV* c_func
	int i0
	short s1
	double d2
	short s3
PREINIT:
	char * (*func)( int, short, double, short );
CODE:
	func   = INT2PTR(char *(*)( int, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tisdf( c_func, i0, s1, d2, f3 )
	SV* c_func
	int i0
	short s1
	double d2
	float f3
PREINIT:
	char * (*func)( int, short, double, float );
CODE:
	func   = INT2PTR(char *(*)( int, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tisdt( c_func, i0, s1, d2, t3 )
	SV* c_func
	int i0
	short s1
	double d2
	char * t3
PREINIT:
	char * (*func)( int, short, double, char * );
CODE:
	func   = INT2PTR(char *(*)( int, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tisdi( c_func, i0, s1, d2, i3 )
	SV* c_func
	int i0
	short s1
	double d2
	int i3
PREINIT:
	char * (*func)( int, short, double, int );
CODE:
	func   = INT2PTR(char *(*)( int, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tissd( c_func, i0, s1, s2, d3 )
	SV* c_func
	int i0
	short s1
	short s2
	double d3
PREINIT:
	char * (*func)( int, short, short, double );
CODE:
	func   = INT2PTR(char *(*)( int, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tisss( c_func, i0, s1, s2, s3 )
	SV* c_func
	int i0
	short s1
	short s2
	short s3
PREINIT:
	char * (*func)( int, short, short, short );
CODE:
	func   = INT2PTR(char *(*)( int, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tissf( c_func, i0, s1, s2, f3 )
	SV* c_func
	int i0
	short s1
	short s2
	float f3
PREINIT:
	char * (*func)( int, short, short, float );
CODE:
	func   = INT2PTR(char *(*)( int, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tisst( c_func, i0, s1, s2, t3 )
	SV* c_func
	int i0
	short s1
	short s2
	char * t3
PREINIT:
	char * (*func)( int, short, short, char * );
CODE:
	func   = INT2PTR(char *(*)( int, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tissi( c_func, i0, s1, s2, i3 )
	SV* c_func
	int i0
	short s1
	short s2
	int i3
PREINIT:
	char * (*func)( int, short, short, int );
CODE:
	func   = INT2PTR(char *(*)( int, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tisfd( c_func, i0, s1, f2, d3 )
	SV* c_func
	int i0
	short s1
	float f2
	double d3
PREINIT:
	char * (*func)( int, short, float, double );
CODE:
	func   = INT2PTR(char *(*)( int, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tisfs( c_func, i0, s1, f2, s3 )
	SV* c_func
	int i0
	short s1
	float f2
	short s3
PREINIT:
	char * (*func)( int, short, float, short );
CODE:
	func   = INT2PTR(char *(*)( int, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tisff( c_func, i0, s1, f2, f3 )
	SV* c_func
	int i0
	short s1
	float f2
	float f3
PREINIT:
	char * (*func)( int, short, float, float );
CODE:
	func   = INT2PTR(char *(*)( int, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tisft( c_func, i0, s1, f2, t3 )
	SV* c_func
	int i0
	short s1
	float f2
	char * t3
PREINIT:
	char * (*func)( int, short, float, char * );
CODE:
	func   = INT2PTR(char *(*)( int, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tisfi( c_func, i0, s1, f2, i3 )
	SV* c_func
	int i0
	short s1
	float f2
	int i3
PREINIT:
	char * (*func)( int, short, float, int );
CODE:
	func   = INT2PTR(char *(*)( int, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tistd( c_func, i0, s1, t2, d3 )
	SV* c_func
	int i0
	short s1
	char * t2
	double d3
PREINIT:
	char * (*func)( int, short, char *, double );
CODE:
	func   = INT2PTR(char *(*)( int, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tists( c_func, i0, s1, t2, s3 )
	SV* c_func
	int i0
	short s1
	char * t2
	short s3
PREINIT:
	char * (*func)( int, short, char *, short );
CODE:
	func   = INT2PTR(char *(*)( int, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tistf( c_func, i0, s1, t2, f3 )
	SV* c_func
	int i0
	short s1
	char * t2
	float f3
PREINIT:
	char * (*func)( int, short, char *, float );
CODE:
	func   = INT2PTR(char *(*)( int, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tistt( c_func, i0, s1, t2, t3 )
	SV* c_func
	int i0
	short s1
	char * t2
	char * t3
PREINIT:
	char * (*func)( int, short, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( int, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tisti( c_func, i0, s1, t2, i3 )
	SV* c_func
	int i0
	short s1
	char * t2
	int i3
PREINIT:
	char * (*func)( int, short, char *, int );
CODE:
	func   = INT2PTR(char *(*)( int, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tisid( c_func, i0, s1, i2, d3 )
	SV* c_func
	int i0
	short s1
	int i2
	double d3
PREINIT:
	char * (*func)( int, short, int, double );
CODE:
	func   = INT2PTR(char *(*)( int, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tisis( c_func, i0, s1, i2, s3 )
	SV* c_func
	int i0
	short s1
	int i2
	short s3
PREINIT:
	char * (*func)( int, short, int, short );
CODE:
	func   = INT2PTR(char *(*)( int, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tisif( c_func, i0, s1, i2, f3 )
	SV* c_func
	int i0
	short s1
	int i2
	float f3
PREINIT:
	char * (*func)( int, short, int, float );
CODE:
	func   = INT2PTR(char *(*)( int, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tisit( c_func, i0, s1, i2, t3 )
	SV* c_func
	int i0
	short s1
	int i2
	char * t3
PREINIT:
	char * (*func)( int, short, int, char * );
CODE:
	func   = INT2PTR(char *(*)( int, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tisii( c_func, i0, s1, i2, i3 )
	SV* c_func
	int i0
	short s1
	int i2
	int i3
PREINIT:
	char * (*func)( int, short, int, int );
CODE:
	func   = INT2PTR(char *(*)( int, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, s1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tifdd( c_func, i0, f1, d2, d3 )
	SV* c_func
	int i0
	float f1
	double d2
	double d3
PREINIT:
	char * (*func)( int, float, double, double );
CODE:
	func   = INT2PTR(char *(*)( int, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tifds( c_func, i0, f1, d2, s3 )
	SV* c_func
	int i0
	float f1
	double d2
	short s3
PREINIT:
	char * (*func)( int, float, double, short );
CODE:
	func   = INT2PTR(char *(*)( int, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tifdf( c_func, i0, f1, d2, f3 )
	SV* c_func
	int i0
	float f1
	double d2
	float f3
PREINIT:
	char * (*func)( int, float, double, float );
CODE:
	func   = INT2PTR(char *(*)( int, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tifdt( c_func, i0, f1, d2, t3 )
	SV* c_func
	int i0
	float f1
	double d2
	char * t3
PREINIT:
	char * (*func)( int, float, double, char * );
CODE:
	func   = INT2PTR(char *(*)( int, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tifdi( c_func, i0, f1, d2, i3 )
	SV* c_func
	int i0
	float f1
	double d2
	int i3
PREINIT:
	char * (*func)( int, float, double, int );
CODE:
	func   = INT2PTR(char *(*)( int, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tifsd( c_func, i0, f1, s2, d3 )
	SV* c_func
	int i0
	float f1
	short s2
	double d3
PREINIT:
	char * (*func)( int, float, short, double );
CODE:
	func   = INT2PTR(char *(*)( int, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tifss( c_func, i0, f1, s2, s3 )
	SV* c_func
	int i0
	float f1
	short s2
	short s3
PREINIT:
	char * (*func)( int, float, short, short );
CODE:
	func   = INT2PTR(char *(*)( int, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tifsf( c_func, i0, f1, s2, f3 )
	SV* c_func
	int i0
	float f1
	short s2
	float f3
PREINIT:
	char * (*func)( int, float, short, float );
CODE:
	func   = INT2PTR(char *(*)( int, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tifst( c_func, i0, f1, s2, t3 )
	SV* c_func
	int i0
	float f1
	short s2
	char * t3
PREINIT:
	char * (*func)( int, float, short, char * );
CODE:
	func   = INT2PTR(char *(*)( int, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tifsi( c_func, i0, f1, s2, i3 )
	SV* c_func
	int i0
	float f1
	short s2
	int i3
PREINIT:
	char * (*func)( int, float, short, int );
CODE:
	func   = INT2PTR(char *(*)( int, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiffd( c_func, i0, f1, f2, d3 )
	SV* c_func
	int i0
	float f1
	float f2
	double d3
PREINIT:
	char * (*func)( int, float, float, double );
CODE:
	func   = INT2PTR(char *(*)( int, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tiffs( c_func, i0, f1, f2, s3 )
	SV* c_func
	int i0
	float f1
	float f2
	short s3
PREINIT:
	char * (*func)( int, float, float, short );
CODE:
	func   = INT2PTR(char *(*)( int, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tifff( c_func, i0, f1, f2, f3 )
	SV* c_func
	int i0
	float f1
	float f2
	float f3
PREINIT:
	char * (*func)( int, float, float, float );
CODE:
	func   = INT2PTR(char *(*)( int, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tifft( c_func, i0, f1, f2, t3 )
	SV* c_func
	int i0
	float f1
	float f2
	char * t3
PREINIT:
	char * (*func)( int, float, float, char * );
CODE:
	func   = INT2PTR(char *(*)( int, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tiffi( c_func, i0, f1, f2, i3 )
	SV* c_func
	int i0
	float f1
	float f2
	int i3
PREINIT:
	char * (*func)( int, float, float, int );
CODE:
	func   = INT2PTR(char *(*)( int, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiftd( c_func, i0, f1, t2, d3 )
	SV* c_func
	int i0
	float f1
	char * t2
	double d3
PREINIT:
	char * (*func)( int, float, char *, double );
CODE:
	func   = INT2PTR(char *(*)( int, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tifts( c_func, i0, f1, t2, s3 )
	SV* c_func
	int i0
	float f1
	char * t2
	short s3
PREINIT:
	char * (*func)( int, float, char *, short );
CODE:
	func   = INT2PTR(char *(*)( int, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tiftf( c_func, i0, f1, t2, f3 )
	SV* c_func
	int i0
	float f1
	char * t2
	float f3
PREINIT:
	char * (*func)( int, float, char *, float );
CODE:
	func   = INT2PTR(char *(*)( int, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tiftt( c_func, i0, f1, t2, t3 )
	SV* c_func
	int i0
	float f1
	char * t2
	char * t3
PREINIT:
	char * (*func)( int, float, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( int, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tifti( c_func, i0, f1, t2, i3 )
	SV* c_func
	int i0
	float f1
	char * t2
	int i3
PREINIT:
	char * (*func)( int, float, char *, int );
CODE:
	func   = INT2PTR(char *(*)( int, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tifid( c_func, i0, f1, i2, d3 )
	SV* c_func
	int i0
	float f1
	int i2
	double d3
PREINIT:
	char * (*func)( int, float, int, double );
CODE:
	func   = INT2PTR(char *(*)( int, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tifis( c_func, i0, f1, i2, s3 )
	SV* c_func
	int i0
	float f1
	int i2
	short s3
PREINIT:
	char * (*func)( int, float, int, short );
CODE:
	func   = INT2PTR(char *(*)( int, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tifif( c_func, i0, f1, i2, f3 )
	SV* c_func
	int i0
	float f1
	int i2
	float f3
PREINIT:
	char * (*func)( int, float, int, float );
CODE:
	func   = INT2PTR(char *(*)( int, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tifit( c_func, i0, f1, i2, t3 )
	SV* c_func
	int i0
	float f1
	int i2
	char * t3
PREINIT:
	char * (*func)( int, float, int, char * );
CODE:
	func   = INT2PTR(char *(*)( int, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tifii( c_func, i0, f1, i2, i3 )
	SV* c_func
	int i0
	float f1
	int i2
	int i3
PREINIT:
	char * (*func)( int, float, int, int );
CODE:
	func   = INT2PTR(char *(*)( int, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, f1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_titdd( c_func, i0, t1, d2, d3 )
	SV* c_func
	int i0
	char * t1
	double d2
	double d3
PREINIT:
	char * (*func)( int, char *, double, double );
CODE:
	func   = INT2PTR(char *(*)( int, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_titds( c_func, i0, t1, d2, s3 )
	SV* c_func
	int i0
	char * t1
	double d2
	short s3
PREINIT:
	char * (*func)( int, char *, double, short );
CODE:
	func   = INT2PTR(char *(*)( int, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_titdf( c_func, i0, t1, d2, f3 )
	SV* c_func
	int i0
	char * t1
	double d2
	float f3
PREINIT:
	char * (*func)( int, char *, double, float );
CODE:
	func   = INT2PTR(char *(*)( int, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_titdt( c_func, i0, t1, d2, t3 )
	SV* c_func
	int i0
	char * t1
	double d2
	char * t3
PREINIT:
	char * (*func)( int, char *, double, char * );
CODE:
	func   = INT2PTR(char *(*)( int, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_titdi( c_func, i0, t1, d2, i3 )
	SV* c_func
	int i0
	char * t1
	double d2
	int i3
PREINIT:
	char * (*func)( int, char *, double, int );
CODE:
	func   = INT2PTR(char *(*)( int, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_titsd( c_func, i0, t1, s2, d3 )
	SV* c_func
	int i0
	char * t1
	short s2
	double d3
PREINIT:
	char * (*func)( int, char *, short, double );
CODE:
	func   = INT2PTR(char *(*)( int, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_titss( c_func, i0, t1, s2, s3 )
	SV* c_func
	int i0
	char * t1
	short s2
	short s3
PREINIT:
	char * (*func)( int, char *, short, short );
CODE:
	func   = INT2PTR(char *(*)( int, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_titsf( c_func, i0, t1, s2, f3 )
	SV* c_func
	int i0
	char * t1
	short s2
	float f3
PREINIT:
	char * (*func)( int, char *, short, float );
CODE:
	func   = INT2PTR(char *(*)( int, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_titst( c_func, i0, t1, s2, t3 )
	SV* c_func
	int i0
	char * t1
	short s2
	char * t3
PREINIT:
	char * (*func)( int, char *, short, char * );
CODE:
	func   = INT2PTR(char *(*)( int, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_titsi( c_func, i0, t1, s2, i3 )
	SV* c_func
	int i0
	char * t1
	short s2
	int i3
PREINIT:
	char * (*func)( int, char *, short, int );
CODE:
	func   = INT2PTR(char *(*)( int, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_titfd( c_func, i0, t1, f2, d3 )
	SV* c_func
	int i0
	char * t1
	float f2
	double d3
PREINIT:
	char * (*func)( int, char *, float, double );
CODE:
	func   = INT2PTR(char *(*)( int, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_titfs( c_func, i0, t1, f2, s3 )
	SV* c_func
	int i0
	char * t1
	float f2
	short s3
PREINIT:
	char * (*func)( int, char *, float, short );
CODE:
	func   = INT2PTR(char *(*)( int, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_titff( c_func, i0, t1, f2, f3 )
	SV* c_func
	int i0
	char * t1
	float f2
	float f3
PREINIT:
	char * (*func)( int, char *, float, float );
CODE:
	func   = INT2PTR(char *(*)( int, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_titft( c_func, i0, t1, f2, t3 )
	SV* c_func
	int i0
	char * t1
	float f2
	char * t3
PREINIT:
	char * (*func)( int, char *, float, char * );
CODE:
	func   = INT2PTR(char *(*)( int, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_titfi( c_func, i0, t1, f2, i3 )
	SV* c_func
	int i0
	char * t1
	float f2
	int i3
PREINIT:
	char * (*func)( int, char *, float, int );
CODE:
	func   = INT2PTR(char *(*)( int, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tittd( c_func, i0, t1, t2, d3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	double d3
PREINIT:
	char * (*func)( int, char *, char *, double );
CODE:
	func   = INT2PTR(char *(*)( int, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_titts( c_func, i0, t1, t2, s3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	short s3
PREINIT:
	char * (*func)( int, char *, char *, short );
CODE:
	func   = INT2PTR(char *(*)( int, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tittf( c_func, i0, t1, t2, f3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	float f3
PREINIT:
	char * (*func)( int, char *, char *, float );
CODE:
	func   = INT2PTR(char *(*)( int, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tittt( c_func, i0, t1, t2, t3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	char * t3
PREINIT:
	char * (*func)( int, char *, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( int, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_titti( c_func, i0, t1, t2, i3 )
	SV* c_func
	int i0
	char * t1
	char * t2
	int i3
PREINIT:
	char * (*func)( int, char *, char *, int );
CODE:
	func   = INT2PTR(char *(*)( int, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_titid( c_func, i0, t1, i2, d3 )
	SV* c_func
	int i0
	char * t1
	int i2
	double d3
PREINIT:
	char * (*func)( int, char *, int, double );
CODE:
	func   = INT2PTR(char *(*)( int, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_titis( c_func, i0, t1, i2, s3 )
	SV* c_func
	int i0
	char * t1
	int i2
	short s3
PREINIT:
	char * (*func)( int, char *, int, short );
CODE:
	func   = INT2PTR(char *(*)( int, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_titif( c_func, i0, t1, i2, f3 )
	SV* c_func
	int i0
	char * t1
	int i2
	float f3
PREINIT:
	char * (*func)( int, char *, int, float );
CODE:
	func   = INT2PTR(char *(*)( int, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_titit( c_func, i0, t1, i2, t3 )
	SV* c_func
	int i0
	char * t1
	int i2
	char * t3
PREINIT:
	char * (*func)( int, char *, int, char * );
CODE:
	func   = INT2PTR(char *(*)( int, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_titii( c_func, i0, t1, i2, i3 )
	SV* c_func
	int i0
	char * t1
	int i2
	int i3
PREINIT:
	char * (*func)( int, char *, int, int );
CODE:
	func   = INT2PTR(char *(*)( int, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, t1, i2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiidd( c_func, i0, i1, d2, d3 )
	SV* c_func
	int i0
	int i1
	double d2
	double d3
PREINIT:
	char * (*func)( int, int, double, double );
CODE:
	func   = INT2PTR(char *(*)( int, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, d3 );
OUTPUT:
	RETVAL

char *
nci_tiids( c_func, i0, i1, d2, s3 )
	SV* c_func
	int i0
	int i1
	double d2
	short s3
PREINIT:
	char * (*func)( int, int, double, short );
CODE:
	func   = INT2PTR(char *(*)( int, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, s3 );
OUTPUT:
	RETVAL

char *
nci_tiidf( c_func, i0, i1, d2, f3 )
	SV* c_func
	int i0
	int i1
	double d2
	float f3
PREINIT:
	char * (*func)( int, int, double, float );
CODE:
	func   = INT2PTR(char *(*)( int, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, f3 );
OUTPUT:
	RETVAL

char *
nci_tiidt( c_func, i0, i1, d2, t3 )
	SV* c_func
	int i0
	int i1
	double d2
	char * t3
PREINIT:
	char * (*func)( int, int, double, char * );
CODE:
	func   = INT2PTR(char *(*)( int, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, t3 );
OUTPUT:
	RETVAL

char *
nci_tiidi( c_func, i0, i1, d2, i3 )
	SV* c_func
	int i0
	int i1
	double d2
	int i3
PREINIT:
	char * (*func)( int, int, double, int );
CODE:
	func   = INT2PTR(char *(*)( int, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, d2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiisd( c_func, i0, i1, s2, d3 )
	SV* c_func
	int i0
	int i1
	short s2
	double d3
PREINIT:
	char * (*func)( int, int, short, double );
CODE:
	func   = INT2PTR(char *(*)( int, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, d3 );
OUTPUT:
	RETVAL

char *
nci_tiiss( c_func, i0, i1, s2, s3 )
	SV* c_func
	int i0
	int i1
	short s2
	short s3
PREINIT:
	char * (*func)( int, int, short, short );
CODE:
	func   = INT2PTR(char *(*)( int, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, s3 );
OUTPUT:
	RETVAL

char *
nci_tiisf( c_func, i0, i1, s2, f3 )
	SV* c_func
	int i0
	int i1
	short s2
	float f3
PREINIT:
	char * (*func)( int, int, short, float );
CODE:
	func   = INT2PTR(char *(*)( int, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, f3 );
OUTPUT:
	RETVAL

char *
nci_tiist( c_func, i0, i1, s2, t3 )
	SV* c_func
	int i0
	int i1
	short s2
	char * t3
PREINIT:
	char * (*func)( int, int, short, char * );
CODE:
	func   = INT2PTR(char *(*)( int, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, t3 );
OUTPUT:
	RETVAL

char *
nci_tiisi( c_func, i0, i1, s2, i3 )
	SV* c_func
	int i0
	int i1
	short s2
	int i3
PREINIT:
	char * (*func)( int, int, short, int );
CODE:
	func   = INT2PTR(char *(*)( int, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, s2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiifd( c_func, i0, i1, f2, d3 )
	SV* c_func
	int i0
	int i1
	float f2
	double d3
PREINIT:
	char * (*func)( int, int, float, double );
CODE:
	func   = INT2PTR(char *(*)( int, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, d3 );
OUTPUT:
	RETVAL

char *
nci_tiifs( c_func, i0, i1, f2, s3 )
	SV* c_func
	int i0
	int i1
	float f2
	short s3
PREINIT:
	char * (*func)( int, int, float, short );
CODE:
	func   = INT2PTR(char *(*)( int, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, s3 );
OUTPUT:
	RETVAL

char *
nci_tiiff( c_func, i0, i1, f2, f3 )
	SV* c_func
	int i0
	int i1
	float f2
	float f3
PREINIT:
	char * (*func)( int, int, float, float );
CODE:
	func   = INT2PTR(char *(*)( int, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, f3 );
OUTPUT:
	RETVAL

char *
nci_tiift( c_func, i0, i1, f2, t3 )
	SV* c_func
	int i0
	int i1
	float f2
	char * t3
PREINIT:
	char * (*func)( int, int, float, char * );
CODE:
	func   = INT2PTR(char *(*)( int, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, t3 );
OUTPUT:
	RETVAL

char *
nci_tiifi( c_func, i0, i1, f2, i3 )
	SV* c_func
	int i0
	int i1
	float f2
	int i3
PREINIT:
	char * (*func)( int, int, float, int );
CODE:
	func   = INT2PTR(char *(*)( int, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, f2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiitd( c_func, i0, i1, t2, d3 )
	SV* c_func
	int i0
	int i1
	char * t2
	double d3
PREINIT:
	char * (*func)( int, int, char *, double );
CODE:
	func   = INT2PTR(char *(*)( int, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, d3 );
OUTPUT:
	RETVAL

char *
nci_tiits( c_func, i0, i1, t2, s3 )
	SV* c_func
	int i0
	int i1
	char * t2
	short s3
PREINIT:
	char * (*func)( int, int, char *, short );
CODE:
	func   = INT2PTR(char *(*)( int, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, s3 );
OUTPUT:
	RETVAL

char *
nci_tiitf( c_func, i0, i1, t2, f3 )
	SV* c_func
	int i0
	int i1
	char * t2
	float f3
PREINIT:
	char * (*func)( int, int, char *, float );
CODE:
	func   = INT2PTR(char *(*)( int, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, f3 );
OUTPUT:
	RETVAL

char *
nci_tiitt( c_func, i0, i1, t2, t3 )
	SV* c_func
	int i0
	int i1
	char * t2
	char * t3
PREINIT:
	char * (*func)( int, int, char *, char * );
CODE:
	func   = INT2PTR(char *(*)( int, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, t3 );
OUTPUT:
	RETVAL

char *
nci_tiiti( c_func, i0, i1, t2, i3 )
	SV* c_func
	int i0
	int i1
	char * t2
	int i3
PREINIT:
	char * (*func)( int, int, char *, int );
CODE:
	func   = INT2PTR(char *(*)( int, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, t2, i3 );
OUTPUT:
	RETVAL

char *
nci_tiiid( c_func, i0, i1, i2, d3 )
	SV* c_func
	int i0
	int i1
	int i2
	double d3
PREINIT:
	char * (*func)( int, int, int, double );
CODE:
	func   = INT2PTR(char *(*)( int, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, d3 );
OUTPUT:
	RETVAL

char *
nci_tiiis( c_func, i0, i1, i2, s3 )
	SV* c_func
	int i0
	int i1
	int i2
	short s3
PREINIT:
	char * (*func)( int, int, int, short );
CODE:
	func   = INT2PTR(char *(*)( int, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, s3 );
OUTPUT:
	RETVAL

char *
nci_tiiif( c_func, i0, i1, i2, f3 )
	SV* c_func
	int i0
	int i1
	int i2
	float f3
PREINIT:
	char * (*func)( int, int, int, float );
CODE:
	func   = INT2PTR(char *(*)( int, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, f3 );
OUTPUT:
	RETVAL

char *
nci_tiiit( c_func, i0, i1, i2, t3 )
	SV* c_func
	int i0
	int i1
	int i2
	char * t3
PREINIT:
	char * (*func)( int, int, int, char * );
CODE:
	func   = INT2PTR(char *(*)( int, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, t3 );
OUTPUT:
	RETVAL

char *
nci_tiiii( c_func, i0, i1, i2, i3 )
	SV* c_func
	int i0
	int i1
	int i2
	int i3
PREINIT:
	char * (*func)( int, int, int, int );
CODE:
	func   = INT2PTR(char *(*)( int, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( i0, i1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_idddd( c_func, d0, d1, d2, d3 )
	SV* c_func
	double d0
	double d1
	double d2
	double d3
PREINIT:
	int (*func)( double, double, double, double );
CODE:
	func   = INT2PTR(int(*)( double, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_iddds( c_func, d0, d1, d2, s3 )
	SV* c_func
	double d0
	double d1
	double d2
	short s3
PREINIT:
	int (*func)( double, double, double, short );
CODE:
	func   = INT2PTR(int(*)( double, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_idddf( c_func, d0, d1, d2, f3 )
	SV* c_func
	double d0
	double d1
	double d2
	float f3
PREINIT:
	int (*func)( double, double, double, float );
CODE:
	func   = INT2PTR(int(*)( double, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_idddt( c_func, d0, d1, d2, t3 )
	SV* c_func
	double d0
	double d1
	double d2
	char * t3
PREINIT:
	int (*func)( double, double, double, char * );
CODE:
	func   = INT2PTR(int(*)( double, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_idddi( c_func, d0, d1, d2, i3 )
	SV* c_func
	double d0
	double d1
	double d2
	int i3
PREINIT:
	int (*func)( double, double, double, int );
CODE:
	func   = INT2PTR(int(*)( double, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_iddsd( c_func, d0, d1, s2, d3 )
	SV* c_func
	double d0
	double d1
	short s2
	double d3
PREINIT:
	int (*func)( double, double, short, double );
CODE:
	func   = INT2PTR(int(*)( double, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_iddss( c_func, d0, d1, s2, s3 )
	SV* c_func
	double d0
	double d1
	short s2
	short s3
PREINIT:
	int (*func)( double, double, short, short );
CODE:
	func   = INT2PTR(int(*)( double, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_iddsf( c_func, d0, d1, s2, f3 )
	SV* c_func
	double d0
	double d1
	short s2
	float f3
PREINIT:
	int (*func)( double, double, short, float );
CODE:
	func   = INT2PTR(int(*)( double, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_iddst( c_func, d0, d1, s2, t3 )
	SV* c_func
	double d0
	double d1
	short s2
	char * t3
PREINIT:
	int (*func)( double, double, short, char * );
CODE:
	func   = INT2PTR(int(*)( double, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_iddsi( c_func, d0, d1, s2, i3 )
	SV* c_func
	double d0
	double d1
	short s2
	int i3
PREINIT:
	int (*func)( double, double, short, int );
CODE:
	func   = INT2PTR(int(*)( double, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_iddfd( c_func, d0, d1, f2, d3 )
	SV* c_func
	double d0
	double d1
	float f2
	double d3
PREINIT:
	int (*func)( double, double, float, double );
CODE:
	func   = INT2PTR(int(*)( double, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_iddfs( c_func, d0, d1, f2, s3 )
	SV* c_func
	double d0
	double d1
	float f2
	short s3
PREINIT:
	int (*func)( double, double, float, short );
CODE:
	func   = INT2PTR(int(*)( double, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_iddff( c_func, d0, d1, f2, f3 )
	SV* c_func
	double d0
	double d1
	float f2
	float f3
PREINIT:
	int (*func)( double, double, float, float );
CODE:
	func   = INT2PTR(int(*)( double, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_iddft( c_func, d0, d1, f2, t3 )
	SV* c_func
	double d0
	double d1
	float f2
	char * t3
PREINIT:
	int (*func)( double, double, float, char * );
CODE:
	func   = INT2PTR(int(*)( double, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_iddfi( c_func, d0, d1, f2, i3 )
	SV* c_func
	double d0
	double d1
	float f2
	int i3
PREINIT:
	int (*func)( double, double, float, int );
CODE:
	func   = INT2PTR(int(*)( double, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_iddtd( c_func, d0, d1, t2, d3 )
	SV* c_func
	double d0
	double d1
	char * t2
	double d3
PREINIT:
	int (*func)( double, double, char *, double );
CODE:
	func   = INT2PTR(int(*)( double, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_iddts( c_func, d0, d1, t2, s3 )
	SV* c_func
	double d0
	double d1
	char * t2
	short s3
PREINIT:
	int (*func)( double, double, char *, short );
CODE:
	func   = INT2PTR(int(*)( double, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_iddtf( c_func, d0, d1, t2, f3 )
	SV* c_func
	double d0
	double d1
	char * t2
	float f3
PREINIT:
	int (*func)( double, double, char *, float );
CODE:
	func   = INT2PTR(int(*)( double, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_iddtt( c_func, d0, d1, t2, t3 )
	SV* c_func
	double d0
	double d1
	char * t2
	char * t3
PREINIT:
	int (*func)( double, double, char *, char * );
CODE:
	func   = INT2PTR(int(*)( double, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_iddti( c_func, d0, d1, t2, i3 )
	SV* c_func
	double d0
	double d1
	char * t2
	int i3
PREINIT:
	int (*func)( double, double, char *, int );
CODE:
	func   = INT2PTR(int(*)( double, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_iddid( c_func, d0, d1, i2, d3 )
	SV* c_func
	double d0
	double d1
	int i2
	double d3
PREINIT:
	int (*func)( double, double, int, double );
CODE:
	func   = INT2PTR(int(*)( double, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_iddis( c_func, d0, d1, i2, s3 )
	SV* c_func
	double d0
	double d1
	int i2
	short s3
PREINIT:
	int (*func)( double, double, int, short );
CODE:
	func   = INT2PTR(int(*)( double, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_iddif( c_func, d0, d1, i2, f3 )
	SV* c_func
	double d0
	double d1
	int i2
	float f3
PREINIT:
	int (*func)( double, double, int, float );
CODE:
	func   = INT2PTR(int(*)( double, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_iddit( c_func, d0, d1, i2, t3 )
	SV* c_func
	double d0
	double d1
	int i2
	char * t3
PREINIT:
	int (*func)( double, double, int, char * );
CODE:
	func   = INT2PTR(int(*)( double, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_iddii( c_func, d0, d1, i2, i3 )
	SV* c_func
	double d0
	double d1
	int i2
	int i3
PREINIT:
	int (*func)( double, double, int, int );
CODE:
	func   = INT2PTR(int(*)( double, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, d1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_idsdd( c_func, d0, s1, d2, d3 )
	SV* c_func
	double d0
	short s1
	double d2
	double d3
PREINIT:
	int (*func)( double, short, double, double );
CODE:
	func   = INT2PTR(int(*)( double, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_idsds( c_func, d0, s1, d2, s3 )
	SV* c_func
	double d0
	short s1
	double d2
	short s3
PREINIT:
	int (*func)( double, short, double, short );
CODE:
	func   = INT2PTR(int(*)( double, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_idsdf( c_func, d0, s1, d2, f3 )
	SV* c_func
	double d0
	short s1
	double d2
	float f3
PREINIT:
	int (*func)( double, short, double, float );
CODE:
	func   = INT2PTR(int(*)( double, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_idsdt( c_func, d0, s1, d2, t3 )
	SV* c_func
	double d0
	short s1
	double d2
	char * t3
PREINIT:
	int (*func)( double, short, double, char * );
CODE:
	func   = INT2PTR(int(*)( double, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_idsdi( c_func, d0, s1, d2, i3 )
	SV* c_func
	double d0
	short s1
	double d2
	int i3
PREINIT:
	int (*func)( double, short, double, int );
CODE:
	func   = INT2PTR(int(*)( double, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_idssd( c_func, d0, s1, s2, d3 )
	SV* c_func
	double d0
	short s1
	short s2
	double d3
PREINIT:
	int (*func)( double, short, short, double );
CODE:
	func   = INT2PTR(int(*)( double, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_idsss( c_func, d0, s1, s2, s3 )
	SV* c_func
	double d0
	short s1
	short s2
	short s3
PREINIT:
	int (*func)( double, short, short, short );
CODE:
	func   = INT2PTR(int(*)( double, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_idssf( c_func, d0, s1, s2, f3 )
	SV* c_func
	double d0
	short s1
	short s2
	float f3
PREINIT:
	int (*func)( double, short, short, float );
CODE:
	func   = INT2PTR(int(*)( double, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_idsst( c_func, d0, s1, s2, t3 )
	SV* c_func
	double d0
	short s1
	short s2
	char * t3
PREINIT:
	int (*func)( double, short, short, char * );
CODE:
	func   = INT2PTR(int(*)( double, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_idssi( c_func, d0, s1, s2, i3 )
	SV* c_func
	double d0
	short s1
	short s2
	int i3
PREINIT:
	int (*func)( double, short, short, int );
CODE:
	func   = INT2PTR(int(*)( double, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_idsfd( c_func, d0, s1, f2, d3 )
	SV* c_func
	double d0
	short s1
	float f2
	double d3
PREINIT:
	int (*func)( double, short, float, double );
CODE:
	func   = INT2PTR(int(*)( double, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_idsfs( c_func, d0, s1, f2, s3 )
	SV* c_func
	double d0
	short s1
	float f2
	short s3
PREINIT:
	int (*func)( double, short, float, short );
CODE:
	func   = INT2PTR(int(*)( double, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_idsff( c_func, d0, s1, f2, f3 )
	SV* c_func
	double d0
	short s1
	float f2
	float f3
PREINIT:
	int (*func)( double, short, float, float );
CODE:
	func   = INT2PTR(int(*)( double, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_idsft( c_func, d0, s1, f2, t3 )
	SV* c_func
	double d0
	short s1
	float f2
	char * t3
PREINIT:
	int (*func)( double, short, float, char * );
CODE:
	func   = INT2PTR(int(*)( double, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_idsfi( c_func, d0, s1, f2, i3 )
	SV* c_func
	double d0
	short s1
	float f2
	int i3
PREINIT:
	int (*func)( double, short, float, int );
CODE:
	func   = INT2PTR(int(*)( double, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_idstd( c_func, d0, s1, t2, d3 )
	SV* c_func
	double d0
	short s1
	char * t2
	double d3
PREINIT:
	int (*func)( double, short, char *, double );
CODE:
	func   = INT2PTR(int(*)( double, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_idsts( c_func, d0, s1, t2, s3 )
	SV* c_func
	double d0
	short s1
	char * t2
	short s3
PREINIT:
	int (*func)( double, short, char *, short );
CODE:
	func   = INT2PTR(int(*)( double, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_idstf( c_func, d0, s1, t2, f3 )
	SV* c_func
	double d0
	short s1
	char * t2
	float f3
PREINIT:
	int (*func)( double, short, char *, float );
CODE:
	func   = INT2PTR(int(*)( double, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_idstt( c_func, d0, s1, t2, t3 )
	SV* c_func
	double d0
	short s1
	char * t2
	char * t3
PREINIT:
	int (*func)( double, short, char *, char * );
CODE:
	func   = INT2PTR(int(*)( double, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_idsti( c_func, d0, s1, t2, i3 )
	SV* c_func
	double d0
	short s1
	char * t2
	int i3
PREINIT:
	int (*func)( double, short, char *, int );
CODE:
	func   = INT2PTR(int(*)( double, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_idsid( c_func, d0, s1, i2, d3 )
	SV* c_func
	double d0
	short s1
	int i2
	double d3
PREINIT:
	int (*func)( double, short, int, double );
CODE:
	func   = INT2PTR(int(*)( double, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_idsis( c_func, d0, s1, i2, s3 )
	SV* c_func
	double d0
	short s1
	int i2
	short s3
PREINIT:
	int (*func)( double, short, int, short );
CODE:
	func   = INT2PTR(int(*)( double, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_idsif( c_func, d0, s1, i2, f3 )
	SV* c_func
	double d0
	short s1
	int i2
	float f3
PREINIT:
	int (*func)( double, short, int, float );
CODE:
	func   = INT2PTR(int(*)( double, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_idsit( c_func, d0, s1, i2, t3 )
	SV* c_func
	double d0
	short s1
	int i2
	char * t3
PREINIT:
	int (*func)( double, short, int, char * );
CODE:
	func   = INT2PTR(int(*)( double, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_idsii( c_func, d0, s1, i2, i3 )
	SV* c_func
	double d0
	short s1
	int i2
	int i3
PREINIT:
	int (*func)( double, short, int, int );
CODE:
	func   = INT2PTR(int(*)( double, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, s1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_idfdd( c_func, d0, f1, d2, d3 )
	SV* c_func
	double d0
	float f1
	double d2
	double d3
PREINIT:
	int (*func)( double, float, double, double );
CODE:
	func   = INT2PTR(int(*)( double, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_idfds( c_func, d0, f1, d2, s3 )
	SV* c_func
	double d0
	float f1
	double d2
	short s3
PREINIT:
	int (*func)( double, float, double, short );
CODE:
	func   = INT2PTR(int(*)( double, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_idfdf( c_func, d0, f1, d2, f3 )
	SV* c_func
	double d0
	float f1
	double d2
	float f3
PREINIT:
	int (*func)( double, float, double, float );
CODE:
	func   = INT2PTR(int(*)( double, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_idfdt( c_func, d0, f1, d2, t3 )
	SV* c_func
	double d0
	float f1
	double d2
	char * t3
PREINIT:
	int (*func)( double, float, double, char * );
CODE:
	func   = INT2PTR(int(*)( double, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_idfdi( c_func, d0, f1, d2, i3 )
	SV* c_func
	double d0
	float f1
	double d2
	int i3
PREINIT:
	int (*func)( double, float, double, int );
CODE:
	func   = INT2PTR(int(*)( double, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_idfsd( c_func, d0, f1, s2, d3 )
	SV* c_func
	double d0
	float f1
	short s2
	double d3
PREINIT:
	int (*func)( double, float, short, double );
CODE:
	func   = INT2PTR(int(*)( double, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_idfss( c_func, d0, f1, s2, s3 )
	SV* c_func
	double d0
	float f1
	short s2
	short s3
PREINIT:
	int (*func)( double, float, short, short );
CODE:
	func   = INT2PTR(int(*)( double, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_idfsf( c_func, d0, f1, s2, f3 )
	SV* c_func
	double d0
	float f1
	short s2
	float f3
PREINIT:
	int (*func)( double, float, short, float );
CODE:
	func   = INT2PTR(int(*)( double, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_idfst( c_func, d0, f1, s2, t3 )
	SV* c_func
	double d0
	float f1
	short s2
	char * t3
PREINIT:
	int (*func)( double, float, short, char * );
CODE:
	func   = INT2PTR(int(*)( double, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_idfsi( c_func, d0, f1, s2, i3 )
	SV* c_func
	double d0
	float f1
	short s2
	int i3
PREINIT:
	int (*func)( double, float, short, int );
CODE:
	func   = INT2PTR(int(*)( double, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_idffd( c_func, d0, f1, f2, d3 )
	SV* c_func
	double d0
	float f1
	float f2
	double d3
PREINIT:
	int (*func)( double, float, float, double );
CODE:
	func   = INT2PTR(int(*)( double, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_idffs( c_func, d0, f1, f2, s3 )
	SV* c_func
	double d0
	float f1
	float f2
	short s3
PREINIT:
	int (*func)( double, float, float, short );
CODE:
	func   = INT2PTR(int(*)( double, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_idfff( c_func, d0, f1, f2, f3 )
	SV* c_func
	double d0
	float f1
	float f2
	float f3
PREINIT:
	int (*func)( double, float, float, float );
CODE:
	func   = INT2PTR(int(*)( double, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_idfft( c_func, d0, f1, f2, t3 )
	SV* c_func
	double d0
	float f1
	float f2
	char * t3
PREINIT:
	int (*func)( double, float, float, char * );
CODE:
	func   = INT2PTR(int(*)( double, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_idffi( c_func, d0, f1, f2, i3 )
	SV* c_func
	double d0
	float f1
	float f2
	int i3
PREINIT:
	int (*func)( double, float, float, int );
CODE:
	func   = INT2PTR(int(*)( double, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_idftd( c_func, d0, f1, t2, d3 )
	SV* c_func
	double d0
	float f1
	char * t2
	double d3
PREINIT:
	int (*func)( double, float, char *, double );
CODE:
	func   = INT2PTR(int(*)( double, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_idfts( c_func, d0, f1, t2, s3 )
	SV* c_func
	double d0
	float f1
	char * t2
	short s3
PREINIT:
	int (*func)( double, float, char *, short );
CODE:
	func   = INT2PTR(int(*)( double, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_idftf( c_func, d0, f1, t2, f3 )
	SV* c_func
	double d0
	float f1
	char * t2
	float f3
PREINIT:
	int (*func)( double, float, char *, float );
CODE:
	func   = INT2PTR(int(*)( double, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_idftt( c_func, d0, f1, t2, t3 )
	SV* c_func
	double d0
	float f1
	char * t2
	char * t3
PREINIT:
	int (*func)( double, float, char *, char * );
CODE:
	func   = INT2PTR(int(*)( double, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_idfti( c_func, d0, f1, t2, i3 )
	SV* c_func
	double d0
	float f1
	char * t2
	int i3
PREINIT:
	int (*func)( double, float, char *, int );
CODE:
	func   = INT2PTR(int(*)( double, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_idfid( c_func, d0, f1, i2, d3 )
	SV* c_func
	double d0
	float f1
	int i2
	double d3
PREINIT:
	int (*func)( double, float, int, double );
CODE:
	func   = INT2PTR(int(*)( double, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_idfis( c_func, d0, f1, i2, s3 )
	SV* c_func
	double d0
	float f1
	int i2
	short s3
PREINIT:
	int (*func)( double, float, int, short );
CODE:
	func   = INT2PTR(int(*)( double, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_idfif( c_func, d0, f1, i2, f3 )
	SV* c_func
	double d0
	float f1
	int i2
	float f3
PREINIT:
	int (*func)( double, float, int, float );
CODE:
	func   = INT2PTR(int(*)( double, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_idfit( c_func, d0, f1, i2, t3 )
	SV* c_func
	double d0
	float f1
	int i2
	char * t3
PREINIT:
	int (*func)( double, float, int, char * );
CODE:
	func   = INT2PTR(int(*)( double, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_idfii( c_func, d0, f1, i2, i3 )
	SV* c_func
	double d0
	float f1
	int i2
	int i3
PREINIT:
	int (*func)( double, float, int, int );
CODE:
	func   = INT2PTR(int(*)( double, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, f1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_idtdd( c_func, d0, t1, d2, d3 )
	SV* c_func
	double d0
	char * t1
	double d2
	double d3
PREINIT:
	int (*func)( double, char *, double, double );
CODE:
	func   = INT2PTR(int(*)( double, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_idtds( c_func, d0, t1, d2, s3 )
	SV* c_func
	double d0
	char * t1
	double d2
	short s3
PREINIT:
	int (*func)( double, char *, double, short );
CODE:
	func   = INT2PTR(int(*)( double, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_idtdf( c_func, d0, t1, d2, f3 )
	SV* c_func
	double d0
	char * t1
	double d2
	float f3
PREINIT:
	int (*func)( double, char *, double, float );
CODE:
	func   = INT2PTR(int(*)( double, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_idtdt( c_func, d0, t1, d2, t3 )
	SV* c_func
	double d0
	char * t1
	double d2
	char * t3
PREINIT:
	int (*func)( double, char *, double, char * );
CODE:
	func   = INT2PTR(int(*)( double, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_idtdi( c_func, d0, t1, d2, i3 )
	SV* c_func
	double d0
	char * t1
	double d2
	int i3
PREINIT:
	int (*func)( double, char *, double, int );
CODE:
	func   = INT2PTR(int(*)( double, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_idtsd( c_func, d0, t1, s2, d3 )
	SV* c_func
	double d0
	char * t1
	short s2
	double d3
PREINIT:
	int (*func)( double, char *, short, double );
CODE:
	func   = INT2PTR(int(*)( double, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_idtss( c_func, d0, t1, s2, s3 )
	SV* c_func
	double d0
	char * t1
	short s2
	short s3
PREINIT:
	int (*func)( double, char *, short, short );
CODE:
	func   = INT2PTR(int(*)( double, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_idtsf( c_func, d0, t1, s2, f3 )
	SV* c_func
	double d0
	char * t1
	short s2
	float f3
PREINIT:
	int (*func)( double, char *, short, float );
CODE:
	func   = INT2PTR(int(*)( double, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_idtst( c_func, d0, t1, s2, t3 )
	SV* c_func
	double d0
	char * t1
	short s2
	char * t3
PREINIT:
	int (*func)( double, char *, short, char * );
CODE:
	func   = INT2PTR(int(*)( double, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_idtsi( c_func, d0, t1, s2, i3 )
	SV* c_func
	double d0
	char * t1
	short s2
	int i3
PREINIT:
	int (*func)( double, char *, short, int );
CODE:
	func   = INT2PTR(int(*)( double, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_idtfd( c_func, d0, t1, f2, d3 )
	SV* c_func
	double d0
	char * t1
	float f2
	double d3
PREINIT:
	int (*func)( double, char *, float, double );
CODE:
	func   = INT2PTR(int(*)( double, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_idtfs( c_func, d0, t1, f2, s3 )
	SV* c_func
	double d0
	char * t1
	float f2
	short s3
PREINIT:
	int (*func)( double, char *, float, short );
CODE:
	func   = INT2PTR(int(*)( double, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_idtff( c_func, d0, t1, f2, f3 )
	SV* c_func
	double d0
	char * t1
	float f2
	float f3
PREINIT:
	int (*func)( double, char *, float, float );
CODE:
	func   = INT2PTR(int(*)( double, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_idtft( c_func, d0, t1, f2, t3 )
	SV* c_func
	double d0
	char * t1
	float f2
	char * t3
PREINIT:
	int (*func)( double, char *, float, char * );
CODE:
	func   = INT2PTR(int(*)( double, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_idtfi( c_func, d0, t1, f2, i3 )
	SV* c_func
	double d0
	char * t1
	float f2
	int i3
PREINIT:
	int (*func)( double, char *, float, int );
CODE:
	func   = INT2PTR(int(*)( double, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_idttd( c_func, d0, t1, t2, d3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	double d3
PREINIT:
	int (*func)( double, char *, char *, double );
CODE:
	func   = INT2PTR(int(*)( double, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_idtts( c_func, d0, t1, t2, s3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	short s3
PREINIT:
	int (*func)( double, char *, char *, short );
CODE:
	func   = INT2PTR(int(*)( double, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_idttf( c_func, d0, t1, t2, f3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	float f3
PREINIT:
	int (*func)( double, char *, char *, float );
CODE:
	func   = INT2PTR(int(*)( double, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_idttt( c_func, d0, t1, t2, t3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	char * t3
PREINIT:
	int (*func)( double, char *, char *, char * );
CODE:
	func   = INT2PTR(int(*)( double, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_idtti( c_func, d0, t1, t2, i3 )
	SV* c_func
	double d0
	char * t1
	char * t2
	int i3
PREINIT:
	int (*func)( double, char *, char *, int );
CODE:
	func   = INT2PTR(int(*)( double, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_idtid( c_func, d0, t1, i2, d3 )
	SV* c_func
	double d0
	char * t1
	int i2
	double d3
PREINIT:
	int (*func)( double, char *, int, double );
CODE:
	func   = INT2PTR(int(*)( double, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_idtis( c_func, d0, t1, i2, s3 )
	SV* c_func
	double d0
	char * t1
	int i2
	short s3
PREINIT:
	int (*func)( double, char *, int, short );
CODE:
	func   = INT2PTR(int(*)( double, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_idtif( c_func, d0, t1, i2, f3 )
	SV* c_func
	double d0
	char * t1
	int i2
	float f3
PREINIT:
	int (*func)( double, char *, int, float );
CODE:
	func   = INT2PTR(int(*)( double, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_idtit( c_func, d0, t1, i2, t3 )
	SV* c_func
	double d0
	char * t1
	int i2
	char * t3
PREINIT:
	int (*func)( double, char *, int, char * );
CODE:
	func   = INT2PTR(int(*)( double, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_idtii( c_func, d0, t1, i2, i3 )
	SV* c_func
	double d0
	char * t1
	int i2
	int i3
PREINIT:
	int (*func)( double, char *, int, int );
CODE:
	func   = INT2PTR(int(*)( double, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, t1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_ididd( c_func, d0, i1, d2, d3 )
	SV* c_func
	double d0
	int i1
	double d2
	double d3
PREINIT:
	int (*func)( double, int, double, double );
CODE:
	func   = INT2PTR(int(*)( double, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_idids( c_func, d0, i1, d2, s3 )
	SV* c_func
	double d0
	int i1
	double d2
	short s3
PREINIT:
	int (*func)( double, int, double, short );
CODE:
	func   = INT2PTR(int(*)( double, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_ididf( c_func, d0, i1, d2, f3 )
	SV* c_func
	double d0
	int i1
	double d2
	float f3
PREINIT:
	int (*func)( double, int, double, float );
CODE:
	func   = INT2PTR(int(*)( double, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_ididt( c_func, d0, i1, d2, t3 )
	SV* c_func
	double d0
	int i1
	double d2
	char * t3
PREINIT:
	int (*func)( double, int, double, char * );
CODE:
	func   = INT2PTR(int(*)( double, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_ididi( c_func, d0, i1, d2, i3 )
	SV* c_func
	double d0
	int i1
	double d2
	int i3
PREINIT:
	int (*func)( double, int, double, int );
CODE:
	func   = INT2PTR(int(*)( double, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_idisd( c_func, d0, i1, s2, d3 )
	SV* c_func
	double d0
	int i1
	short s2
	double d3
PREINIT:
	int (*func)( double, int, short, double );
CODE:
	func   = INT2PTR(int(*)( double, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_idiss( c_func, d0, i1, s2, s3 )
	SV* c_func
	double d0
	int i1
	short s2
	short s3
PREINIT:
	int (*func)( double, int, short, short );
CODE:
	func   = INT2PTR(int(*)( double, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_idisf( c_func, d0, i1, s2, f3 )
	SV* c_func
	double d0
	int i1
	short s2
	float f3
PREINIT:
	int (*func)( double, int, short, float );
CODE:
	func   = INT2PTR(int(*)( double, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_idist( c_func, d0, i1, s2, t3 )
	SV* c_func
	double d0
	int i1
	short s2
	char * t3
PREINIT:
	int (*func)( double, int, short, char * );
CODE:
	func   = INT2PTR(int(*)( double, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_idisi( c_func, d0, i1, s2, i3 )
	SV* c_func
	double d0
	int i1
	short s2
	int i3
PREINIT:
	int (*func)( double, int, short, int );
CODE:
	func   = INT2PTR(int(*)( double, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_idifd( c_func, d0, i1, f2, d3 )
	SV* c_func
	double d0
	int i1
	float f2
	double d3
PREINIT:
	int (*func)( double, int, float, double );
CODE:
	func   = INT2PTR(int(*)( double, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_idifs( c_func, d0, i1, f2, s3 )
	SV* c_func
	double d0
	int i1
	float f2
	short s3
PREINIT:
	int (*func)( double, int, float, short );
CODE:
	func   = INT2PTR(int(*)( double, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_idiff( c_func, d0, i1, f2, f3 )
	SV* c_func
	double d0
	int i1
	float f2
	float f3
PREINIT:
	int (*func)( double, int, float, float );
CODE:
	func   = INT2PTR(int(*)( double, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_idift( c_func, d0, i1, f2, t3 )
	SV* c_func
	double d0
	int i1
	float f2
	char * t3
PREINIT:
	int (*func)( double, int, float, char * );
CODE:
	func   = INT2PTR(int(*)( double, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_idifi( c_func, d0, i1, f2, i3 )
	SV* c_func
	double d0
	int i1
	float f2
	int i3
PREINIT:
	int (*func)( double, int, float, int );
CODE:
	func   = INT2PTR(int(*)( double, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_iditd( c_func, d0, i1, t2, d3 )
	SV* c_func
	double d0
	int i1
	char * t2
	double d3
PREINIT:
	int (*func)( double, int, char *, double );
CODE:
	func   = INT2PTR(int(*)( double, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_idits( c_func, d0, i1, t2, s3 )
	SV* c_func
	double d0
	int i1
	char * t2
	short s3
PREINIT:
	int (*func)( double, int, char *, short );
CODE:
	func   = INT2PTR(int(*)( double, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_iditf( c_func, d0, i1, t2, f3 )
	SV* c_func
	double d0
	int i1
	char * t2
	float f3
PREINIT:
	int (*func)( double, int, char *, float );
CODE:
	func   = INT2PTR(int(*)( double, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_iditt( c_func, d0, i1, t2, t3 )
	SV* c_func
	double d0
	int i1
	char * t2
	char * t3
PREINIT:
	int (*func)( double, int, char *, char * );
CODE:
	func   = INT2PTR(int(*)( double, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_iditi( c_func, d0, i1, t2, i3 )
	SV* c_func
	double d0
	int i1
	char * t2
	int i3
PREINIT:
	int (*func)( double, int, char *, int );
CODE:
	func   = INT2PTR(int(*)( double, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_idiid( c_func, d0, i1, i2, d3 )
	SV* c_func
	double d0
	int i1
	int i2
	double d3
PREINIT:
	int (*func)( double, int, int, double );
CODE:
	func   = INT2PTR(int(*)( double, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_idiis( c_func, d0, i1, i2, s3 )
	SV* c_func
	double d0
	int i1
	int i2
	short s3
PREINIT:
	int (*func)( double, int, int, short );
CODE:
	func   = INT2PTR(int(*)( double, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_idiif( c_func, d0, i1, i2, f3 )
	SV* c_func
	double d0
	int i1
	int i2
	float f3
PREINIT:
	int (*func)( double, int, int, float );
CODE:
	func   = INT2PTR(int(*)( double, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_idiit( c_func, d0, i1, i2, t3 )
	SV* c_func
	double d0
	int i1
	int i2
	char * t3
PREINIT:
	int (*func)( double, int, int, char * );
CODE:
	func   = INT2PTR(int(*)( double, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_idiii( c_func, d0, i1, i2, i3 )
	SV* c_func
	double d0
	int i1
	int i2
	int i3
PREINIT:
	int (*func)( double, int, int, int );
CODE:
	func   = INT2PTR(int(*)( double, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( d0, i1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_isddd( c_func, s0, d1, d2, d3 )
	SV* c_func
	short s0
	double d1
	double d2
	double d3
PREINIT:
	int (*func)( short, double, double, double );
CODE:
	func   = INT2PTR(int(*)( short, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_isdds( c_func, s0, d1, d2, s3 )
	SV* c_func
	short s0
	double d1
	double d2
	short s3
PREINIT:
	int (*func)( short, double, double, short );
CODE:
	func   = INT2PTR(int(*)( short, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_isddf( c_func, s0, d1, d2, f3 )
	SV* c_func
	short s0
	double d1
	double d2
	float f3
PREINIT:
	int (*func)( short, double, double, float );
CODE:
	func   = INT2PTR(int(*)( short, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_isddt( c_func, s0, d1, d2, t3 )
	SV* c_func
	short s0
	double d1
	double d2
	char * t3
PREINIT:
	int (*func)( short, double, double, char * );
CODE:
	func   = INT2PTR(int(*)( short, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_isddi( c_func, s0, d1, d2, i3 )
	SV* c_func
	short s0
	double d1
	double d2
	int i3
PREINIT:
	int (*func)( short, double, double, int );
CODE:
	func   = INT2PTR(int(*)( short, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_isdsd( c_func, s0, d1, s2, d3 )
	SV* c_func
	short s0
	double d1
	short s2
	double d3
PREINIT:
	int (*func)( short, double, short, double );
CODE:
	func   = INT2PTR(int(*)( short, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_isdss( c_func, s0, d1, s2, s3 )
	SV* c_func
	short s0
	double d1
	short s2
	short s3
PREINIT:
	int (*func)( short, double, short, short );
CODE:
	func   = INT2PTR(int(*)( short, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_isdsf( c_func, s0, d1, s2, f3 )
	SV* c_func
	short s0
	double d1
	short s2
	float f3
PREINIT:
	int (*func)( short, double, short, float );
CODE:
	func   = INT2PTR(int(*)( short, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_isdst( c_func, s0, d1, s2, t3 )
	SV* c_func
	short s0
	double d1
	short s2
	char * t3
PREINIT:
	int (*func)( short, double, short, char * );
CODE:
	func   = INT2PTR(int(*)( short, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_isdsi( c_func, s0, d1, s2, i3 )
	SV* c_func
	short s0
	double d1
	short s2
	int i3
PREINIT:
	int (*func)( short, double, short, int );
CODE:
	func   = INT2PTR(int(*)( short, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_isdfd( c_func, s0, d1, f2, d3 )
	SV* c_func
	short s0
	double d1
	float f2
	double d3
PREINIT:
	int (*func)( short, double, float, double );
CODE:
	func   = INT2PTR(int(*)( short, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_isdfs( c_func, s0, d1, f2, s3 )
	SV* c_func
	short s0
	double d1
	float f2
	short s3
PREINIT:
	int (*func)( short, double, float, short );
CODE:
	func   = INT2PTR(int(*)( short, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_isdff( c_func, s0, d1, f2, f3 )
	SV* c_func
	short s0
	double d1
	float f2
	float f3
PREINIT:
	int (*func)( short, double, float, float );
CODE:
	func   = INT2PTR(int(*)( short, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_isdft( c_func, s0, d1, f2, t3 )
	SV* c_func
	short s0
	double d1
	float f2
	char * t3
PREINIT:
	int (*func)( short, double, float, char * );
CODE:
	func   = INT2PTR(int(*)( short, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_isdfi( c_func, s0, d1, f2, i3 )
	SV* c_func
	short s0
	double d1
	float f2
	int i3
PREINIT:
	int (*func)( short, double, float, int );
CODE:
	func   = INT2PTR(int(*)( short, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_isdtd( c_func, s0, d1, t2, d3 )
	SV* c_func
	short s0
	double d1
	char * t2
	double d3
PREINIT:
	int (*func)( short, double, char *, double );
CODE:
	func   = INT2PTR(int(*)( short, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_isdts( c_func, s0, d1, t2, s3 )
	SV* c_func
	short s0
	double d1
	char * t2
	short s3
PREINIT:
	int (*func)( short, double, char *, short );
CODE:
	func   = INT2PTR(int(*)( short, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_isdtf( c_func, s0, d1, t2, f3 )
	SV* c_func
	short s0
	double d1
	char * t2
	float f3
PREINIT:
	int (*func)( short, double, char *, float );
CODE:
	func   = INT2PTR(int(*)( short, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_isdtt( c_func, s0, d1, t2, t3 )
	SV* c_func
	short s0
	double d1
	char * t2
	char * t3
PREINIT:
	int (*func)( short, double, char *, char * );
CODE:
	func   = INT2PTR(int(*)( short, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_isdti( c_func, s0, d1, t2, i3 )
	SV* c_func
	short s0
	double d1
	char * t2
	int i3
PREINIT:
	int (*func)( short, double, char *, int );
CODE:
	func   = INT2PTR(int(*)( short, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_isdid( c_func, s0, d1, i2, d3 )
	SV* c_func
	short s0
	double d1
	int i2
	double d3
PREINIT:
	int (*func)( short, double, int, double );
CODE:
	func   = INT2PTR(int(*)( short, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_isdis( c_func, s0, d1, i2, s3 )
	SV* c_func
	short s0
	double d1
	int i2
	short s3
PREINIT:
	int (*func)( short, double, int, short );
CODE:
	func   = INT2PTR(int(*)( short, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_isdif( c_func, s0, d1, i2, f3 )
	SV* c_func
	short s0
	double d1
	int i2
	float f3
PREINIT:
	int (*func)( short, double, int, float );
CODE:
	func   = INT2PTR(int(*)( short, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_isdit( c_func, s0, d1, i2, t3 )
	SV* c_func
	short s0
	double d1
	int i2
	char * t3
PREINIT:
	int (*func)( short, double, int, char * );
CODE:
	func   = INT2PTR(int(*)( short, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_isdii( c_func, s0, d1, i2, i3 )
	SV* c_func
	short s0
	double d1
	int i2
	int i3
PREINIT:
	int (*func)( short, double, int, int );
CODE:
	func   = INT2PTR(int(*)( short, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, d1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_issdd( c_func, s0, s1, d2, d3 )
	SV* c_func
	short s0
	short s1
	double d2
	double d3
PREINIT:
	int (*func)( short, short, double, double );
CODE:
	func   = INT2PTR(int(*)( short, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_issds( c_func, s0, s1, d2, s3 )
	SV* c_func
	short s0
	short s1
	double d2
	short s3
PREINIT:
	int (*func)( short, short, double, short );
CODE:
	func   = INT2PTR(int(*)( short, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_issdf( c_func, s0, s1, d2, f3 )
	SV* c_func
	short s0
	short s1
	double d2
	float f3
PREINIT:
	int (*func)( short, short, double, float );
CODE:
	func   = INT2PTR(int(*)( short, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_issdt( c_func, s0, s1, d2, t3 )
	SV* c_func
	short s0
	short s1
	double d2
	char * t3
PREINIT:
	int (*func)( short, short, double, char * );
CODE:
	func   = INT2PTR(int(*)( short, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_issdi( c_func, s0, s1, d2, i3 )
	SV* c_func
	short s0
	short s1
	double d2
	int i3
PREINIT:
	int (*func)( short, short, double, int );
CODE:
	func   = INT2PTR(int(*)( short, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_isssd( c_func, s0, s1, s2, d3 )
	SV* c_func
	short s0
	short s1
	short s2
	double d3
PREINIT:
	int (*func)( short, short, short, double );
CODE:
	func   = INT2PTR(int(*)( short, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_issss( c_func, s0, s1, s2, s3 )
	SV* c_func
	short s0
	short s1
	short s2
	short s3
PREINIT:
	int (*func)( short, short, short, short );
CODE:
	func   = INT2PTR(int(*)( short, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_isssf( c_func, s0, s1, s2, f3 )
	SV* c_func
	short s0
	short s1
	short s2
	float f3
PREINIT:
	int (*func)( short, short, short, float );
CODE:
	func   = INT2PTR(int(*)( short, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_issst( c_func, s0, s1, s2, t3 )
	SV* c_func
	short s0
	short s1
	short s2
	char * t3
PREINIT:
	int (*func)( short, short, short, char * );
CODE:
	func   = INT2PTR(int(*)( short, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_isssi( c_func, s0, s1, s2, i3 )
	SV* c_func
	short s0
	short s1
	short s2
	int i3
PREINIT:
	int (*func)( short, short, short, int );
CODE:
	func   = INT2PTR(int(*)( short, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_issfd( c_func, s0, s1, f2, d3 )
	SV* c_func
	short s0
	short s1
	float f2
	double d3
PREINIT:
	int (*func)( short, short, float, double );
CODE:
	func   = INT2PTR(int(*)( short, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_issfs( c_func, s0, s1, f2, s3 )
	SV* c_func
	short s0
	short s1
	float f2
	short s3
PREINIT:
	int (*func)( short, short, float, short );
CODE:
	func   = INT2PTR(int(*)( short, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_issff( c_func, s0, s1, f2, f3 )
	SV* c_func
	short s0
	short s1
	float f2
	float f3
PREINIT:
	int (*func)( short, short, float, float );
CODE:
	func   = INT2PTR(int(*)( short, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_issft( c_func, s0, s1, f2, t3 )
	SV* c_func
	short s0
	short s1
	float f2
	char * t3
PREINIT:
	int (*func)( short, short, float, char * );
CODE:
	func   = INT2PTR(int(*)( short, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_issfi( c_func, s0, s1, f2, i3 )
	SV* c_func
	short s0
	short s1
	float f2
	int i3
PREINIT:
	int (*func)( short, short, float, int );
CODE:
	func   = INT2PTR(int(*)( short, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_isstd( c_func, s0, s1, t2, d3 )
	SV* c_func
	short s0
	short s1
	char * t2
	double d3
PREINIT:
	int (*func)( short, short, char *, double );
CODE:
	func   = INT2PTR(int(*)( short, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_issts( c_func, s0, s1, t2, s3 )
	SV* c_func
	short s0
	short s1
	char * t2
	short s3
PREINIT:
	int (*func)( short, short, char *, short );
CODE:
	func   = INT2PTR(int(*)( short, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_isstf( c_func, s0, s1, t2, f3 )
	SV* c_func
	short s0
	short s1
	char * t2
	float f3
PREINIT:
	int (*func)( short, short, char *, float );
CODE:
	func   = INT2PTR(int(*)( short, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_isstt( c_func, s0, s1, t2, t3 )
	SV* c_func
	short s0
	short s1
	char * t2
	char * t3
PREINIT:
	int (*func)( short, short, char *, char * );
CODE:
	func   = INT2PTR(int(*)( short, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_issti( c_func, s0, s1, t2, i3 )
	SV* c_func
	short s0
	short s1
	char * t2
	int i3
PREINIT:
	int (*func)( short, short, char *, int );
CODE:
	func   = INT2PTR(int(*)( short, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_issid( c_func, s0, s1, i2, d3 )
	SV* c_func
	short s0
	short s1
	int i2
	double d3
PREINIT:
	int (*func)( short, short, int, double );
CODE:
	func   = INT2PTR(int(*)( short, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_issis( c_func, s0, s1, i2, s3 )
	SV* c_func
	short s0
	short s1
	int i2
	short s3
PREINIT:
	int (*func)( short, short, int, short );
CODE:
	func   = INT2PTR(int(*)( short, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_issif( c_func, s0, s1, i2, f3 )
	SV* c_func
	short s0
	short s1
	int i2
	float f3
PREINIT:
	int (*func)( short, short, int, float );
CODE:
	func   = INT2PTR(int(*)( short, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_issit( c_func, s0, s1, i2, t3 )
	SV* c_func
	short s0
	short s1
	int i2
	char * t3
PREINIT:
	int (*func)( short, short, int, char * );
CODE:
	func   = INT2PTR(int(*)( short, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_issii( c_func, s0, s1, i2, i3 )
	SV* c_func
	short s0
	short s1
	int i2
	int i3
PREINIT:
	int (*func)( short, short, int, int );
CODE:
	func   = INT2PTR(int(*)( short, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, s1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_isfdd( c_func, s0, f1, d2, d3 )
	SV* c_func
	short s0
	float f1
	double d2
	double d3
PREINIT:
	int (*func)( short, float, double, double );
CODE:
	func   = INT2PTR(int(*)( short, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_isfds( c_func, s0, f1, d2, s3 )
	SV* c_func
	short s0
	float f1
	double d2
	short s3
PREINIT:
	int (*func)( short, float, double, short );
CODE:
	func   = INT2PTR(int(*)( short, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_isfdf( c_func, s0, f1, d2, f3 )
	SV* c_func
	short s0
	float f1
	double d2
	float f3
PREINIT:
	int (*func)( short, float, double, float );
CODE:
	func   = INT2PTR(int(*)( short, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_isfdt( c_func, s0, f1, d2, t3 )
	SV* c_func
	short s0
	float f1
	double d2
	char * t3
PREINIT:
	int (*func)( short, float, double, char * );
CODE:
	func   = INT2PTR(int(*)( short, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_isfdi( c_func, s0, f1, d2, i3 )
	SV* c_func
	short s0
	float f1
	double d2
	int i3
PREINIT:
	int (*func)( short, float, double, int );
CODE:
	func   = INT2PTR(int(*)( short, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_isfsd( c_func, s0, f1, s2, d3 )
	SV* c_func
	short s0
	float f1
	short s2
	double d3
PREINIT:
	int (*func)( short, float, short, double );
CODE:
	func   = INT2PTR(int(*)( short, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_isfss( c_func, s0, f1, s2, s3 )
	SV* c_func
	short s0
	float f1
	short s2
	short s3
PREINIT:
	int (*func)( short, float, short, short );
CODE:
	func   = INT2PTR(int(*)( short, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_isfsf( c_func, s0, f1, s2, f3 )
	SV* c_func
	short s0
	float f1
	short s2
	float f3
PREINIT:
	int (*func)( short, float, short, float );
CODE:
	func   = INT2PTR(int(*)( short, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_isfst( c_func, s0, f1, s2, t3 )
	SV* c_func
	short s0
	float f1
	short s2
	char * t3
PREINIT:
	int (*func)( short, float, short, char * );
CODE:
	func   = INT2PTR(int(*)( short, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_isfsi( c_func, s0, f1, s2, i3 )
	SV* c_func
	short s0
	float f1
	short s2
	int i3
PREINIT:
	int (*func)( short, float, short, int );
CODE:
	func   = INT2PTR(int(*)( short, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_isffd( c_func, s0, f1, f2, d3 )
	SV* c_func
	short s0
	float f1
	float f2
	double d3
PREINIT:
	int (*func)( short, float, float, double );
CODE:
	func   = INT2PTR(int(*)( short, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_isffs( c_func, s0, f1, f2, s3 )
	SV* c_func
	short s0
	float f1
	float f2
	short s3
PREINIT:
	int (*func)( short, float, float, short );
CODE:
	func   = INT2PTR(int(*)( short, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_isfff( c_func, s0, f1, f2, f3 )
	SV* c_func
	short s0
	float f1
	float f2
	float f3
PREINIT:
	int (*func)( short, float, float, float );
CODE:
	func   = INT2PTR(int(*)( short, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_isfft( c_func, s0, f1, f2, t3 )
	SV* c_func
	short s0
	float f1
	float f2
	char * t3
PREINIT:
	int (*func)( short, float, float, char * );
CODE:
	func   = INT2PTR(int(*)( short, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_isffi( c_func, s0, f1, f2, i3 )
	SV* c_func
	short s0
	float f1
	float f2
	int i3
PREINIT:
	int (*func)( short, float, float, int );
CODE:
	func   = INT2PTR(int(*)( short, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_isftd( c_func, s0, f1, t2, d3 )
	SV* c_func
	short s0
	float f1
	char * t2
	double d3
PREINIT:
	int (*func)( short, float, char *, double );
CODE:
	func   = INT2PTR(int(*)( short, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_isfts( c_func, s0, f1, t2, s3 )
	SV* c_func
	short s0
	float f1
	char * t2
	short s3
PREINIT:
	int (*func)( short, float, char *, short );
CODE:
	func   = INT2PTR(int(*)( short, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_isftf( c_func, s0, f1, t2, f3 )
	SV* c_func
	short s0
	float f1
	char * t2
	float f3
PREINIT:
	int (*func)( short, float, char *, float );
CODE:
	func   = INT2PTR(int(*)( short, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_isftt( c_func, s0, f1, t2, t3 )
	SV* c_func
	short s0
	float f1
	char * t2
	char * t3
PREINIT:
	int (*func)( short, float, char *, char * );
CODE:
	func   = INT2PTR(int(*)( short, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_isfti( c_func, s0, f1, t2, i3 )
	SV* c_func
	short s0
	float f1
	char * t2
	int i3
PREINIT:
	int (*func)( short, float, char *, int );
CODE:
	func   = INT2PTR(int(*)( short, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_isfid( c_func, s0, f1, i2, d3 )
	SV* c_func
	short s0
	float f1
	int i2
	double d3
PREINIT:
	int (*func)( short, float, int, double );
CODE:
	func   = INT2PTR(int(*)( short, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_isfis( c_func, s0, f1, i2, s3 )
	SV* c_func
	short s0
	float f1
	int i2
	short s3
PREINIT:
	int (*func)( short, float, int, short );
CODE:
	func   = INT2PTR(int(*)( short, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_isfif( c_func, s0, f1, i2, f3 )
	SV* c_func
	short s0
	float f1
	int i2
	float f3
PREINIT:
	int (*func)( short, float, int, float );
CODE:
	func   = INT2PTR(int(*)( short, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_isfit( c_func, s0, f1, i2, t3 )
	SV* c_func
	short s0
	float f1
	int i2
	char * t3
PREINIT:
	int (*func)( short, float, int, char * );
CODE:
	func   = INT2PTR(int(*)( short, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_isfii( c_func, s0, f1, i2, i3 )
	SV* c_func
	short s0
	float f1
	int i2
	int i3
PREINIT:
	int (*func)( short, float, int, int );
CODE:
	func   = INT2PTR(int(*)( short, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, f1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_istdd( c_func, s0, t1, d2, d3 )
	SV* c_func
	short s0
	char * t1
	double d2
	double d3
PREINIT:
	int (*func)( short, char *, double, double );
CODE:
	func   = INT2PTR(int(*)( short, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_istds( c_func, s0, t1, d2, s3 )
	SV* c_func
	short s0
	char * t1
	double d2
	short s3
PREINIT:
	int (*func)( short, char *, double, short );
CODE:
	func   = INT2PTR(int(*)( short, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_istdf( c_func, s0, t1, d2, f3 )
	SV* c_func
	short s0
	char * t1
	double d2
	float f3
PREINIT:
	int (*func)( short, char *, double, float );
CODE:
	func   = INT2PTR(int(*)( short, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_istdt( c_func, s0, t1, d2, t3 )
	SV* c_func
	short s0
	char * t1
	double d2
	char * t3
PREINIT:
	int (*func)( short, char *, double, char * );
CODE:
	func   = INT2PTR(int(*)( short, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_istdi( c_func, s0, t1, d2, i3 )
	SV* c_func
	short s0
	char * t1
	double d2
	int i3
PREINIT:
	int (*func)( short, char *, double, int );
CODE:
	func   = INT2PTR(int(*)( short, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_istsd( c_func, s0, t1, s2, d3 )
	SV* c_func
	short s0
	char * t1
	short s2
	double d3
PREINIT:
	int (*func)( short, char *, short, double );
CODE:
	func   = INT2PTR(int(*)( short, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_istss( c_func, s0, t1, s2, s3 )
	SV* c_func
	short s0
	char * t1
	short s2
	short s3
PREINIT:
	int (*func)( short, char *, short, short );
CODE:
	func   = INT2PTR(int(*)( short, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_istsf( c_func, s0, t1, s2, f3 )
	SV* c_func
	short s0
	char * t1
	short s2
	float f3
PREINIT:
	int (*func)( short, char *, short, float );
CODE:
	func   = INT2PTR(int(*)( short, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_istst( c_func, s0, t1, s2, t3 )
	SV* c_func
	short s0
	char * t1
	short s2
	char * t3
PREINIT:
	int (*func)( short, char *, short, char * );
CODE:
	func   = INT2PTR(int(*)( short, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_istsi( c_func, s0, t1, s2, i3 )
	SV* c_func
	short s0
	char * t1
	short s2
	int i3
PREINIT:
	int (*func)( short, char *, short, int );
CODE:
	func   = INT2PTR(int(*)( short, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_istfd( c_func, s0, t1, f2, d3 )
	SV* c_func
	short s0
	char * t1
	float f2
	double d3
PREINIT:
	int (*func)( short, char *, float, double );
CODE:
	func   = INT2PTR(int(*)( short, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_istfs( c_func, s0, t1, f2, s3 )
	SV* c_func
	short s0
	char * t1
	float f2
	short s3
PREINIT:
	int (*func)( short, char *, float, short );
CODE:
	func   = INT2PTR(int(*)( short, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_istff( c_func, s0, t1, f2, f3 )
	SV* c_func
	short s0
	char * t1
	float f2
	float f3
PREINIT:
	int (*func)( short, char *, float, float );
CODE:
	func   = INT2PTR(int(*)( short, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_istft( c_func, s0, t1, f2, t3 )
	SV* c_func
	short s0
	char * t1
	float f2
	char * t3
PREINIT:
	int (*func)( short, char *, float, char * );
CODE:
	func   = INT2PTR(int(*)( short, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_istfi( c_func, s0, t1, f2, i3 )
	SV* c_func
	short s0
	char * t1
	float f2
	int i3
PREINIT:
	int (*func)( short, char *, float, int );
CODE:
	func   = INT2PTR(int(*)( short, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_isttd( c_func, s0, t1, t2, d3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	double d3
PREINIT:
	int (*func)( short, char *, char *, double );
CODE:
	func   = INT2PTR(int(*)( short, char *, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_istts( c_func, s0, t1, t2, s3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	short s3
PREINIT:
	int (*func)( short, char *, char *, short );
CODE:
	func   = INT2PTR(int(*)( short, char *, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_isttf( c_func, s0, t1, t2, f3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	float f3
PREINIT:
	int (*func)( short, char *, char *, float );
CODE:
	func   = INT2PTR(int(*)( short, char *, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_isttt( c_func, s0, t1, t2, t3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	char * t3
PREINIT:
	int (*func)( short, char *, char *, char * );
CODE:
	func   = INT2PTR(int(*)( short, char *, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_istti( c_func, s0, t1, t2, i3 )
	SV* c_func
	short s0
	char * t1
	char * t2
	int i3
PREINIT:
	int (*func)( short, char *, char *, int );
CODE:
	func   = INT2PTR(int(*)( short, char *, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_istid( c_func, s0, t1, i2, d3 )
	SV* c_func
	short s0
	char * t1
	int i2
	double d3
PREINIT:
	int (*func)( short, char *, int, double );
CODE:
	func   = INT2PTR(int(*)( short, char *, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_istis( c_func, s0, t1, i2, s3 )
	SV* c_func
	short s0
	char * t1
	int i2
	short s3
PREINIT:
	int (*func)( short, char *, int, short );
CODE:
	func   = INT2PTR(int(*)( short, char *, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_istif( c_func, s0, t1, i2, f3 )
	SV* c_func
	short s0
	char * t1
	int i2
	float f3
PREINIT:
	int (*func)( short, char *, int, float );
CODE:
	func   = INT2PTR(int(*)( short, char *, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_istit( c_func, s0, t1, i2, t3 )
	SV* c_func
	short s0
	char * t1
	int i2
	char * t3
PREINIT:
	int (*func)( short, char *, int, char * );
CODE:
	func   = INT2PTR(int(*)( short, char *, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_istii( c_func, s0, t1, i2, i3 )
	SV* c_func
	short s0
	char * t1
	int i2
	int i3
PREINIT:
	int (*func)( short, char *, int, int );
CODE:
	func   = INT2PTR(int(*)( short, char *, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, t1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_isidd( c_func, s0, i1, d2, d3 )
	SV* c_func
	short s0
	int i1
	double d2
	double d3
PREINIT:
	int (*func)( short, int, double, double );
CODE:
	func   = INT2PTR(int(*)( short, int, double, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_isids( c_func, s0, i1, d2, s3 )
	SV* c_func
	short s0
	int i1
	double d2
	short s3
PREINIT:
	int (*func)( short, int, double, short );
CODE:
	func   = INT2PTR(int(*)( short, int, double, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_isidf( c_func, s0, i1, d2, f3 )
	SV* c_func
	short s0
	int i1
	double d2
	float f3
PREINIT:
	int (*func)( short, int, double, float );
CODE:
	func   = INT2PTR(int(*)( short, int, double, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_isidt( c_func, s0, i1, d2, t3 )
	SV* c_func
	short s0
	int i1
	double d2
	char * t3
PREINIT:
	int (*func)( short, int, double, char * );
CODE:
	func   = INT2PTR(int(*)( short, int, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_isidi( c_func, s0, i1, d2, i3 )
	SV* c_func
	short s0
	int i1
	double d2
	int i3
PREINIT:
	int (*func)( short, int, double, int );
CODE:
	func   = INT2PTR(int(*)( short, int, double, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_isisd( c_func, s0, i1, s2, d3 )
	SV* c_func
	short s0
	int i1
	short s2
	double d3
PREINIT:
	int (*func)( short, int, short, double );
CODE:
	func   = INT2PTR(int(*)( short, int, short, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_isiss( c_func, s0, i1, s2, s3 )
	SV* c_func
	short s0
	int i1
	short s2
	short s3
PREINIT:
	int (*func)( short, int, short, short );
CODE:
	func   = INT2PTR(int(*)( short, int, short, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_isisf( c_func, s0, i1, s2, f3 )
	SV* c_func
	short s0
	int i1
	short s2
	float f3
PREINIT:
	int (*func)( short, int, short, float );
CODE:
	func   = INT2PTR(int(*)( short, int, short, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_isist( c_func, s0, i1, s2, t3 )
	SV* c_func
	short s0
	int i1
	short s2
	char * t3
PREINIT:
	int (*func)( short, int, short, char * );
CODE:
	func   = INT2PTR(int(*)( short, int, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_isisi( c_func, s0, i1, s2, i3 )
	SV* c_func
	short s0
	int i1
	short s2
	int i3
PREINIT:
	int (*func)( short, int, short, int );
CODE:
	func   = INT2PTR(int(*)( short, int, short, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_isifd( c_func, s0, i1, f2, d3 )
	SV* c_func
	short s0
	int i1
	float f2
	double d3
PREINIT:
	int (*func)( short, int, float, double );
CODE:
	func   = INT2PTR(int(*)( short, int, float, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_isifs( c_func, s0, i1, f2, s3 )
	SV* c_func
	short s0
	int i1
	float f2
	short s3
PREINIT:
	int (*func)( short, int, float, short );
CODE:
	func   = INT2PTR(int(*)( short, int, float, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_isiff( c_func, s0, i1, f2, f3 )
	SV* c_func
	short s0
	int i1
	float f2
	float f3
PREINIT:
	int (*func)( short, int, float, float );
CODE:
	func   = INT2PTR(int(*)( short, int, float, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_isift( c_func, s0, i1, f2, t3 )
	SV* c_func
	short s0
	int i1
	float f2
	char * t3
PREINIT:
	int (*func)( short, int, float, char * );
CODE:
	func   = INT2PTR(int(*)( short, int, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_isifi( c_func, s0, i1, f2, i3 )
	SV* c_func
	short s0
	int i1
	float f2
	int i3
PREINIT:
	int (*func)( short, int, float, int );
CODE:
	func   = INT2PTR(int(*)( short, int, float, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_isitd( c_func, s0, i1, t2, d3 )
	SV* c_func
	short s0
	int i1
	char * t2
	double d3
PREINIT:
	int (*func)( short, int, char *, double );
CODE:
	func   = INT2PTR(int(*)( short, int, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_isits( c_func, s0, i1, t2, s3 )
	SV* c_func
	short s0
	int i1
	char * t2
	short s3
PREINIT:
	int (*func)( short, int, char *, short );
CODE:
	func   = INT2PTR(int(*)( short, int, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_isitf( c_func, s0, i1, t2, f3 )
	SV* c_func
	short s0
	int i1
	char * t2
	float f3
PREINIT:
	int (*func)( short, int, char *, float );
CODE:
	func   = INT2PTR(int(*)( short, int, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_isitt( c_func, s0, i1, t2, t3 )
	SV* c_func
	short s0
	int i1
	char * t2
	char * t3
PREINIT:
	int (*func)( short, int, char *, char * );
CODE:
	func   = INT2PTR(int(*)( short, int, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_isiti( c_func, s0, i1, t2, i3 )
	SV* c_func
	short s0
	int i1
	char * t2
	int i3
PREINIT:
	int (*func)( short, int, char *, int );
CODE:
	func   = INT2PTR(int(*)( short, int, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_isiid( c_func, s0, i1, i2, d3 )
	SV* c_func
	short s0
	int i1
	int i2
	double d3
PREINIT:
	int (*func)( short, int, int, double );
CODE:
	func   = INT2PTR(int(*)( short, int, int, double ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_isiis( c_func, s0, i1, i2, s3 )
	SV* c_func
	short s0
	int i1
	int i2
	short s3
PREINIT:
	int (*func)( short, int, int, short );
CODE:
	func   = INT2PTR(int(*)( short, int, int, short ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_isiif( c_func, s0, i1, i2, f3 )
	SV* c_func
	short s0
	int i1
	int i2
	float f3
PREINIT:
	int (*func)( short, int, int, float );
CODE:
	func   = INT2PTR(int(*)( short, int, int, float ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_isiit( c_func, s0, i1, i2, t3 )
	SV* c_func
	short s0
	int i1
	int i2
	char * t3
PREINIT:
	int (*func)( short, int, int, char * );
CODE:
	func   = INT2PTR(int(*)( short, int, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_isiii( c_func, s0, i1, i2, i3 )
	SV* c_func
	short s0
	int i1
	int i2
	int i3
PREINIT:
	int (*func)( short, int, int, int );
CODE:
	func   = INT2PTR(int(*)( short, int, int, int ), SvIV(c_func) );
	RETVAL = (*func)( s0, i1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_ifddd( c_func, f0, d1, d2, d3 )
	SV* c_func
	float f0
	double d1
	double d2
	double d3
PREINIT:
	int (*func)( float, double, double, double );
CODE:
	func   = INT2PTR(int(*)( float, double, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_ifdds( c_func, f0, d1, d2, s3 )
	SV* c_func
	float f0
	double d1
	double d2
	short s3
PREINIT:
	int (*func)( float, double, double, short );
CODE:
	func   = INT2PTR(int(*)( float, double, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_ifddf( c_func, f0, d1, d2, f3 )
	SV* c_func
	float f0
	double d1
	double d2
	float f3
PREINIT:
	int (*func)( float, double, double, float );
CODE:
	func   = INT2PTR(int(*)( float, double, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_ifddt( c_func, f0, d1, d2, t3 )
	SV* c_func
	float f0
	double d1
	double d2
	char * t3
PREINIT:
	int (*func)( float, double, double, char * );
CODE:
	func   = INT2PTR(int(*)( float, double, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_ifddi( c_func, f0, d1, d2, i3 )
	SV* c_func
	float f0
	double d1
	double d2
	int i3
PREINIT:
	int (*func)( float, double, double, int );
CODE:
	func   = INT2PTR(int(*)( float, double, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_ifdsd( c_func, f0, d1, s2, d3 )
	SV* c_func
	float f0
	double d1
	short s2
	double d3
PREINIT:
	int (*func)( float, double, short, double );
CODE:
	func   = INT2PTR(int(*)( float, double, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_ifdss( c_func, f0, d1, s2, s3 )
	SV* c_func
	float f0
	double d1
	short s2
	short s3
PREINIT:
	int (*func)( float, double, short, short );
CODE:
	func   = INT2PTR(int(*)( float, double, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_ifdsf( c_func, f0, d1, s2, f3 )
	SV* c_func
	float f0
	double d1
	short s2
	float f3
PREINIT:
	int (*func)( float, double, short, float );
CODE:
	func   = INT2PTR(int(*)( float, double, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_ifdst( c_func, f0, d1, s2, t3 )
	SV* c_func
	float f0
	double d1
	short s2
	char * t3
PREINIT:
	int (*func)( float, double, short, char * );
CODE:
	func   = INT2PTR(int(*)( float, double, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_ifdsi( c_func, f0, d1, s2, i3 )
	SV* c_func
	float f0
	double d1
	short s2
	int i3
PREINIT:
	int (*func)( float, double, short, int );
CODE:
	func   = INT2PTR(int(*)( float, double, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_ifdfd( c_func, f0, d1, f2, d3 )
	SV* c_func
	float f0
	double d1
	float f2
	double d3
PREINIT:
	int (*func)( float, double, float, double );
CODE:
	func   = INT2PTR(int(*)( float, double, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_ifdfs( c_func, f0, d1, f2, s3 )
	SV* c_func
	float f0
	double d1
	float f2
	short s3
PREINIT:
	int (*func)( float, double, float, short );
CODE:
	func   = INT2PTR(int(*)( float, double, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_ifdff( c_func, f0, d1, f2, f3 )
	SV* c_func
	float f0
	double d1
	float f2
	float f3
PREINIT:
	int (*func)( float, double, float, float );
CODE:
	func   = INT2PTR(int(*)( float, double, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_ifdft( c_func, f0, d1, f2, t3 )
	SV* c_func
	float f0
	double d1
	float f2
	char * t3
PREINIT:
	int (*func)( float, double, float, char * );
CODE:
	func   = INT2PTR(int(*)( float, double, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_ifdfi( c_func, f0, d1, f2, i3 )
	SV* c_func
	float f0
	double d1
	float f2
	int i3
PREINIT:
	int (*func)( float, double, float, int );
CODE:
	func   = INT2PTR(int(*)( float, double, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_ifdtd( c_func, f0, d1, t2, d3 )
	SV* c_func
	float f0
	double d1
	char * t2
	double d3
PREINIT:
	int (*func)( float, double, char *, double );
CODE:
	func   = INT2PTR(int(*)( float, double, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_ifdts( c_func, f0, d1, t2, s3 )
	SV* c_func
	float f0
	double d1
	char * t2
	short s3
PREINIT:
	int (*func)( float, double, char *, short );
CODE:
	func   = INT2PTR(int(*)( float, double, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_ifdtf( c_func, f0, d1, t2, f3 )
	SV* c_func
	float f0
	double d1
	char * t2
	float f3
PREINIT:
	int (*func)( float, double, char *, float );
CODE:
	func   = INT2PTR(int(*)( float, double, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_ifdtt( c_func, f0, d1, t2, t3 )
	SV* c_func
	float f0
	double d1
	char * t2
	char * t3
PREINIT:
	int (*func)( float, double, char *, char * );
CODE:
	func   = INT2PTR(int(*)( float, double, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_ifdti( c_func, f0, d1, t2, i3 )
	SV* c_func
	float f0
	double d1
	char * t2
	int i3
PREINIT:
	int (*func)( float, double, char *, int );
CODE:
	func   = INT2PTR(int(*)( float, double, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_ifdid( c_func, f0, d1, i2, d3 )
	SV* c_func
	float f0
	double d1
	int i2
	double d3
PREINIT:
	int (*func)( float, double, int, double );
CODE:
	func   = INT2PTR(int(*)( float, double, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_ifdis( c_func, f0, d1, i2, s3 )
	SV* c_func
	float f0
	double d1
	int i2
	short s3
PREINIT:
	int (*func)( float, double, int, short );
CODE:
	func   = INT2PTR(int(*)( float, double, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_ifdif( c_func, f0, d1, i2, f3 )
	SV* c_func
	float f0
	double d1
	int i2
	float f3
PREINIT:
	int (*func)( float, double, int, float );
CODE:
	func   = INT2PTR(int(*)( float, double, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_ifdit( c_func, f0, d1, i2, t3 )
	SV* c_func
	float f0
	double d1
	int i2
	char * t3
PREINIT:
	int (*func)( float, double, int, char * );
CODE:
	func   = INT2PTR(int(*)( float, double, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_ifdii( c_func, f0, d1, i2, i3 )
	SV* c_func
	float f0
	double d1
	int i2
	int i3
PREINIT:
	int (*func)( float, double, int, int );
CODE:
	func   = INT2PTR(int(*)( float, double, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, d1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_ifsdd( c_func, f0, s1, d2, d3 )
	SV* c_func
	float f0
	short s1
	double d2
	double d3
PREINIT:
	int (*func)( float, short, double, double );
CODE:
	func   = INT2PTR(int(*)( float, short, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_ifsds( c_func, f0, s1, d2, s3 )
	SV* c_func
	float f0
	short s1
	double d2
	short s3
PREINIT:
	int (*func)( float, short, double, short );
CODE:
	func   = INT2PTR(int(*)( float, short, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_ifsdf( c_func, f0, s1, d2, f3 )
	SV* c_func
	float f0
	short s1
	double d2
	float f3
PREINIT:
	int (*func)( float, short, double, float );
CODE:
	func   = INT2PTR(int(*)( float, short, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_ifsdt( c_func, f0, s1, d2, t3 )
	SV* c_func
	float f0
	short s1
	double d2
	char * t3
PREINIT:
	int (*func)( float, short, double, char * );
CODE:
	func   = INT2PTR(int(*)( float, short, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_ifsdi( c_func, f0, s1, d2, i3 )
	SV* c_func
	float f0
	short s1
	double d2
	int i3
PREINIT:
	int (*func)( float, short, double, int );
CODE:
	func   = INT2PTR(int(*)( float, short, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_ifssd( c_func, f0, s1, s2, d3 )
	SV* c_func
	float f0
	short s1
	short s2
	double d3
PREINIT:
	int (*func)( float, short, short, double );
CODE:
	func   = INT2PTR(int(*)( float, short, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_ifsss( c_func, f0, s1, s2, s3 )
	SV* c_func
	float f0
	short s1
	short s2
	short s3
PREINIT:
	int (*func)( float, short, short, short );
CODE:
	func   = INT2PTR(int(*)( float, short, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_ifssf( c_func, f0, s1, s2, f3 )
	SV* c_func
	float f0
	short s1
	short s2
	float f3
PREINIT:
	int (*func)( float, short, short, float );
CODE:
	func   = INT2PTR(int(*)( float, short, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_ifsst( c_func, f0, s1, s2, t3 )
	SV* c_func
	float f0
	short s1
	short s2
	char * t3
PREINIT:
	int (*func)( float, short, short, char * );
CODE:
	func   = INT2PTR(int(*)( float, short, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_ifssi( c_func, f0, s1, s2, i3 )
	SV* c_func
	float f0
	short s1
	short s2
	int i3
PREINIT:
	int (*func)( float, short, short, int );
CODE:
	func   = INT2PTR(int(*)( float, short, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_ifsfd( c_func, f0, s1, f2, d3 )
	SV* c_func
	float f0
	short s1
	float f2
	double d3
PREINIT:
	int (*func)( float, short, float, double );
CODE:
	func   = INT2PTR(int(*)( float, short, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_ifsfs( c_func, f0, s1, f2, s3 )
	SV* c_func
	float f0
	short s1
	float f2
	short s3
PREINIT:
	int (*func)( float, short, float, short );
CODE:
	func   = INT2PTR(int(*)( float, short, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_ifsff( c_func, f0, s1, f2, f3 )
	SV* c_func
	float f0
	short s1
	float f2
	float f3
PREINIT:
	int (*func)( float, short, float, float );
CODE:
	func   = INT2PTR(int(*)( float, short, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_ifsft( c_func, f0, s1, f2, t3 )
	SV* c_func
	float f0
	short s1
	float f2
	char * t3
PREINIT:
	int (*func)( float, short, float, char * );
CODE:
	func   = INT2PTR(int(*)( float, short, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_ifsfi( c_func, f0, s1, f2, i3 )
	SV* c_func
	float f0
	short s1
	float f2
	int i3
PREINIT:
	int (*func)( float, short, float, int );
CODE:
	func   = INT2PTR(int(*)( float, short, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_ifstd( c_func, f0, s1, t2, d3 )
	SV* c_func
	float f0
	short s1
	char * t2
	double d3
PREINIT:
	int (*func)( float, short, char *, double );
CODE:
	func   = INT2PTR(int(*)( float, short, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_ifsts( c_func, f0, s1, t2, s3 )
	SV* c_func
	float f0
	short s1
	char * t2
	short s3
PREINIT:
	int (*func)( float, short, char *, short );
CODE:
	func   = INT2PTR(int(*)( float, short, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_ifstf( c_func, f0, s1, t2, f3 )
	SV* c_func
	float f0
	short s1
	char * t2
	float f3
PREINIT:
	int (*func)( float, short, char *, float );
CODE:
	func   = INT2PTR(int(*)( float, short, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_ifstt( c_func, f0, s1, t2, t3 )
	SV* c_func
	float f0
	short s1
	char * t2
	char * t3
PREINIT:
	int (*func)( float, short, char *, char * );
CODE:
	func   = INT2PTR(int(*)( float, short, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_ifsti( c_func, f0, s1, t2, i3 )
	SV* c_func
	float f0
	short s1
	char * t2
	int i3
PREINIT:
	int (*func)( float, short, char *, int );
CODE:
	func   = INT2PTR(int(*)( float, short, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_ifsid( c_func, f0, s1, i2, d3 )
	SV* c_func
	float f0
	short s1
	int i2
	double d3
PREINIT:
	int (*func)( float, short, int, double );
CODE:
	func   = INT2PTR(int(*)( float, short, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_ifsis( c_func, f0, s1, i2, s3 )
	SV* c_func
	float f0
	short s1
	int i2
	short s3
PREINIT:
	int (*func)( float, short, int, short );
CODE:
	func   = INT2PTR(int(*)( float, short, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_ifsif( c_func, f0, s1, i2, f3 )
	SV* c_func
	float f0
	short s1
	int i2
	float f3
PREINIT:
	int (*func)( float, short, int, float );
CODE:
	func   = INT2PTR(int(*)( float, short, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_ifsit( c_func, f0, s1, i2, t3 )
	SV* c_func
	float f0
	short s1
	int i2
	char * t3
PREINIT:
	int (*func)( float, short, int, char * );
CODE:
	func   = INT2PTR(int(*)( float, short, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_ifsii( c_func, f0, s1, i2, i3 )
	SV* c_func
	float f0
	short s1
	int i2
	int i3
PREINIT:
	int (*func)( float, short, int, int );
CODE:
	func   = INT2PTR(int(*)( float, short, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, s1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_iffdd( c_func, f0, f1, d2, d3 )
	SV* c_func
	float f0
	float f1
	double d2
	double d3
PREINIT:
	int (*func)( float, float, double, double );
CODE:
	func   = INT2PTR(int(*)( float, float, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_iffds( c_func, f0, f1, d2, s3 )
	SV* c_func
	float f0
	float f1
	double d2
	short s3
PREINIT:
	int (*func)( float, float, double, short );
CODE:
	func   = INT2PTR(int(*)( float, float, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_iffdf( c_func, f0, f1, d2, f3 )
	SV* c_func
	float f0
	float f1
	double d2
	float f3
PREINIT:
	int (*func)( float, float, double, float );
CODE:
	func   = INT2PTR(int(*)( float, float, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_iffdt( c_func, f0, f1, d2, t3 )
	SV* c_func
	float f0
	float f1
	double d2
	char * t3
PREINIT:
	int (*func)( float, float, double, char * );
CODE:
	func   = INT2PTR(int(*)( float, float, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_iffdi( c_func, f0, f1, d2, i3 )
	SV* c_func
	float f0
	float f1
	double d2
	int i3
PREINIT:
	int (*func)( float, float, double, int );
CODE:
	func   = INT2PTR(int(*)( float, float, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_iffsd( c_func, f0, f1, s2, d3 )
	SV* c_func
	float f0
	float f1
	short s2
	double d3
PREINIT:
	int (*func)( float, float, short, double );
CODE:
	func   = INT2PTR(int(*)( float, float, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_iffss( c_func, f0, f1, s2, s3 )
	SV* c_func
	float f0
	float f1
	short s2
	short s3
PREINIT:
	int (*func)( float, float, short, short );
CODE:
	func   = INT2PTR(int(*)( float, float, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_iffsf( c_func, f0, f1, s2, f3 )
	SV* c_func
	float f0
	float f1
	short s2
	float f3
PREINIT:
	int (*func)( float, float, short, float );
CODE:
	func   = INT2PTR(int(*)( float, float, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_iffst( c_func, f0, f1, s2, t3 )
	SV* c_func
	float f0
	float f1
	short s2
	char * t3
PREINIT:
	int (*func)( float, float, short, char * );
CODE:
	func   = INT2PTR(int(*)( float, float, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_iffsi( c_func, f0, f1, s2, i3 )
	SV* c_func
	float f0
	float f1
	short s2
	int i3
PREINIT:
	int (*func)( float, float, short, int );
CODE:
	func   = INT2PTR(int(*)( float, float, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_ifffd( c_func, f0, f1, f2, d3 )
	SV* c_func
	float f0
	float f1
	float f2
	double d3
PREINIT:
	int (*func)( float, float, float, double );
CODE:
	func   = INT2PTR(int(*)( float, float, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_ifffs( c_func, f0, f1, f2, s3 )
	SV* c_func
	float f0
	float f1
	float f2
	short s3
PREINIT:
	int (*func)( float, float, float, short );
CODE:
	func   = INT2PTR(int(*)( float, float, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_iffff( c_func, f0, f1, f2, f3 )
	SV* c_func
	float f0
	float f1
	float f2
	float f3
PREINIT:
	int (*func)( float, float, float, float );
CODE:
	func   = INT2PTR(int(*)( float, float, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_iffft( c_func, f0, f1, f2, t3 )
	SV* c_func
	float f0
	float f1
	float f2
	char * t3
PREINIT:
	int (*func)( float, float, float, char * );
CODE:
	func   = INT2PTR(int(*)( float, float, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_ifffi( c_func, f0, f1, f2, i3 )
	SV* c_func
	float f0
	float f1
	float f2
	int i3
PREINIT:
	int (*func)( float, float, float, int );
CODE:
	func   = INT2PTR(int(*)( float, float, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_ifftd( c_func, f0, f1, t2, d3 )
	SV* c_func
	float f0
	float f1
	char * t2
	double d3
PREINIT:
	int (*func)( float, float, char *, double );
CODE:
	func   = INT2PTR(int(*)( float, float, char *, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, d3 );
OUTPUT:
	RETVAL

int
nci_iffts( c_func, f0, f1, t2, s3 )
	SV* c_func
	float f0
	float f1
	char * t2
	short s3
PREINIT:
	int (*func)( float, float, char *, short );
CODE:
	func   = INT2PTR(int(*)( float, float, char *, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, s3 );
OUTPUT:
	RETVAL

int
nci_ifftf( c_func, f0, f1, t2, f3 )
	SV* c_func
	float f0
	float f1
	char * t2
	float f3
PREINIT:
	int (*func)( float, float, char *, float );
CODE:
	func   = INT2PTR(int(*)( float, float, char *, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, f3 );
OUTPUT:
	RETVAL

int
nci_ifftt( c_func, f0, f1, t2, t3 )
	SV* c_func
	float f0
	float f1
	char * t2
	char * t3
PREINIT:
	int (*func)( float, float, char *, char * );
CODE:
	func   = INT2PTR(int(*)( float, float, char *, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, t3 );
OUTPUT:
	RETVAL

int
nci_iffti( c_func, f0, f1, t2, i3 )
	SV* c_func
	float f0
	float f1
	char * t2
	int i3
PREINIT:
	int (*func)( float, float, char *, int );
CODE:
	func   = INT2PTR(int(*)( float, float, char *, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, t2, i3 );
OUTPUT:
	RETVAL

int
nci_iffid( c_func, f0, f1, i2, d3 )
	SV* c_func
	float f0
	float f1
	int i2
	double d3
PREINIT:
	int (*func)( float, float, int, double );
CODE:
	func   = INT2PTR(int(*)( float, float, int, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, d3 );
OUTPUT:
	RETVAL

int
nci_iffis( c_func, f0, f1, i2, s3 )
	SV* c_func
	float f0
	float f1
	int i2
	short s3
PREINIT:
	int (*func)( float, float, int, short );
CODE:
	func   = INT2PTR(int(*)( float, float, int, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, s3 );
OUTPUT:
	RETVAL

int
nci_iffif( c_func, f0, f1, i2, f3 )
	SV* c_func
	float f0
	float f1
	int i2
	float f3
PREINIT:
	int (*func)( float, float, int, float );
CODE:
	func   = INT2PTR(int(*)( float, float, int, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, f3 );
OUTPUT:
	RETVAL

int
nci_iffit( c_func, f0, f1, i2, t3 )
	SV* c_func
	float f0
	float f1
	int i2
	char * t3
PREINIT:
	int (*func)( float, float, int, char * );
CODE:
	func   = INT2PTR(int(*)( float, float, int, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, t3 );
OUTPUT:
	RETVAL

int
nci_iffii( c_func, f0, f1, i2, i3 )
	SV* c_func
	float f0
	float f1
	int i2
	int i3
PREINIT:
	int (*func)( float, float, int, int );
CODE:
	func   = INT2PTR(int(*)( float, float, int, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, f1, i2, i3 );
OUTPUT:
	RETVAL

int
nci_iftdd( c_func, f0, t1, d2, d3 )
	SV* c_func
	float f0
	char * t1
	double d2
	double d3
PREINIT:
	int (*func)( float, char *, double, double );
CODE:
	func   = INT2PTR(int(*)( float, char *, double, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, d3 );
OUTPUT:
	RETVAL

int
nci_iftds( c_func, f0, t1, d2, s3 )
	SV* c_func
	float f0
	char * t1
	double d2
	short s3
PREINIT:
	int (*func)( float, char *, double, short );
CODE:
	func   = INT2PTR(int(*)( float, char *, double, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, s3 );
OUTPUT:
	RETVAL

int
nci_iftdf( c_func, f0, t1, d2, f3 )
	SV* c_func
	float f0
	char * t1
	double d2
	float f3
PREINIT:
	int (*func)( float, char *, double, float );
CODE:
	func   = INT2PTR(int(*)( float, char *, double, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, f3 );
OUTPUT:
	RETVAL

int
nci_iftdt( c_func, f0, t1, d2, t3 )
	SV* c_func
	float f0
	char * t1
	double d2
	char * t3
PREINIT:
	int (*func)( float, char *, double, char * );
CODE:
	func   = INT2PTR(int(*)( float, char *, double, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, t3 );
OUTPUT:
	RETVAL

int
nci_iftdi( c_func, f0, t1, d2, i3 )
	SV* c_func
	float f0
	char * t1
	double d2
	int i3
PREINIT:
	int (*func)( float, char *, double, int );
CODE:
	func   = INT2PTR(int(*)( float, char *, double, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, d2, i3 );
OUTPUT:
	RETVAL

int
nci_iftsd( c_func, f0, t1, s2, d3 )
	SV* c_func
	float f0
	char * t1
	short s2
	double d3
PREINIT:
	int (*func)( float, char *, short, double );
CODE:
	func   = INT2PTR(int(*)( float, char *, short, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, d3 );
OUTPUT:
	RETVAL

int
nci_iftss( c_func, f0, t1, s2, s3 )
	SV* c_func
	float f0
	char * t1
	short s2
	short s3
PREINIT:
	int (*func)( float, char *, short, short );
CODE:
	func   = INT2PTR(int(*)( float, char *, short, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, s3 );
OUTPUT:
	RETVAL

int
nci_iftsf( c_func, f0, t1, s2, f3 )
	SV* c_func
	float f0
	char * t1
	short s2
	float f3
PREINIT:
	int (*func)( float, char *, short, float );
CODE:
	func   = INT2PTR(int(*)( float, char *, short, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, f3 );
OUTPUT:
	RETVAL

int
nci_iftst( c_func, f0, t1, s2, t3 )
	SV* c_func
	float f0
	char * t1
	short s2
	char * t3
PREINIT:
	int (*func)( float, char *, short, char * );
CODE:
	func   = INT2PTR(int(*)( float, char *, short, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, t3 );
OUTPUT:
	RETVAL

int
nci_iftsi( c_func, f0, t1, s2, i3 )
	SV* c_func
	float f0
	char * t1
	short s2
	int i3
PREINIT:
	int (*func)( float, char *, short, int );
CODE:
	func   = INT2PTR(int(*)( float, char *, short, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, s2, i3 );
OUTPUT:
	RETVAL

int
nci_iftfd( c_func, f0, t1, f2, d3 )
	SV* c_func
	float f0
	char * t1
	float f2
	double d3
PREINIT:
	int (*func)( float, char *, float, double );
CODE:
	func   = INT2PTR(int(*)( float, char *, float, double ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, d3 );
OUTPUT:
	RETVAL

int
nci_iftfs( c_func, f0, t1, f2, s3 )
	SV* c_func
	float f0
	char * t1
	float f2
	short s3
PREINIT:
	int (*func)( float, char *, float, short );
CODE:
	func   = INT2PTR(int(*)( float, char *, float, short ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, s3 );
OUTPUT:
	RETVAL

int
nci_iftff( c_func, f0, t1, f2, f3 )
	SV* c_func
	float f0
	char * t1
	float f2
	float f3
PREINIT:
	int (*func)( float, char *, float, float );
CODE:
	func   = INT2PTR(int(*)( float, char *, float, float ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, f3 );
OUTPUT:
	RETVAL

int
nci_iftft( c_func, f0, t1, f2, t3 )
	SV* c_func
	float f0
	char * t1
	float f2
	char * t3
PREINIT:
	int (*func)( float, char *, float, char * );
CODE:
	func   = INT2PTR(int(*)( float, char *, float, char * ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, t3 );
OUTPUT:
	RETVAL

int
nci_iftfi( c_func, f0, t1, f2, i3 )
	SV* c_func
	float f0
	char * t1
	float f2
	int i3
PREINIT:
	int (*func)( float, char *, float, int );
CODE:
	func   = INT2PTR(int(*)( float, char *, float, int ), SvIV(c_func) );
	RETVAL = (*func)( f0, t1, f2, i3 );
OUTPUT:
	RETVAL

int
nci_ifttd( c_func, f0, t1, t2, d3 )
	SV* c_func
	float f0
	char * t1
	char * t2
	double d3
PREINIT:
	int (*func)( float, char *, char *, double );
CODE:
	func   = INT2PTR(int(*)( float, char *, char *, double ), SvIV(c_func) );