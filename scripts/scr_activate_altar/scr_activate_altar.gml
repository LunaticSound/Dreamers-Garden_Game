// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_altar(){
	effect_create_depth(depth-1, ef_spark, x + irandom(1000), y + irandom(600), 3, c_yellow);
	if(mouse_check_button_pressed(mb_left)){
		global.state = game_state.RECEIVE;
		entries = 0;
		mid_sprite = -1;
		left_sprite = -1;
		right_sprite = -1;
			offering_to_pass[0] = offering[0];
			offering_to_pass[1] = offering[1];
			if (array_length(offering) > 2) offering_to_pass[2] = offering[2];
offering = [];
	}
}