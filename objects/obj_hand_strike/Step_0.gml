var __b__;
__b__ = action_if(global.can_calc);
if __b__
{
{
var range = 0;
var maxrange = 75;

do {
    x += xto;
    y += yto;
    z += zto;
    range++;
} until(range >= maxrange || z <= 0 || place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_zombie));

if (place_meeting(x, y, obj_zombie)) {
    
    var inst = instance_place(x, y, obj_zombie);
    
    if (z < inst.height) {
        
        inst.hp -= damage;
        
        with (inst) event_user(0);
        
    }

}

instance_destroy();

}
}
