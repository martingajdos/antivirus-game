d3d_set_fog(false, global.fog_color, 0, global.fog_distance);


draw_sprite(spr_gui, 0, 0, 0);
/*
if (global.DRAW_WINDOW_BORDER) {
    
    var border_color = c_black;//make_colour_rgb(51, 51, 51);
    draw_set_color(border_color);
    draw_rectangle(0, 0, global.BORDER_SIZE, 512, false);
    draw_rectangle(0, 0, 512, global.BORDER_SIZE, false);
    draw_rectangle(512 - global.BORDER_SIZE - 1, 0, 512, 512, false);
    draw_set_color(c_white);

}
*/

var left = 216;
var high = 512 - 80;


for (var i = 0; i < 3; i++) {
    draw_sprite(spr_blank, 0, 72 * i + left, high);
}


with (obj_player) {
    var left = 208;
    var high = 512 - 80;
    draw_sprite(spr_gun_hand_icon, 0, left, high);
    if (gun_0_owned) draw_sprite(spr_gun0_icon, 0, left + 72, high);
    if (gun_1_owned) draw_sprite(spr_gun1_icon, 0, left + 72 * 2, high);
    if (gun_2_owned) draw_sprite(spr_gun2_icon, 0, left + 72 * 3, high);
    
    switch (current_gun) {
        case obj_hand:
            draw_sprite(spr_gun_selection, 0, left, high);
        break
        
        case obj_pistol:
            draw_sprite(spr_gun_selection, 0, left + 72, high);
        break;
        
        case obj_machinegun:
            draw_sprite(spr_gun_selection, 0, left + 72 * 2, high);
        break;
        
        case obj_shotgun:
            draw_sprite(spr_gun_selection, 0, left + 72 * 3, high);
        break;
    }
    
}


d3d_set_fog(true, global.fog_color, 0, global.fog_distance);

/* */
/*  */
