/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(sprite_index, image_index, x, y, draw_scale, draw_scale, 1, c_white, 1);

if(plant_state != plant_states.DEAD){
if(hot) draw_sprite(spr_overlay_hot, 0, x + 30, y);
if(cold) draw_sprite(spr_overlay_cold, 0, x + 30, y);
if(thirsty) draw_sprite(spr_overlay_water, 0, x - 30, y); 

if(growth_phase_process){
	var size_mult = 1/10 * (growth_phase_counter/2);
	if(hot) draw_sprite_ext(spr_overlay_hot, 0, x, y- 50, size_mult, size_mult, 1, c_white, 1);
	if (cold) draw_sprite_ext(spr_overlay_cold, 0, x, y- 50, size_mult, size_mult, 1, c_white, 1);
	if (thirsty) draw_sprite_ext(spr_overlay_plant_water_only, 0, x, y- 50, size_mult, size_mult, 1, c_white, 1);
	if(!hot && !thirsty && !cold) draw_sprite_ext(sprite_index, image_index, x, y, draw_scale, draw_scale, 1, c_lime, 1 - (growth_phase_counter / 22));
}

if (fruit_ripe && plant_data.fruit_sprite != -1) draw_sprite(plant_data.fruit_sprite, 0, fruit_x, fruit_y);
glow(x, y);
}