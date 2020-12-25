texture_set_interpolation(false);
window_set_color(c_black);
display_set_gui_size(global.SCREEN_WIDTH, global.SCREEN_HEIGHT);
draw_set_alpha_test_ref_value(20);
draw_set_alpha_test(true);
d3d_set_culling(true);
d3d_set_hidden(true);
d3d_set_depth(-1000);
d3d_set_perspective(true);