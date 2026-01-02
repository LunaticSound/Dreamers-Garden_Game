/// @description Insert description here
// You can write your code in this editor

	var inst = instance_create_depth(0, room_height/2, global.game_setup.card_layer_depth, obj_card_craft);
	inst.loot = booster_draw_card(loot);
	with inst{
	card_data = global.card_database[? loot[0]];
	card_id = loot[0];
	sprite_index = card_data.sprite;
	target_x = room_width/2 - 400;
	base_x = 0;
	target_y = room_height/2;
	base_y = room_height/2;
	y_vel = 0;
	x_vel = 0;
//	target_angle = obj_game_controller.t_angle;
//	x = room_width + 200;
	}
if (inst.loot[1]) rarity_rare = true;
loot_cards[0] = inst;
alarm[2] = 30;