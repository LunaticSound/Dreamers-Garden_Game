// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_altar(){
/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)){
	if(instance_position(mouse_x, mouse_y, obj_button_altar)){
	if (!altar.centered){
		altar.target_x += 1000;
		altar.centered = true;
		altar.button.visible = false;
		altar.button.x -= 400;
		if (forge.centered){
			forge.target_x -= 1000;
			forge.centered = false;
			forge.button.visible = true;
			forge.button.x += 400;
		}
	}}else{
		if(altar.centered && global.state != game_state.CRAFT){
			altar.target_x -= 1000;
			altar.centered = false;
			altar.button.visible = true;
			altar.button.x += 400;
		}
	}

if (instance_position(mouse_x, mouse_y, obj_button_forge)){
	if (!forge.centered){
		forge.target_x += 1000;
		forge.centered = true;
		forge.button.visible = false;
		forge.button.x -= 400;
		if (altar.centered){
			altar.target_x -= 1000;
			altar.centered = false;
			altar.button.visible = true;
			altar.button.x += 400;
		}
	}}else{
		if(forge.centered && global.state != game_state.CRAFT){
			forge.target_x -= 1000;
			forge.centered = false;
			forge.button.visible = true;
			forge.button.x += 400;
		}
	}

if (instance_position(mouse_x, mouse_y, self)){
		if (forge.centered){
			forge.target_x -= 800;
			forge.centered = false;
			forge.button.visible = true;
			forge.button.x += 400;
		}
		if (altar.centered){
			altar.target_x -= 800;
			altar.centered = false;
			altar.button.visible = true;
			altar.button.x += 400;
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