// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function plant_phase() {
	if(mouse_check_button_pressed(mb_left)){
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
		}
		if(!position_meeting(mouse_x, mouse_y, obj_grid_node)){
			with (global.plant_sprite) { visible = false; }
			with (global.selected_card_object) { visible = true; }
			with (obj_grid_node) image_blend = c_white;
			global.state = game_state.CARD;
			return;
		}
	}

    // Normal planting logic
    var nearest_node = find_shoveled_tile(mouse_x, mouse_y);
    if (nearest_node != noone) {
        var grid_x = nearest_node.gx;
        var grid_y = nearest_node.gy;
        global.plant_sprite.x = nearest_node.x;
        global.plant_sprite.y = nearest_node.y;
	}
				
	// Visual Feedback: Effects
	with(obj_grid_node){ image_blend = c_white};
	if(global.plant_database[? global.selected_card].effect != -1){
	var tiles = affected_nodes(grid_x, grid_y, global.plant_database[? global.selected_card].effect_radius);
	for (var i = 0; i < array_length(tiles); i++) {
		var tile = tiles[i];
		with (tile){
			if (global.plant_database[? global.selected_card].effect_strength < 0){
				image_blend = c_teal;
			};
			if (global.plant_database[? global.selected_card].effect_strength > 0){
				image_blend = c_orange;
				};
			}
		}
	}
    if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_grid_node)) {
		// Create plant
	    var new_plant = instance_create_depth(nearest_node.x, nearest_node.y,
        global.game_setup.garden_layer_depth, obj_garden_plant);
		with (obj_grid_node) image_blend = c_white;
        with (new_plant) {
	        plant_id = global.selected_card;
            plant_data = global.plant_database[? plant_id];
			vitality = floor(plant_data.max_vitality / 2);
            age_in_days = 0;
            ripe = false;
            glow_size = plant_data.glow_size;
            sprite_index = asset_get_index(plant_data.plant_sprite[0]);
			fruit_x = x + plant_data.fruit_x;
			fruit_y = y + plant_data.fruit_y;
			gx = nearest_node.gx;
			gy = nearest_node.gy;		
			nearest_node.inhabitant = id;
			heat_set = false;
			life_set = false;
			calculate_dots_display();
			switch(plant_data.effect){
				case plant_effects.CHANGE_HEAT:
				change_heat(gx, gy, plant_data.effect_radius, plant_data.effect_strength)						
			}
			choose_particle();
            underlying_tile = nearest_node;
            ds_list_add(global.garden_plant_list, id);
            }
			sort_plant_list();
            // Update tile status
            with (nearest_node) {
                occupied = true;
                global.game_setup.empty_tiles -= 1;
                shoveled = false;
                global.game_setup.shoveled_tiles -= 1;
            }
            // Remove card from hand
            for (var i = 0; i < ds_list_size(global.player.hand_objects); i++) {
                if (global.selected_card_object == global.player.hand_objects[| i]) {
                    instance_destroy(global.selected_card_object);
                    ds_list_delete(global.player.hand_objects, i);
                    ds_list_delete(global.player.hand, i);
                    ds_list_add(global.player.discard, global.selected_card);
                    global.selected_card = -1;
                    update_card_positions();
                    break;
                }
			}
            // Clean up and return to card phase
            with (global.plant_sprite) { visible = false; }
            global.game_setup.plant_number += 1;
            global.state = game_state.CARD;            
		} 
}
