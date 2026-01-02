/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.state == game_state.TOOL && draw_tool){
		switch (global.card_database[? global.selected_card].effect){
		case tool_effect.SHOVEL:
			draw_sprite(spr_overlay_plant_stats, 0, x, y);
			draw_sprite_ext(spr_overlay_water, water_stored, x, y - 3, 1.9, 1.9, 1, c_white, 1);
			draw_sprite(spr_overlay_plant_water_only, 0, x, y - 5);
		case tool_effect.WATERING_CAN:
			draw_sprite(spr_overlay_plant_stats, 0, x, y);
			draw_sprite_ext(spr_overlay_water, water_stored, x, y - 3, 1.9, 1.9, 1, c_white, 1);
			draw_sprite(spr_overlay_plant_water_only, 0, x, y - 5);
		case tool_effect.SICKLE:
			draw_sprite(spr_overlay_plant_stats, 0, x, y);
		}
}
/*
if(global.selected_card_object != -1){
	if(global.plant_database[global.selected_card] != -1){
		switch(global.plant_database[global.selected_card].effect){
			case plant_effects.CHANGE_HEAT:
					var tiles = affected_nodes(grid_x, grid_y, n_affected);

					for (var i = 0; i < array_length(tiles); i++) {
					var tile = tiles[i];
					with (tile){
						heat += heat_change;	
			}
		}
			break;
	}
}
*/