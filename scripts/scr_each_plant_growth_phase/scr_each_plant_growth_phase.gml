// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function each_plant_growth_phase(){
	if (growth_phase_process){
		if (vitality > 0){
			if(!heat_set){
				image_blend = c_white;
				heat_set = true;
				if (underlying_tile.heat < plant_data.heat_pref - plant_data.heat_tol){
					cold = true;				
					vitality -= 1;
					image_blend = $FFCCBB;
				// effect_create_depth(depth, ef_explosion, x, y, 1, c_blue);
				} else{ 
					cold = false;
				} 
			
			if (underlying_tile.heat > plant_data.heat_pref + plant_data.heat_tol){ 
				hot = true;
				vitality -= 1;
				image_blend = $BBCCFF;
				// effect_create_depth(depth, ef_explosion, x, y, 1, c_orange);
			} else{ 
				hot = false;
				}
		}
		if(!life_set){
			if (vitality >= plant_data.max_vitality / 2) age_in_days += 1
			else sprite_index = plant_data.plant_sprite[3];
			life_set = true;
			if(age_in_days >= plant_data.days_to_grow){
				if (!hot && !cold && (vitality < plant_data.max_vitality)){ 
					vitality += 1;
					effect_create_depth(depth, ef_star, x, y - 100, 1, c_lime)
				}
			} else {
				if (!hot && !cold && (vitality < floor(plant_data.max_vitality / 2) + 1)){ 
					vitality += 1;
					effect_create_depth(depth, ef_star, x, y - 100, 1, c_lime)
				}
			}
			if (age_in_days >= plant_data.days_to_grow) sprite_index = plant_data.plant_sprite[1];
			if (age_in_days > plant_data.days_to_grow && vitality = plant_data.max_vitality) sprite_index = plant_data.plant_sprite[2];
			if (vitality <= 0) sprite_index = plant_data.plant_sprite[4];
			if (age_in_days > plant_data.days_to_grow) ripe_count += 1;
			if (ripe_count = plant_data.days_until_ripe){
				fruit_ripe = true;
			}
		}
	}
		calculate_dots_display();
		growth_phase_counter ++;
	}
	if (growth_phase_counter > growth_phase_duration){
		draw_feedback = false;
		growth_phase_done = true;
		growth_phase_process = false;
		heat_set = false;
		life_set = false;
		growth_phase_counter = ds_list_size(global.garden_plant_list);
	}
}