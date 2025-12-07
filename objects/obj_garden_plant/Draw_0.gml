/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, image_index, x, y, draw_scale, draw_scale, 1, c_white, 1);
if(growth_phase_process){
	draw_sprite_ext(spr_overlay_plant_gui, 0, x, y, 0.5, 0.5, 1, c_white, 1)
	if(hot) draw_sprite_ext(spr_overlay_hot, 0, x, y- 100, 1/30 * growth_phase_counter, 1/30 * growth_phase_counter, 1, c_white, 1- (growth_phase_counter / 40));
	if (cold) draw_sprite_ext(spr_overlay_cold, 0, x, y- 100, 1/30 * growth_phase_counter, 1/30 * growth_phase_counter, 1, c_white, 1- (growth_phase_counter / 40));
}
/*
if (global.state == game_state.GROW && growth_phase_done){
	draw_sprite(spr_overlay_plant_stats, 0, x, y)
	draw_sprite_ext(spr_overlay_plant_gui, 0, x, y, 0.5, 0.5, 1, c_white, 1)
}
*/

if (fruit_ripe && plant_data.fruit_sprite != -1) draw_sprite(plant_data.fruit_sprite, 0, fruit_x, fruit_y);
glow(x, y);