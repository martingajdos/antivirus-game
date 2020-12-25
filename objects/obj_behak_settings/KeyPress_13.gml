switch (_ypos) {
    case 0:
        obj_settings_rememberer._FULLSCREEN *= -1;
        break;
        
    case 1:
        obj_settings_rememberer._MOUSE *= -1;
        break;
        
    case 2:
        with (obj_settings_print) {
            instance_destroy();
        }
        
        instance_create(0, 0, obj_fade_help);
        break;
}

