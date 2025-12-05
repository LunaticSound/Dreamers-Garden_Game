/// @description Insert description here
// You can write your code in this editor

if (global.state == game_state.CARD or global.state == game_state.TOOL){
/*	if (inhabitant != -1 && clicked){
		black_alpha = lerp(black_alpha, black_alpha_target, 0.05)
		draw_set_alpha(black_alpha);
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_alpha(1 - black_alpha_target + black_alpha);
		draw_set_colour(c_white);
		draw_sprite_ext(inhabitant.sprite_index, 2, room_width/2, room_height/2, 2, 2, 1, 1, 1);
		draw_sprite(inhabitant.sprite_index, inhabitant.image_index, room_width/2, room_height/2);
		draw_text(room_width/2 + 300, room_height/2 - 50, string(inhabitant.plant_id));
		draw_text(room_width/2 + 300, room_height/2, "Days until ripe: " + string(inhabitant.plant_data.days_to_grow - inhabitant.age_in_days));	
		draw_set_alpha(1);
	}
*/
	if (inhabitant != -1 && hover_count && !clicked){
		draw_sprite(spr_overlay_plant_stats, 0, x, y);
		draw_sprite_ext(spr_overlay_plant_gui, 0, x, y, 0.5, 0.5, 1, c_white, 1);
		// draw growth markers
		draw_set_colour(c_black);
		for (i = 0; i < array_length(inhabitant.dots_to_draw); i++){
			draw_circle(inhabitant.dots_to_draw[i], y - 9, 5, false)
		}
		draw_set_colour(c_white);
		draw_circle(inhabitant.days_grown_x, y - 9, 4, false)
		
		// draw vitality marker
		draw_set_colour(c_lime);
		draw_circle(inhabitant.vit_dot_x, y - 27, 4, false);
	}
}
