function test0764 ( )

%*****************************************************************************80
%
%% TEST0764 tests R8MAT_REF.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    02 October 2008
%
%  Author:
%
%    John Burkardt
%
  m = 4;
  n = 7;

  a = [ ...
    1.0, -2.0, 3.0, -1.0; ...
    3.0, -6.0, 9.0, -3.0; ...
    0.0,  0.0, 0.0,  0.0; ...
    2.0, -2.0, 0.0,  1.0; ...
    6.0, -8.0, 6.0,  0.0; ...
    3.0,  3.0, 6.0,  9.0; ...
    1.0,  1.0, 2.0,  3.0 ]';

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST0764\n' );
  fprintf ( 1, '  R8MAT_REF computes the row echelon form of a matrix.\n' );

  r8mat_print ( m, n, a, '  Input A:' );

  a = r8mat_ref ( m, n, a );

  r8mat_print ( m, n, a, '  REF form:' );

  return
end
