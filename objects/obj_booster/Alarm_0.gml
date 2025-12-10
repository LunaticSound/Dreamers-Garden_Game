/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < 3; i += 1){
	var inst = instance_create_depth(room_width/2 - 400 + i*400, room_height/2, global.game_setup.card_layer_depth, obj_card_craft);
	inst.loot = loot[0];
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
loot_cards[i] = inst;
}	
controller.loot_cards = loot_cards;
controller.loot_spawned = true;
instance_destroy();