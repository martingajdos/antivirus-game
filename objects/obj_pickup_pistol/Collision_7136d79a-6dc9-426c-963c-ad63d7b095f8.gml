instance_destroy();

with (obj_player) {
    gun_0_owned = true;

    with (current_gun) {
        instance_destroy();
    }
    current_gun = instance_create(0, 0, obj_pistol);
    current_gun = obj_pistol;
}

