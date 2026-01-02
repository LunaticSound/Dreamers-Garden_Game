/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("D"))){
	draw = !draw;
	show_debug_overlay(draw); 
}