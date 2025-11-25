// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_camera(){
// Target base resolution
global.BaseWidth  = 2560;
global.BaseHeight = 1440;

// Get current display resolution
var scr_w = display_get_width();
var scr_h = display_get_height();

// Set camera to the base resolution
var cam = camera_create_view(0, 0, global.BaseWidth, global.BaseHeight, 0, noone, -1, -1, -1, -1);
view_camera[0] = cam;

// Set viewport to fill the window or screen
view_enabled = true;
view_visible[0] = true;
view_set_wport(0, scr_w);
view_set_hport(0, scr_h);
view_set_xport(0, 0);
view_set_yport(0, 0);

}