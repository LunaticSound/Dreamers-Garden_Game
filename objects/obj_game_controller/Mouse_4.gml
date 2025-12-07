/// @description Insert description here
// You can write your code in this edito

// global.plant_sprite.visible = false;

if (global.state == game_state.PLANT){
global.plant_sprite.visible = false;
global.selected_card_object.visible = true;
with (obj_grid_node) image_blend = c_white;
}


end_day_index = 0;
wheel_rotation += (360/global.game_setup.season_length)/4;
discard_hand(ds_list_size(global.player.hand));
global.state = game_state.GROW;
