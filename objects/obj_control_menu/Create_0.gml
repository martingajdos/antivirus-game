// Global variables
global.RESOLUTION   =   64;
global.WINDOW_SIZE  =   512;
global.BORDER_SIZE  =   8;

global.SCREEN_WIDTH     =   global.RESOLUTION * (global.WINDOW_SIZE / global.RESOLUTION);
global.SCREEN_HEIGHT    =   global.RESOLUTION * (global.WINDOW_SIZE / global.RESOLUTION);

global.keyboard_only        =   true;
global.DRAW_WINDOW_BORDER   =   false;
global.ALLOW_Z_AXIS         =   false;

global.TOTAL_RUNTIME    =   0;
global.fullscreen       =   1;

//FOG SETTINGS
global.fog_distance     =   600;
global.fog_start        =   -50;
global.fog_color        =   make_color_rgb(15, 56, 15); 
//make_color_rgb(139, 172, 15); make_color_rgb(48, 98, 48);
 
// Dragging the borderless window
top         =   0;
left        =   0;
right       =   global.SCREEN_WIDTH;
bottom      =   global.SCREEN_HEIGHT;
offset_x    =   0;
offset_y    =   0;

// Graphics settings
scr_init_graphics_settings();

// Set window size, hence resolution 64x64 default, times a constant
window_set_size(global.SCREEN_WIDTH, global.SCREEN_HEIGHT);
d3d_set_fog(true, global.fog_color, global.fog_color, global.fog_distance);

// Center screen
if (alarm[0] == -1) alarm[0] = 1;

// Initialize "Precise 3D Collision library"
p3dc_init();
shake = 0;

