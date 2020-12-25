draw_set_color(c_white);
draw_set_font(f_normal);

d3d_set_fog(false, global.fog_color, 0, global.fog_distance);
    
    // Drawing log information (FPS and UPS)
    /*
    draw_text_color(12, 8, "fps: " + string(fps), c_white, c_white, c_white, c_white, 1);
    draw_text_color(12, 32, "ups: " + string(room_speed), c_white, c_white, c_white, c_white, 1);
    */
    
d3d_set_fog(true, global.fog_color, 0, global.fog_distance);

/* */
/*  */
