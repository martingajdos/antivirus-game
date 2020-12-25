/// @description draw enemy

var tex = sprite_get_texture(sprite_index, image_index);

if (hp <= 0) {
    d3d_draw_wall(x - 10 * camsine, y - 10 * camcosine, 10, x + 10 * camsine, y + 10 * camcosine, 0, tex, 1, 1);
} else d3d_draw_wall(x - 10 * camsine, y - 10 * camcosine, height, x + 10 * camsine, y + 10 * camcosine, 0, tex, 1, 1);

