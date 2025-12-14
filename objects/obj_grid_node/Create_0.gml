/// @description Insert description here
// You can write your code in this editor

data = global.ground_database[0];
sprite_index = data.sprite[irandom(array_length(data.sprite) - 1)];
occupied = false;
shoveled = false;
hover = false;
black_alpha = 0;
black_alpha_target = 0.6;
clicked = true;
water_stored = 6;
draw_tool = false;