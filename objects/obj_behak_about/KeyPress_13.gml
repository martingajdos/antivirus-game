switch (_ypos) {
    case 0:
        with (obj_about_print) {
            instance_destroy();
        }
        instance_create(0, 0, obj_fade_help);
        break; 
}

