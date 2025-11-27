/// @description Insert description here
// You can write your code in this editor

centered = false;
target_x = x;
target_y = y;
x_vel = 0;
y_vel = 0;
show_mid = false;
show_left = false;
show_right = false;

active = false;

entries = 0;
mid_sprite = -1;
left_sprite = -1;
right_sprite = -1;

offering = [];
offering_to_pass = [];
loot_spawned = false;
loot_cards = [];

mid_x = x + 440;
mid_y = y + 338;
left_x = x + 220;
left_y = y + 490;
right_x = x + 650;
right_y = y + 465;

button = instance_create_depth(0, y + 400, global.game_setup.card_layer_depth, obj_button_altar);