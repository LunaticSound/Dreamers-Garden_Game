/// @description Insert description here
// You can write your code in this editor

target_x = room_width + 200;
target_y = y;
base_x = x;
base_y = y;
card_selected = false;
y_vel = 0;
x_vel = 0;

levitate_phase = random(360);  // offset to avoid all cards moving in sync
levitate_amp = 4;               // max pixels to move up/down
levitate_speed = 2;             // speed of oscillation
