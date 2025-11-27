// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function receive_cards(offerings){
if (!loot_spawned){
	if(position_meeting(mouse_x, mouse_y, self)){
			for (var i = 0; i < 3; i += 1){
				var loot = determine_loot(offerings);
				var inst = instance_create_depth(room_width/2 - 400 + i*400, room_height/2, global.game_setup.card_layer_depth, obj_card_craft);
				inst.loot = loot;
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
			loot_spawned = true;
		}
	}
if (loot_spawned){
	if(device_mouse_check_button(0, mb_left) && position_meeting(mouse_x, mouse_y, obj_card_craft)){
		add_card(instance_position(mouse_x, mouse_y, obj_card_craft).card_id, 1);
		loot_spawned = false;
		for (var j = 0; j < 3; j += 1){
			instance_destroy(loot_cards[j])
		}
		with(obj_card_craft) instance_destroy();
		global.state = game_state.CARD;
	}
}
}