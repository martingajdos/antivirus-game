var tex = sprite_get_texture(sprite_index, image_index);
var size = 16;
d3d_draw_wall(x - size * camsine, y - size * camcosine, 34 + bob * 4, x + size * camsine, y + size * camcosine, 2 + bob * 4, tex, 1, 1);

