// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_day(){
	change_weather();
	for (var i = 0; i < array_length(global.grid_node_instances); i++){
		for (var j = 0; j < array_length(global.grid_node_instances[i]); j++){
			global.grid_node_instances[i][j].heat = global.environment.heat;
			global.grid_node_instances[i][j].water_stored = clamp(global.grid_node_instances[i][j].water_stored + global.environment.rain, 0, 6);
		}
	}
	for(var i = 0; i < ds_list_size(global.garden_plant_list); i++){
		with(global.garden_plant_list[| i]){
			if (plant_data.effect != -1) switch(plant_data.effect){
				case plant_effects.CHANGE_HEAT:
					change_heat(gx, gy, plant_data.effect_radius, plant_data.effect_strength);
					break;
			}
		}
	}
	global.player.hunger += global.player.hunger_rate;
	global.player.hunger_limit += 1;
	global.player.hunger_rate += 1;
	global.game_setup.days += 1;
	// draw_hand(4);
	 to_draw = 4;
	 alarm[0] = 13;  // draw cards to to_draw
	 global.state = game_state.END_DAY;
}