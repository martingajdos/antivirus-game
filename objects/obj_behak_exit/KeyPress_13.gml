switch (_ypos) {
    case 0:
        game_end();
        break;
        
    case 1:
        with (obj_exit_print) {
            instance_destroy();
        }
        instance_create(0, 0, obj_fade_menu);
        break;
}

