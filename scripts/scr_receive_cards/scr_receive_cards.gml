// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function receive_cards(offerings){
	if (!loot_spawned){
		if(position_meeting(mouse_x, mouse_y, self)){

					var loot = determine_loot(offerings);
					var inst = instance_create_depth(room_width/2, room_height/2, -5000, obj_booster);
					inst.loot = loot[0];
	//				booster_draw_card(loot);
					inst.sprite_index = loot[1];
					inst.controller = id;
					loot_spawned = true;
			}
		}
	if (loot_spawned){
		if(device_mouse_check_button(0, mb_left) && position_meeting(mouse_x, mouse_y, obj_card_craft)){
			var card_to_add = instance_position(mouse_x, mouse_y, obj_card_craft);
			card_to_add.target_x = room_width/2;
			card_to_add.alarm[0] = 30;
			loot_spawned = false;
			for (var j = 0; j < 3; j += 1){
				if (loot_cards[j] != card_to_add) loot_cards[j].destroying = true;
			}
			// with(obj_card_craft) instance_destroy();
			global.state = game_state.CARD;
		}
	}
}