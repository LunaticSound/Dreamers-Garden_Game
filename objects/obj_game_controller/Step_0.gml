/// @description Insert description here
// You can write your code in this editor

move_altar();

if (global.state == game_state.PLANT) plant_phase();
if (global.state == game_state.TOOL) tool_phase();
if (mouse_check_button_pressed(mb_left)) card_clicked();

if (cursor) emit_seasons_wheel_glow(x, y, 220, 15);

if (global.player.hunger >= global.player.hunger_limit && time_to_die) you_die();

if(instance_exists(global.selected_card_object)){
	if (global.selected_card_object != -1){
		if(global.selected_card_object.fruit_clicked){
			with(altar){
				show_ready(true);
			}
			with(forge){
				show_ready(true);
			}
			with(consume){
				show_ready(true);
			}
		}else{
			with(altar){
				show_ready(false);
			}
			with(forge){
				show_ready(false);
			}
			with(consume){
				show_ready(false);
			}
		}
	}
}