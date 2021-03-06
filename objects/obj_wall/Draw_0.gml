/// @description DRAW WALL

var tex = background_get_texture(bg_wall0);
var w = image_xscale * 16;
var h = image_yscale * 16;
var z = 128;
var coef = 64;

d3d_draw_wall(x, y, 0, x + w, y, z, tex, w / coef, z / coef);
d3d_draw_wall(x + w, y + h, 0, x, y + h, z, tex, w / coef, z / coef);
d3d_draw_wall(x, y + h, 0, x, y, z, tex, h / coef, z / coef);
d3d_draw_wall(x + w, y, 0, x + w, y + h, z, tex, h / coef, z / coef);

