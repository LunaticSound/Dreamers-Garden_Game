// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function growth_phase(){
	    // Finished?
    if (day_end_index >= ds_list_size(global.garden_plant_list)) {
        end_day();
        return;
    }


	
	/* for(var i = 0; i < ds_list_size(global.garden_plant_list); i++){
		with(global.garden_plant_list[| i][? "plant_id"]){
			if (underlying_tile.heat < plant_data.heat_pref - plant_data.heat_tol) cold = true;
				else cold = false;
			if (underlying_tile.heat > plant_data.heat_pref + plant_data.heat_tol) hot = true;
				else hot = false;
			if (hot){
				plant_data.vitality -= 1;
				image_blend = $BBCCFF;
			} else if (cold){ 
				plant_data.vitality -= 1;
				image_blend = $FFCCBB;
			} else{
				image_blend = c_white;
			}
			if (!hot && !cold) plant_data.vitality += 1;
			age_in_days += 1;
			if (age_in_days = plant_data.days_to_grow) sprite_index = plant_data.plant_sprite[1];
			if (age_in_days > plant_data.days_to_grow && plant_data.vitality > 5) sprite_index = plant_data.plant_sprite[2];
			if (plant_data.vitality <= 0) sprite_index = plant_data.plant_sprite[4];
			if (age_in_days > plant_data.days_to_grow) ripe_count += 1;
			if (ripe_count = plant_data.days_until_ripe){
				fruit_ripe = true;
			};
		}
	}
	end_day();
	*/
}