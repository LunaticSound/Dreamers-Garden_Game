/// @description Insert description here
// You can write your code in this editor

draw_self();

if(mid_sprite != -1) draw_sprite(mid_sprite, 0, x + 440, y + 338);
if(left_sprite != -1) draw_sprite(left_sprite, 0, x + 220, y + 460);
if(right_sprite != -1) draw_sprite(right_sprite, 0, x + 650, y + 465);

draw_set_colour(c_yellow);
if(show_mid) draw_circle(x + 440, y + 338, 100, false);
if(show_left) draw_circle( x + 220, y + 460, 70, false);
if(show_right) draw_circle(x + 650, y + 465, 70, false);
draw_set_colour(c_white);
