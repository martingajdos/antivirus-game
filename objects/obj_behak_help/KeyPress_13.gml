switch (_ypos) {
    case 0:
        with (obj_help_print) {
            instance_destroy();
        }
        instance_create(0, 0, obj_fade_help_settings);
        break;
        
    case 1:
        with (obj_help_print) {
            instance_destroy();
        }
        instance_create(0, 0, obj_fade_help_about);
        break;
        
    case 2:
        with (obj_help_print) {
            instance_destroy();
        }
        instance_create(0, 0, obj_fade_menu);
        break;
}

