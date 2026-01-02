/// @description Create shuffle Cards
// You can write your code in this editor

if (to_shuffle > 0){
	instance_create_depth(160, 1260, global.game_setup.card_layer_depth, obj_card_discard);
	to_shuffle -= 1;
	alarm[3] = 5;
}