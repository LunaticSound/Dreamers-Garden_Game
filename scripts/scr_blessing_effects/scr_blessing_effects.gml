// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_blessing_effects(){
	switch global.selected_card{
		case blessings.RAIN_DANCE:
			global.environment.rain += 1;
		break;
		case blessings.HOLY_WATER:
			with(obj_garden_plant){ 
				vitality = plant_data.max_vitality;
				if (age_in_days >= plant_data.days_to_grow) plant_state = plant_states.REGULAR;
				if (fruit_ripe) plant_state = plant_states.SPLENDID;
				calculate_dots_display();
				calculate_temp_values(underlying_tile);
				sprite_index = plant_data.plant_sprite[plant_state];
			}
		break;
		case blessings.THE_PATH:
			// global.player.rarity_boost += 1;
			array_push(global.blessings_active, card_id);
		break;
		case blessings.FORBIDDEN_RITUAL:
		with(obj_garden_plant){
			if(plant_state == plant_states.DEAD){
				vitality += 1;
				plant_state = plant_states.SICK;
				sprite_index = plant_data.plant_sprite[plant_state];
				if (underlying_tile.heat < plant_data.heat_pref - plant_data.heat_tol){
					cold = true;			
				} else{ 
					cold = false;
				} 
				if (underlying_tile.heat > plant_data.heat_pref + plant_data.heat_tol){ 
					hot = true;				
				} else{ 
				hot = false;
				}
				calculate_dots_display();
				calculate_temp_values(underlying_tile);
			}
		}
		break;
		case blessings.THE_FEAST:
			array_push(global.blessings_active, card_id);
		break;
		case blessings.COSMIC_INSPIRATION:
			with(obj_game_controller){
				to_draw = 2;
				alarm[0] = 13;  // draw cards to to_draw
			}
		break;
	}
}