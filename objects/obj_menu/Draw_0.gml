var pr, i;
i = 0;

pr = ds_priority_create();

repeat (image_number) {
    ds_priority_add(pr, i, lengthdir_y(1, (rot - 90) + i  * (360 / image_number)));
    i += 1;
}

repeat (image_number) {
    i = ds_priority_delete_min(pr);
    draw_sprite_ext(sprite_index,
    i,menu_x+lengthdir_x(menu_width / 4,(rot-90)+i *(360/image_number)),
    menu_y+lengthdir_y(menu_height/2,(rot-90)+i*(360/image_number)),
    1+lengthdir_y(menu_height/2,(rot-90)+i*(360/image_number))/(menu_height*0.5),
    1+lengthdir_y(menu_height/2,(rot-90)+i*(360/image_number))/(menu_height*0.5),0,c_white,1);
}

ds_priority_destroy(pr);

var text;

switch (item) {
    case 0: text = "Play" break;
    case 1: text = "About" break;
    case 2: text = "Exit" break;
    default: text = "" break;
}

