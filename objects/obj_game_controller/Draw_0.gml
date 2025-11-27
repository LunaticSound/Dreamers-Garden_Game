/// @description Insert description here
// You can write your code in this editor

draw_self();
hunger_disp();

draw_set_colour($1B062D);
if(cursor) draw_circle(x, y, 153, false);
draw_set_colour(c_white);
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, wheel_rotation, c_white, 1);

draw_sprite_ext(spr_clock_hand, 0, x, y, 1, 1, 
0 /* 5 + global.game_setup.days * 90/global.game_setup.season_length*/ , c_white, 1)