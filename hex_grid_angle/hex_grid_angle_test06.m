function hex_grid_angle_test06 ( )

%*****************************************************************************80
%
%% TEST06 tests HEX_GRID_ANGLE_01_WRITE.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    24 October 2006
%
%  Author:
%
%    John Burkardt
%
  dim_num = 2;

  box = [ ...
    10.0, 2.0;
    12.0, 2.5 ]';
  file_name = 'hex_grid_angle_dataset.txt';
  seed = 123456789;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST06\n' );
  fprintf ( 1, '  HEX_GRID_ANGLE_WRITE writes the points of a\n' );
  fprintf ( 1, '  angled hexagonal grid to a file.\n' );

  fprintf ( 1, '\n' );
  fprintf ( 1, '        CENTER           ANGLE       H         N\n' );
  fprintf ( 1, '\n' );

  for i = 1 : 3

    center(1:dim_num) = 0.5 * ( box(1:dim_num,1) +  box(1:dim_num,2) );
    [ t, seed ] = r8_uniform_01 ( seed );
    angle = 180.0 * t;
    h = 0.107457;

    n = hex_grid_angle_size ( box, center, angle, h );

    fprintf ( 1, '  %8f  %8f  %8f  %10f  %6d\n', ...
      center(1:dim_num), angle, h, n );

  end

  r = hex_grid_angle ( box, center, angle, h, n );

  hex_grid_angle_write ( box, center, angle, h, n, r, file_name );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  The data was written to "%s".\n', file_name );

  return
end
