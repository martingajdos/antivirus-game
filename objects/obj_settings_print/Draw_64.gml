draw_set_color(c_black);
draw_set_font(f_normal);

draw_set_color(c_black);
var n = 18;

draw_set_font(f_normal_title);
draw_text(160, 195  + n, string_hash_to_newline("FULLSCREEN "));
draw_text(160, 195 + 15 * 2 + n, string_hash_to_newline("USE MOUSE "));

if (obj_settings_rememberer._FULLSCREEN == -1)
    draw_text(160 + 150, 195  + n, string_hash_to_newline(" OFF"));
else if (obj_settings_rememberer._FULLSCREEN == 1)
    draw_text(160 + 150, 195  + n, string_hash_to_newline(" ON"));
    

if (obj_settings_rememberer._MOUSE == -1)
    draw_text(160 + 150, 195 + 15 * 2 + n, string_hash_to_newline(" OFF"));
else if (obj_settings_rememberer._MOUSE == 1)
    draw_text(160 + 150, 195 + 15 * 2 + n, string_hash_to_newline(" ON"));

draw_set_font(f_normal);
draw_text(160, 195 + 15 * 5 + n, string_hash_to_newline("BACK"));

//draw_text(140, 150, "ARE YOU SURE");
draw_set_color(c_white);

