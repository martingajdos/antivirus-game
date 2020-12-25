/// @description DRAW CAMERA
d3d_set_projection_ext(x, y, player_height + headbob * 6, xto, yto, zto + headbob * 6, 0, 0, 1, FOV + RUN_FOV, 1/1, 1, 1000000);

/*
len_x = lengthdir_x(cam_dist, facing + 210);
len_y = lengthdir_y(cam_dist, facing + 210);

d3d_set_projection_ext(x + len_x, y + len_y, z + cam_height,
                        x + len_x + cos(degtorad(facing)), y + len_y - sin(degtorad(facing)),
                        z + cam_height + tan(degtorad(pitch)),
                        0, 0, 1, 75, 1.78, 1, 999999);

*/

/* */
/*  */
