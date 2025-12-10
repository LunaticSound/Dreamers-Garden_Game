/// @description Insert description here
// You can write your code in this edito

// global.plant_sprite.visible = false;

if (global.state == game_state.PLANT){
global.plant_sprite.visible = false;
global.selected_card_object.visible = true;
with (obj_grid_node) image_blend = c_white;
}

image_xscale = 0.5;
image_yscale = 0.5;

end_day_index = 0;

moon_rotation_target += (360/global.game_setup.season_length);
if (rotate_wheel = 3){
	wheel_rotation_target += (360/global.game_setup.season_length);
	rotate_wheel = -1;
}
rotate_wheel += 1;
wheel_rotation += rotate_wheel;
discard_hand(ds_list_size(global.player.hand));
global.state = game_state.GROW;

