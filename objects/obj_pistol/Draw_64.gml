/// @description Draw the sprite on GUI layer

d3d_set_fog(false, global.fog_color, 0, global.fog_distance);

var r = obj_player.recoil;
var w = obj_player.wepbob;
var h = obj_player.headbob;
var lagh = obj_player.wep_lag_hor;
var lagv = obj_player.wep_lag_ver;

draw_sprite_ext(
        sprite_index,
        image_index,
        512/2 + (w * 28) + lagh / 3,
        438 + r * 10 + (h * 28) + gun_height, //512 + r * 10 + (h * 28) + lagv / 3,
        1, 1,
        -r - lagh / 80,
        c_white, image_alpha
    );
    

d3d_set_fog(true, global.fog_color, 0, global.fog_distance);

//draw_sprite(sprite_index, image_index, 900, 720);
//draw_sprite(sprite_index, image_index, 0, 0);

