/// @description Insert description here
// You can write your code in this editor

card_selected = false;
x_scale = 1;
fruit_clicked = false;
discard = false;
hovered = false;

scr_set_destroy_variables();

levitate_phase = random(360);  // offset to avoid all cards moving in sync
levitate_amp = 4;               // max pixels to move up/down
levitate_speed = 2;             // speed of oscillation
levitate_offset = 0;