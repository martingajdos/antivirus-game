draw_set_color(c_white);

if ((keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))) {
    _ypos++;
    if (_ypos > max_ypos) {
        _ypos = 0;
    }
    
} else if ((keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))) {
    _ypos--;
    if (_ypos < 0)
        _ypos = max_ypos;
}

var n = 10;

switch (_ypos) {
    case 0:
        draw_sprite(spr_behak, 0, 148, 195 + 15 + n + 2);
        break;
        
    case 1:
        draw_sprite(spr_behak, 0, 148, 195 + 15 * 3 + n + 2);
        break;
}

