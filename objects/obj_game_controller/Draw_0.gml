/// @description Insert description here
// You can write your code in this editor

// draw_self();

hunger_disp();


draw_set_colour($1B062D);
if(cursor) draw_circle(x, y, 153, false);
draw_set_colour(c_white);
draw_sprite_ext(sprite_index, 0, x, y, 0.5, 0.5, 1, c_white, 1);
draw_sprite_ext(sprite_index, 1, x, y, 0.5, 0.5, wheel_rotation, c_white, 1);
draw_sprite_ext(sprite_index, 2, x, y, 0.5, 0.5, moon_rotation, c_white, 1);
draw_sprite_ext(sprite_index, 3, x, y, 0.5, 0.5, 1, c_white, 1);
draw_sprite_ext(sprite_index, 4, x, y, 0.5, 0.5, 1, c_white, 1);
draw_sprite_ext(sprite_index, 5, x, y, 0.5, 0.5, 1, c_white, 1);
draw_sprite_ext(sprite_index, 6, x, y+5, 0.5, 0.5, 1, c_white, 1);

draw_sprite(spr_bgr_tile_frame, 0, 0, 0);