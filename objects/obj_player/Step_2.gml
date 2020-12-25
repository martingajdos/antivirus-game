var __b__;
__b__ = action_if(global.can_calc);
if __b__
{
{
///WEAPON SWITCHING

// Switching weapons depending on the pressed key (1, 2, 3, 4)
if (keyboard_check_pressed(ord("1"))) {

    with (current_gun) instance_destroy();
    current_gun = instance_create(0, 0, obj_hand);
    current_gun = obj_hand;

} else if (keyboard_check_pressed(ord("2")) && gun_0_owned) {

    with (current_gun) instance_destroy();
    current_gun = instance_create(0, 0, obj_pistol);
    current_gun = obj_pistol;

} else if (keyboard_check_pressed(ord("3")) && gun_1_owned) {
    
    with (current_gun) instance_destroy();
    current_gun = instance_create(0, 0, obj_machinegun);
    current_gun = obj_machinegun;

} else if (keyboard_check_pressed(ord("4")) && gun_2_owned) {
    
    with (current_gun) instance_destroy();
    current_gun = instance_create(0, 0, obj_shotgun);
    current_gun = obj_shotgun;

}

///MOVEMENT

// Gaining speed
move_f += keyboard_check(forward) * accel;
move_f -= keyboard_check(back) * accel;
move_s += keyboard_check(left) * accel;
move_s -= keyboard_check(right) * accel;

// Running and changing the FOV
if (keyboard_check(vk_shift)) {
    
    maxspeed = 4;
    if (RUN_FOV < RUN_FOV_MAX) RUN_FOV += RUN_FOV_SPEED;

} else {

    maxspeed = 4;
    if (RUN_FOV < RUN_FOV_MAX) RUN_FOV += RUN_FOV_SPEED;

}

// Clamp the maximum speed while moving forward or to the sides
move_f = clamp(move_f, -maxspeed, maxspeed);
move_s = clamp(move_s, -maxspeed, maxspeed);

/*
if (keyboard_check_pressed(vk_space) && player_height == default_player_height) {
    zspeed = 10;
}

player_height += zspeed;

if (player_height < default_player_height) {
    player_height = default_player_height;
    zspeed = 0;
}

zspeed -= 0.5;
*/



// Slow down

if (!keyboard_check(forward) && !keyboard_check(back) && move_f != 0) move_f -= accel * sign(move_f);
if (!keyboard_check(left) && !keyboard_check(right) && move_s != 0) move_s -= accel * sign(move_s);

// Applying actual movement
hsp = lengthdir_x(move_f, direction) + lengthdir_x(move_s, direction + 90);
vsp = lengthdir_y(move_f, direction) + lengthdir_y(move_s, direction + 90);


/* */
///COLLISIONS

// Variables determining the allowance of moving on a particular axis
var blockedX = false;
var blockedY = false;

// Checking for collisions on the X axis
with (obj_collidable) {
    if (p3dc_check(other.collision_player, other.x + other.hsp, other.y, 0, collision_mask, x, y, 0)) {
        blockedX = true;
        break;
    }
}

if (!blockedX) x += hsp;

// Checking for collisions on the Y axis
with (obj_collidable) {
    if (p3dc_check(other.collision_player, other.x, other.y + other.vsp, 0, collision_mask, x, y, 0)) {
        blockedY = true;
        break;
    }
}

if (!blockedY) y += vsp;

/* */
///SHOOTING

// rate of fire
if (can_shoot > 0) can_shoot--;

switch (current_gun.object_index) {
    
    // STRIKE HAND
    case obj_hand:
        if (((mouse_check_button_pressed(mb_left) && !global.keyboard_only) || keyboard_check_pressed(vk_space)) && !can_shoot) {
            with(current_gun) { image_index = 0; image_speed = 0.6; }
        
            scr_set_firing_options(
                global.DELAY_HAND,
                global.RECOIL_HAND
            );
            
            // Strike hand
            var n = instance_create(x, y, obj_hand_strike);
            n.z = player_height;
            n.xto = xto - x;
            n.yto = yto - y;
            n.zto = zto - player_height;
            n.damage = 18;
            
        }
    break;

    // FIRE PISTOL
    case obj_pistol:
        if (((mouse_check_button_pressed(mb_left) && !global.keyboard_only) || keyboard_check_pressed(vk_space)) && !can_shoot) {
            with(current_gun) { image_index = 0; image_speed = 0.6; }
        
            scr_set_firing_options(
                global.DELAY_PISTOL,
                global.RECOIL_PISTOL
            );
            
            // Create bullet
            var n = instance_create(x, y, obj_bullet);
            n.z = player_height;
            n.xto = xto - x;
            n.yto = yto - y;
            n.zto = zto - player_height;
            n.damage = 25;
        }
    break;
    
    // FIRE MACHINE GUN
    case obj_machinegun:
        if (((mouse_check_button(mb_left) && !global.keyboard_only) || keyboard_check(vk_space)) && !can_shoot) {
            with(current_gun) { image_index = 0; image_speed = 0.6; }
            
            scr_set_firing_options(
                global.DELAY_MACHINEGUN,
                global.RECOIL_MACHINEGUN
            );
            
            // Create bullet
            var n = instance_create(x, y, obj_bullet);
            n.z = player_height;
            n.xto = xto - x;
            n.yto = yto - y;
            n.zto = zto - player_height;
            n.damage = 25;
        }
    break;
    
    // FIRE SHOTGUN
    case obj_shotgun:
        if (((mouse_check_button_pressed(mb_left) && !global.keyboard_only) || keyboard_check_pressed(vk_space)) && !can_shoot) {
            with(current_gun) { image_index = 0; image_speed = 0.6; }
        
            scr_set_firing_options(
                global.DELAY_SHOTGUN,
                global.RECOIL_SHOTGUN
            );
            
            // Create bullet
            var n = instance_create(x, y, obj_bullet);
            n.z = player_height;
            n.xto = xto - x;
            n.yto = yto - y;
            n.zto = zto - player_height;
            n.damage = 100;
        }
    break;
}

/* */
///CAMERA ROTATION

// Used for objects always facing camera
camsine = sin(degtorad(direction));
camcosine = cos(degtorad(direction));

// Rotating the camera view if mouse is allowed

if (obj_settings_rememberer._MOUSE == 1) {
    global.keyboard_only = false;
    direction -= (display_mouse_get_x() - display_get_width() / 2) / 14;
    zdir -= (display_mouse_get_y() - display_get_height() / 2) / 25;
}

if (obj_settings_rememberer._MOUSE == -1) {
    global.keyboard_only = true;
}

// Rotating the camera view using keyboard arrows
if (keyboard_check(vk_left)) { direction += 2.0;  wep_lag_hor += 13; }
if (keyboard_check(vk_right)) { direction -= 2.0 wep_lag_hor -= 13; }

// Clamping the z-direction variable (only useful when looking up & down is allowed)
zdir = clamp(zdir, -70, 70);

//weapon lag
if (!global.keyboard_only) {
    wep_lag_hor -= (display_mouse_get_x() - display_get_width() / 2) / 14 * 5;
    wep_lag_ver -= (display_mouse_get_y() - display_get_height() / 2) / 14 * 5;
}

// Z-direction variables (only useful when looking up & down is allowed)
var d = degtorad(direction);
if (global.ALLOW_Z_AXIS) zd = degtorad(zdir); else zd = 0;

// Locating a point in space where the camera view is looking at using triginometry
xto = x + cos(d) * abs(sin(zd) + sign(-zdir));
yto = y - sin(d) * abs(sin(zd) + sign(-zdir));
zto = player_height + sin(zd);

// Keeping the mouse in the center of the window
var centerx = display_get_width() / 2;
var centery = display_get_height() / 2;

if (obj_settings_rememberer._MOUSE == 1) 
    if (mouse_locked)
        display_mouse_set(centerx, centery);        

//Reset weapon lag
if (abs(wep_lag_hor) >= 0.001) wep_lag_hor /= 1.1; else wep_lag_hor = 0;
if (abs(wep_lag_ver) >= 0.001) wep_lag_ver /= 1.1; else wep_lag_ver = 0;

// Fix the zdir bug
if (alarm[1] == -1 && !ALARM_FIX_ZDIR_DONE) alarm[1] = 1;


//////////////////////////////////////////

/*
display_w = display_get_width();
display_h = display_get_height();

change_x = (display_mouse_get_x() - display_w / 2) / 9;
change_y = (display_mouse_get_y() - display_h / 2) / 9;

display_mouse_set(display_w /2, display_h / 2);

facing -= change_x;
pitch -= change_y;

pitch = clamp(pitch, -89, 89);

var lenx, leny;
lenx = lengthdir_x(32, direction);
leny = lengthdir_y(32, direction);

point_x += (lenx - point_x) / 2.5;
point_y += (leny - point_y) / 2.5;

faced = point_direction(x, y, x + point_x, y + point_y);
*/

/* */
///WEAPON / CAMERA TWEENING

// Applying the recoil
if (recoil > 0.01) recoil /= 1.2; else recoil = 0;

// Applying headbobbing
if (move_f != 0 || move_s != 0) {
    if (headbob_counter < 360)
        headbob_counter += 0.23;
    else headbob_counter = 0;
        
    headbob = sin(headbob_counter) / 2;
    wepbob = sin(headbob_counter / 2) / 2;
} else {
    headbob_count = 0;
    
    if (abs(headbob) >= 0.001) headbob *= 0.9;
    if (abs(wepbob) >= 0.001) wepbob *= 0.9;
}

/* */
}
}
if (keyboard_check_pressed(ord("R"))) { mouse_locked = !mouse_locked; global.can_calc = !global.can_calc; }
if (keyboard_check_pressed(ord("K"))) global.keyboard_only = !global.keyboard_only;

if (global.keyboard_only) global.WINDOW_DRAGGABLE = true; else {
    global.WINDOW_DRAGGABLE = false;
    // Centering the screen
    
    window_center();
}

/* */
/*  */
