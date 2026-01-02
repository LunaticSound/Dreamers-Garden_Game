/// @description Insert description here
// You can write your code in this editor


switch global.state{
	case game_state.CARD:
		if (inhabitant != -1 && hover && inhabitant.plant_state != plant_states.DEAD){
			draw_sprite(spr_overlay_plant_stats, 0, x, y);
			draw_sprite_ext(spr_overlay_water, water_stored, x, y - 134, 1, 1, 1, c_white, 1);
			draw_sprite(spr_overlay_plant_gui, 0, x, y - 75);
			draw_sprite(spr_overlay_plant_form, inhabitant.plant_state, x, y-75)
			draw_sprite_ext(spr_overlay_temp_range, 0, x + inhabitant.x_window, y + 11, inhabitant.x_scale_window, 0.4, 1, c_white, 1);
			draw_sprite_ext(spr_overlay_temp, 0, x + inhabitant.x_heat_marker, y + 11, 0.5, 0.5, 1, c_white, 1);
			// draw growth markers          
			draw_set_colour(c_black);
			for (i = 0; i < array_length(inhabitant.dots_to_draw); i++){
				draw_circle(inhabitant.dots_to_draw[i], y - 23, 5, false)
			}						
		draw_set_colour(c_white);
		draw_circle(inhabitant.days_grown_x, y - 23, 4, false)
		if(inhabitant.fruit_ripe) draw_circle(inhabitant.x + 90, y - 110, 4, false)
		
		// draw vitality marker
		draw_set_colour(c_lime);
		draw_circle(inhabitant.vit_dot_x, y - 43, 4, false);
	}
}
