/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left)){
	texture_prefetch("GUI");
	texture_prefetch("Backgrounds");
	texture_prefetch("Plants");
	texture_prefetch("Cards");
	texture_prefetch("Shaderpage");
	room_goto(rm_main);
}