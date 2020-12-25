draw_set_color(c_black);
draw_set_font(f_normal);

draw_set_color(c_black);
var n = 10;

draw_set_font(f_normal_title);
draw_text(160, 195 + 15 + n, string_hash_to_newline("YES"));
draw_text(160, 195 + 15 * 3 + n, string_hash_to_newline("NO"));

//draw_text(140, 150, "ARE YOU SURE");
draw_set_color(c_white);

