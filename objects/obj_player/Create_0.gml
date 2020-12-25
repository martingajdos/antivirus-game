/// @description INITIALIZE PLAYER OBJECT

depth = 1000000;
draw_set_color(c_white);
d3d_start();

//FOV SETTINGS
FOV             =   45;
RUN_FOV         =   0;
RUN_FOV_MAX     =   20;
RUN_FOV_SPEED   =   1.5;

//STATS
hp                      =   100;
default_player_height   =   32;
player_height           =   32;

//MOVEMENT
move_f      =   0;
move_s      =   0;
vsp         =   0;
hsp         =   0;
accel       =   0.5;
maxspeed    =   3;
zspeed      =   0;

//MOUSE LOOK
xto     =   x + 1;
yto     =   y;
zto     =   player_height;  
zdir    =   0;
zd      =   0;

//CREATE GUN
current_gun     =   instance_create(0, 0, obj_hand);
current_gun     =   obj_hand;
can_shoot       =   0;
gun_number      =   0;

gun_0_owned     =   false;
gun_1_owned     =   false;
gun_2_owned     =   false;

//ANIMATION
recoil          =   0;
headbob         =   0;
headbob_counter =   0;
wepbob          =   0;
wep_lag_hor     =   0;
wep_lag_ver     =   0;

//CONTROLS
forward     =   ord("W");
left        =   ord("A");
back        =   ord("S");
right       =   ord("D");
mouse_locked            =   true;
RUNNING_ALLOWED         =   true;
MAX_RUNNING_TIME        =   60; // 1 sec
current_running_time    =   0;
SHIFT_PRESSED           =   false;

globalvar camsine;
globalvar camcosine;
camsine         =   sin(degtorad(direction));
camcosine       =   cos(degtorad(direction));
global.can_calc =   true;

//P3DC
collision_player = p3dc_begin_model();
p3dc_add_block(-8, -8, 0, 8, 8, 32);
p3dc_end_model();

//Weird vars
ALARM_FIX_ZDIR_DONE = false;

// Alternate view
z = 0;
pitch = 0;
cam_height = 64;
cam_dist = 64;
facing = 0;
point_x = x;
point_y = y;
faced = 0;
dirs = 0;

