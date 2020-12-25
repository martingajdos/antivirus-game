instance_destroy();

with (obj_player) {
    gun_2_owned = true;

    with (current_gun) {
        instance_destroy();
    }
    current_gun = instance_create(0, 0, obj_shotgun);
    current_gun = obj_shotgun;
}

