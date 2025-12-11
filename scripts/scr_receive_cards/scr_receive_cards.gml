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