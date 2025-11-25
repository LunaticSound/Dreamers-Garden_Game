// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function glow(point_x, point_y){
	var num_glow_points = array_length(plant_data.glow_points);
	var flicker = plant_data.flicker_factor;
if (num_glow_points >= 1){
    for (var i = 0; i < num_glow_points; i++) {
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(plant_data.glow_sprite, 0, point_x + plant_data.glow_points[i].x, point_y + plant_data.glow_points[i].y, glow_size, glow_size + random_range(-flicker, flicker), 1, c_white, plant_data.glow_strength);
			gpu_set_blendmode(bm_normal);
			
		}
	}
}