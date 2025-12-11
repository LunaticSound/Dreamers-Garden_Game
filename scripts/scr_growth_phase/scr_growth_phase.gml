// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function growth_phase() {
	
	with(obj_garden_plant) plant_data.days_until_ripe = global.plant_database[? plant_id].days_until_ripe;

    // End day if finished
    if (day_end_index >= ds_list_size(global.garden_plant_list)) {
		day_end_index = 0;
        end_day();
        return;
    }

    // Get the plant ID from the list
    var plant = global.garden_plant_list[| day_end_index];

    // Tell this plant to run its growth phase
    plant.growth_phase_process = true;

    // If this plant signals it is done
    if (plant.growth_phase_done) {

        // Reset its flag
        plant.growth_phase_done = false;
		plant.growth_phase_process = false;

        // Move to the next plant
        day_end_index++;
    }
}

