/// @description Insert description here
// You can write your code in this edito

// global.plant_sprite.visible = false;

if (global.state == game_state.PLANT){
global.plant_sprite.visible = false;
global.selected_card_object.visible = true;
with (obj_grid_node) image_blend = c_white;
}

if (global.state == game_state.TOOL){
global.plant_sprite.visible = false;
global.selected_card_object.visible = true;
}

image_xscale = 0.5;
image_yscale = 0.5;

end_day_index = 0;

if(global.game_setup.days > 0 && (global.game_setup.days + 1) % global.game_setup.season_length == 0){
	global.environment.season += 1;
	if (global.environment.season == 4) global.environment.season = 0;
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_index(back_id, global.environment.season);
}

moon_rotation_target += (360/global.game_setup.season_length);
if (rotate_wheel = 3){
	wheel_rotation_target += (360/global.game_setup.season_length);
	rotate_wheel = -1;
}
rotate_wheel += 1;
wheel_rotation += rotate_wheel;
discard_hand(ds_list_size(global.player.hand));
with(obj_garden_plant){
	days_until_ripe = global.plant_database[? plant_id].days_until_ripe;
}
alarm[1] = 1;



