// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tool_sickle(plant_passed){
	with(plant_passed){
		if(!fruit_ripe or !plant_data.perennial){
			add_card(plant_data.material_card, 1)
			underlying_tile.occupied = false;
			global.game_setup.empty_tiles += 1;
			global.game_setup.plant_number -=1;
			var myself = ds_list_find_index(global.garden_plant_list, id)
			ds_list_delete(global.garden_plant_list, myself) 
			underlying_tile.inhabitant = -1;
			instance_destroy();
		}
		if(fruit_ripe){
			calculate_dots_display();
			add_card(plant_data.fruit_card, plant_data.fruit_card_n)
			if(plant_data.perennial){
				ripe_count = 0;
				fruit_ripe = false;
				image_blend = c_white;
			}
		}
	//	if (plant_data.material_card != -1) add_card(plant_data.material_card);
	}
}