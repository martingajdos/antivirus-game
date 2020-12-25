draw_set_color(c_black);
draw_set_font(f_normal);

draw_set_color(c_black);
var n = 16;

draw_set_font(f_normal_title);
draw_text(160, 195  + n, string_hash_to_newline("SETTINGS"));
draw_text(160, 195 + 15 * 2 + n, string_hash_to_newline("CREDITS"));
draw_set_font(f_normal);
draw_text(160, 195 + 15 * 5 + n - 15, string_hash_to_newline("BACK"));

//draw_text(140, 150, "ARE YOU SURE");
draw_set_color(c_white);

