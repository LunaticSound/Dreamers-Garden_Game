/// @description Insert description here
// You can write your code in this editor

	var inst = instance_create_depth(room_width/2, room_height/2, global.game_setup.card_layer_depth, obj_card_craft);
	inst.loot = booster_draw_card(loot) // loot[0];
	with inst{
	card_data = global.card_database[? loot];
	card_id = loot;
	sprite_index = card_data.sprite;
	target_x = x;
	base_x = x;
	target_y = y;
	base_y = y;
	y_vel = 0;
	x_vel = 0;
	target_angle = obj_game_controller.t_angle;
	x = room_width + 200;
	}
loot_cards[1] = inst;
alarm[3] = 30;
alarm[0] = 30;