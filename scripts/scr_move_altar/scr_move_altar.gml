// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_altar(){
/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)){
	if(instance_position(mouse_x, mouse_y, altar)){
	if (!altar.centered){
		altar.target_x += 1000;
		altar.centered = true;
		if (forge.centered){
			forge.target_x -= 1000;
			forge.centered = false;
		}
	}}else{
		if(altar.centered){
			altar.target_x -= 1000;
			altar.centered = false;
		}
	}

if (instance_position(mouse_x, mouse_y, forge)){
	if (!forge.centered){
		forge.target_x += 1000;
		forge.centered = true;
		if (altar.centered){
			altar.target_x -= 1000;
			altar.centered = false;
		}
	}}else{
		if(forge.centered){
			forge.target_x -= 1000;
			forge.centered = false;
		}
	}

if (instance_position(mouse_x, mouse_y, self)){
		if (forge.centered){
			forge.target_x -= 800;
			forge.centered = false;
		}
		if (altar.centered){
			altar.target_x -= 800;
			altar.centered = false;
		}
	}
		if (!instance_position(mouse_x, mouse_y, consume)){
			if (consume.centered){
			consume.target_x += 1200;
			consume.centered = false;
			}
		}
	}
}