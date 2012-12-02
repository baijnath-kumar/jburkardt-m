function obj_io_test03 ( output_file_name )

%*****************************************************************************80
%
%% TEST03 tests OBJ_WRITE.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    27 September 2008
%
%  Author:
%
%    John Burkardt
%
  face_num = 12;
  node_num = 8;
  normal_num = 6;
  order_max = 3;

  face_node = [ ...
    1, 3, 2; ...
    2, 3, 4; ...
    1, 6, 5; ...
    1, 2, 6; ...
    3, 7, 4; ...
    4, 7, 8; ...
    5, 6, 8; ...
    5, 8, 7; ...
    1, 5, 7; ...
    1, 7, 3; ...
    2, 4, 6; ...
    6, 4, 8 ]';
  face_order = [ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 ];
  normal_vector = [ ...
    0.0,  0.0,  1.0; ...
    0.0,  0.0, -1.0; ...
    0.0,  1.0,  0.0; ...
    0.0, -1.0,  0.0; ...
    1.0,  0.0,  0.0; ...
   -1.0,  0.0,  0.0 ]';
  node_xyz = [ ...
    0.0, 0.0, 0.0; ...
    1.0, 0.0, 0.0; ...
    0.0, 1.0, 0.0; ...
    1.0, 1.0, 0.0; ...
    0.0, 0.0, 1.0; ...
    1.0, 0.0, 1.0; ...
    0.0, 1.0, 1.0; ...
    1.0, 1.0, 1.0 ]';
  vertex_normal = [ ...
    2, 2, 2; ...
    2, 2, 2; ...
    4, 4, 4; ...
    4, 4, 4; ...
    3, 3, 3; ...
    3, 3, 3; ...
    1, 1, 1; ...
    1, 1, 1; ...
    6, 6, 6; ...
    6, 6, 6; ...
    5, 5, 5; ...
    5, 5, 5 ]';

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST03\n' );
  fprintf ( 1, '  OBJ_WRITE writes an ASCII OBJ file.\n' );

  obj_write ( output_file_name, node_num, face_num, normal_num, ...
    order_max, node_xyz, face_order, face_node, normal_vector, vertex_normal );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Graphics data was written to the OBJ file "%s".\n', ...
    output_file_name );

  return
end