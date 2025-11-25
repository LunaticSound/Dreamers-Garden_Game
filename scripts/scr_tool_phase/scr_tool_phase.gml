// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function tool_phase(){
		if(mouse_check_button_pressed(mb_left)){
			if (instance_position(mouse_x, mouse_y, obj_game_controller) or instance_position(mouse_x, mouse_y, obj_altar_parent)){
				global.plant_sprite.visible = false;
				with (global.selected_card_object) { visible = true; }
				global.state = game_state.CARD;
				return;
			}
        // Check if mouse is over a visible card
        var top_card = instance_position(mouse_x, mouse_y, obj_card);
        if (top_card != noone) {
            with (top_card) {
                if (visible) {
                    // Card is visible, handle deselection
                    with (global.plant_sprite) { visible = false; }
                    with (global.selected_card_object) { visible = true; }
                    global.state = game_state.CARD;
                    return;
					}
                }
		if (position_meeting(mouse_x, mouse_y, obj_game_controller)){
				    with (global.plant_sprite) { visible = false; }
                    with (global.selected_card_object) { visible = true; }
                    global.state = game_state.CARD;
                    return;
				}
            }
        }
		switch (global.card_database[? global.selected_card].target){
					case tool_target.EMPTY_TILE:
					var nearest_node = find_empty_node(mouse_x, mouse_y)
					break;			
					case tool_target.ANY_TILE:
					var nearest_node = instance_nearest(mouse_x, mouse_y, obj_grid_node)
					break;
					case tool_target.PLANT:
					var nearest_node = instance_nearest(mouse_x, mouse_y, obj_garden_plant)
					break
					}
		var grid_x = nearest_node.x;
		var grid_y = nearest_node.y;
		global.plant_sprite.x = grid_x;
		global.plant_sprite.y = grid_y;

		        // Create or update the plant sprite instance
        if ((mouse_check_button_pressed(mb_left)) && (!position_meeting(mouse_x, mouse_y, obj_game_controller))){
				switch (global.card_database[? global.selected_card].effect){
					case tool_effect.SHOVEL:
					tool_shovel(nearest_node);
					break;
					case tool_effect.SICKLE:
					tool_sickle(nearest_node);
					break
					}
			with (global.plant_sprite) visible = false;
						// Remove the selected card from hand and hand_objects
						for (var i = 0; i < ds_list_size(global.player.hand_objects); i++) {
						if (global.selected_card_object == global.player.hand_objects[| i]) {
                        instance_destroy(global.selected_card_object);
						ds_list_delete(global.player.hand_objects, i);
						ds_list_delete(global.player.hand, i);
						ds_list_add(global.player.discard, global.selected_card);
						global.selected_card = -1;
						update_card_positions();
						global.state = game_state.CARD;
						break; // Exit the loop after finding the card
				}
			}
		}
}