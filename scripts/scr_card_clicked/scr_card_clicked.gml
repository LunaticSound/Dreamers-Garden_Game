// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function card_clicked(){
	
    var top = instance_position(mouse_x, mouse_y, obj_card);
    if (top != noone) {
					if (forge.centered){
					forge.target_x -= 800;
					forge.centered = false;
				}
				if (altar.centered){
					altar.target_x -= 800;
					altar.centered = false;
				}
        with (top) {
			
			if (global.state == game_state.CARD or global.state == game_state.SHOW_CARD){
				if (card_selected){
					global.selected_card = card_id; // Store the selected card ID
					global.selected_card_object = id;
					switch(global.card_database[? global.selected_card].category){
						
						// PLANTING
						
						case card_type.PLANT:
							if(global.game_setup.shoveled_tiles > 0){
								visible = false;
								with (global.plant_sprite){
									sprite_index = other.card_data.plant_sprite;
									visible = true;
								}
								if(global.selected_card_object != -1){
									//if(global.plant_database[? global.selected_card] != -1){
										switch(global.plant_database[? global.selected_card].effect){
											case plant_effects.CHANGE_HEAT:
										}
									}
							global.state = game_state.PLANT;
							} else {
								card_refuse();
							}
							break;
							
							// TOOLS
							
							
							case card_type.TOOL:
								switch(global.card_database[? global.selected_card].target){
									case tool_target.EMPTY_TILE:
										if(global.game_setup.empty_tiles > 0){
											visible = false;
											with (global.plant_sprite){
												sprite_index = other.card_data.plant_sprite;
												visible = true;
												}
											global.state = game_state.TOOL;
										} else {
											card_refuse();
											}
									break;
									case tool_target.PLANT:
										if (global.game_setup.plant_number > 0){
											visible = false;
											with (global.plant_sprite){
												sprite_index = other.card_data.plant_sprite;
												visible = true;
											} 
											global.state = game_state.TOOL;
										} else {
											card_refuse();
										}
									break;
									case tool_target.ANY_TILE:
											visible = false;
											with (global.plant_sprite){
												sprite_index = other.card_data.plant_sprite;
												visible = true;
											}
											if (global.selected_card == tool_cards.WATERING_CAN){ 
												global.game_setup.tool_display = tool_displays.WATERING_CAN;
											}
											global.state = game_state.TOOL;

									}
								break;
								
								// FRUITS
								
								
								case card_type.FRUIT:
								 if(!fruit_clicked){
									with(obj_game_controller){
									altar.target_x += 1000;
									altar.centered = true;
									altar.button.x -= 400;
									consume.target_x -= 1200;
									consume.centered = true;
									global.state = game_state.CRAFT;
									}
									fruit_clicked = true;
								}else{
									//fruit_clicked = false;
								}
								break;
								case card_type.MATERIAL:
									if(!fruit_clicked){
									with(obj_game_controller){
									forge.target_x += 1000;
									forge.centered = true;
									forge.button.x -= 400;
									global.state = game_state.CRAFT;
									}
									fruit_clicked = true;
								}else{
									//fruit_clicked = false;
								}
								break;
							}
						}
					if (!card_selected){
						target_x = room_width/2;
						target_y = room_height/2;
						card_selected = true;
						global.state = game_state.SHOW_CARD;
					}
				}
			}
		}
}