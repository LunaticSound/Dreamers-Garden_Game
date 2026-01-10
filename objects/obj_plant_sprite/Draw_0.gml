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