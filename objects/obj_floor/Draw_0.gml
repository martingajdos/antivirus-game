/// @description DRAW FLOOR
var w       =   image_xscale * 16;
var h       =   image_yscale * 16;
var tex     =   background_get_texture(bg_floor0);

d3d_draw_floor(x + w, y, 0, x, y + h, 0, tex, w / 128, h / 128);

