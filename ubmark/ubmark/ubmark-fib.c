//========================================================================
// ubmark-bin-search
//========================================================================

#include "ubmark.h"
#include "ubmark-fib.dat"

//------------------------------------------------------------------------
// recursive fibonacci
//------------------------------------------------------------------------

int fib_rec( int n )
{
	if (n <= 1) { 
		return n;
	}
	return fib_rec (n - 1) + fib_rec (n - 2);
}

__attribute__ ((noinline))

void fib (int input[], int in_sz, int out[]) {
	for (int i = 0; i < in_sz; i++) { 
		out[i] = fib_rec(input[i]);
	}
}




//------------------------------------------------------------------------
// verify_results
//------------------------------------------------------------------------

void verify_results( int values[], int ref[], int size )
{
  int temp = 0;
  int i;
  for ( i = 0; i < size; i++ ) {
    if ( !( values[i] == ref[i] ) ) {
      test_fail( i );
    }
  }
  test_pass( temp );
}

//------------------------------------------------------------------------
// Test harness
//------------------------------------------------------------------------

int main( int argc, char* argv[] )
{

  int size = 10;
  int out[size];

  int i;
  for ( i = 0; i < size; i++ )
    out[i] = 0;

  int temp = 0;

  test_stats_on( temp );
  fib( input, in_sz, out );
  test_stats_off( temp );

  verify_results( out, ref, size );

  return 0;

}

