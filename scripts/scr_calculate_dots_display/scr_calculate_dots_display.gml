// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_dots_display(){
    dots_to_draw = [];
	
	//calcualte vitality marker
	var vit_width = 174;
	var current_vit = vitality / plant_data.max_vitality;
	vit_dot_x = x - 3 - (vit_width/2) + (vit_width * current_vit);
	
	//calculate growth marker

    var total_days;
    if (age_in_days < plant_data.days_to_grow) {
		draw_scale = 0.5 + (age_in_days / plant_data.days_to_grow) / 2;
        total_days = plant_data.days_to_grow;
        var current_index = age_in_days;
    } else {
		draw_scale = 1;
        total_days = plant_data.days_until_ripe;
        var current_index = clamp(ripe_count, 0, plant_data.days_until_ripe - 1);
    }

    var width = 80;
	    // --- SPECIAL CASE: Only 1 dot ---
    if (total_days <= 1) {
        days_grown_x = x;       // center
        array_push(dots_to_draw, x);
        return;
    }
    var spacing = (total_days > 1) ? width / (total_days - 1) : 0;

    var start_x = x - width * 0.5;

    // Current day marker for the big dot
    days_grown_x = start_x + current_index * spacing;

    // Build all dot positions
    for (var i = 0; i < total_days; i++) {
        var dot_x = start_x + i * spacing;
        array_push(dots_to_draw, dot_x);
    }
}