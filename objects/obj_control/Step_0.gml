// Exit game
if (keyboard_check(vk_escape)) {
    d3d_end();
    with (obj_control) {
        instance_destroy();
    }
    instance_create(0, 0, obj_fade_menu);
}
// Toggle fullscreen
// Toggle keyboard only (mouse functionality gets disabled if true)
// Print FPS & TICKS to the debug window
if (alarm[1] == -1) alarm[1] = room_speed;

