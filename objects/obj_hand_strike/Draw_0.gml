var tex = sprite_get_texture(spr_wall, 0);
var s = 4;

d3d_draw_ellipsoid(x - s, y - s, z - s, x + s, y + s, z + s, tex, 1, 1, 16);

