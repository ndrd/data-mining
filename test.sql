DROP FUNCTION gsl_complex_add ( __complex, __complex );
DROP TYPE __complex;

CREATE TYPE __complex AS ( r float, i float );

CREATE OR REPLACE FUNCTION
  gsl_complex_add( __complex, __complex )
RETURNS
  __complex
AS
  'example.so', 'c_complex_add'
LANGUAGE
  C
STRICT
IMMUTABLE;

select gsl_complex_add( ROW( 3.2e4, -3.2 ), ROW( 4.1, 4.245e-3 ) );