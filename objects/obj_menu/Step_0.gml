if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
    selected -= 1;    
} else if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
    selected += 1;
}

rot -= angleDifference(rot, selected * (360 / image_number)) / (0.2 * room_speed);

item = -selected mod image_number;
if (item < 0) {
    item += image_number;
}

if (bob_counter < 360)
    bob_counter += 0.1;
else
    bob_counter = 0;

bob = sin(bob_counter) / 7;

y = y + bob;

