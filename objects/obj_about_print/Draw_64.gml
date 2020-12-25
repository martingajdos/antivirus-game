draw_set_color(c_black);
draw_set_font(f_normal);

draw_set_color(c_black);
var n = 20;
var b = 20;
down = 45;
//draw_text(160, 150 + n - b, "CREDITS");

draw_set_font(f_normal);
draw_text(160, 195  + n - b, string_hash_to_newline("DEVELOPER"));
draw_set_font(f_normal_title);
draw_text(160, 195 + 15 + n - b, string_hash_to_newline("MARTIN GAJDOS"));


draw_set_font(f_normal);
draw_text(160, 195  + n + down - b, string_hash_to_newline("GFX DESIGNER"));
draw_set_font(f_normal_title);
draw_text(160, 195 + 15 + n + down - b, string_hash_to_newline("MARTIN GAJDOS"));

draw_set_font(f_normal);
draw_text(160, 195  + n + down * 2 - b, string_hash_to_newline("INTELECTUAL PROPERTY OF"));
draw_set_font(f_normal_title);
draw_text(160, 195 + 15 + n + down * 2 - b, string_hash_to_newline("ROOT SOFTWARE"));

draw_set_font(f_normal);
draw_text(160, 195 + 15 + n + down * 3 - b, string_hash_to_newline("BACK"));

//draw_text(140, 150, "ARE YOU SURE");
draw_set_color(c_white);

