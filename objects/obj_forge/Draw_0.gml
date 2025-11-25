/// @description Insert description here
// You can write your code in this editor

draw_self();

if(show_mid) draw_circle(x, y - 100, 50, false);
if(show_left) draw_circle(x - 200, y - 50, 50, false);
if(show_right) draw_circle(x + 200, y - 50, 50, false);