// Exit game
if (keyboard_check(vk_escape)) instance_create(0, 0, obj_fade_menu);
// Toggle fullscreen
// Toggle keyboard only (mouse functionality gets disabled if true)
if (global.keyboard_only) window_set_cursor(cr_default); else window_set_cursor(cr_none);


