// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function each_plant_growth_phase(){
	if (growth_phase_process){
		if (plant_state != plant_states.DEAD){
			if(!life_set){
				if (underlying_tile.water_stored >= plant_data.water_intake){
					underlying_tile.water_stored -= plant_data.water_intake;
					thirsty = false;
				} else{
					vitality = clamp(vitality - plant_data.water_intake + underlying_tile.water_stored, 0, plant_data.max_vitality);
					underlying_tile.water_stored = 0;
					thirsty = true;
				}
				if (underlying_tile.heat < plant_data.heat_pref - plant_data.heat_tol){
					cold = true;				
					vitality = clamp(vitality - 1, 0, plant_data.max_vitality);
				} else{ 
					cold = false;
				} 
			
			if (underlying_tile.heat > plant_data.heat_pref + plant_data.heat_tol){ 
				hot = true;
				vitality = clamp(vitality - 1, 0, plant_data.max_vitality);
				
			} else{ 
				hot = false;
				}
			if (plant_state != plant_states.SICK){ 
				age_in_days += 1;
				if (plant_data.effect == plant_effects.GREGARIOUSNESS) gregariousness(gx, gy, plant_data.effect_radius, plant_data.effect_strength);
			}
			if(age_in_days >= plant_data.days_to_grow){
				if (!hot && !cold && (vitality < plant_data.max_vitality)){ 
					vitality += 1;
				}
			} else {
				if (!thirsty && !hot && !cold && (vitality < floor(plant_data.max_vitality / 2) + 1)){ 
					vitality += 1;
				}
			}
			if (age_in_days >= plant_data.days_to_grow) plant_state = plant_states.REGULAR;
			//if (plant_state == plant_states.REGULAR && vitality == plant_data.max_vitality) plant_state = plant_states.SPLENDID;
			if (vitality <= round(plant_data.max_vitality*1/4)) plant_state = plant_states.SICK;
			if (vitality <= 0){
				plant_state = plant_states.DEAD;
				fruit_ripe = 0;
			}
			calculate_dots_display();
			calculate_temp_values(underlying_tile);
			if (age_in_days >= plant_data.days_to_grow && (plant_state == plant_states.REGULAR or plant_state ==  plant_states.SPLENDID)){ 
				ripe_count += 1;
				if (plant_data.fruit_card != -1 && ripe_count >= days_until_ripe){ 
					fruit_ripe = true;
					plant_state = plant_states.SPLENDID;
					if(plant_id == plant_cards.PILLAR_OF_THE_EARTH && !fruit_ripe) scr_pillar_of_earth();
				}
			}
			sprite_index = plant_data.plant_sprite[plant_state];
			life_set = true;
		}
	}
	growth_phase_counter ++;
	if (growth_phase_counter > growth_phase_duration){
		draw_feedback = false;
		growth_phase_done = true;
		growth_phase_process = false;
		life_set = false;
		image_blend = c_white;
		growth_phase_counter = 0;
		growth_phase_duration = 22 - floor(ds_list_size(global.garden_plant_list)/2);
		}
	}
}