/// @description Draw crossair

var xx = display_get_gui_width() / 2;
var yy = display_get_gui_height() / 2;

d3d_set_fog(true, global.fog_color, global.fog_color, global.fog_distance);
draw_sprite(spr_crossair, 0, xx, yy - 12);
d3d_set_fog(true, global.fog_color, global.fog_color, global.fog_distance);

