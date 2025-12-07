/// @description Insert description here
// You can write your code in this editor

global.player.hunger -= global.selected_card_object.card_data.nutritiousness;
		            // Remove card from hand
            for (var i = 0; i < ds_list_size(global.player.hand_objects); i++) {
                if (global.selected_card_object == global.player.hand_objects[| i]) {
                    instance_destroy(global.selected_card_object);
                    ds_list_delete(global.player.hand_objects, i);
                    ds_list_delete(global.player.hand, i);
                    global.selected_card = -1;
                    update_card_positions();
                    break;
                }
			}
with(obj_game_controller){
	consume.target_x += 1200;
	consume.centered = false;
	altar.show_left = false;
	altar.show_mid = false;
	altar.show_right = false;
	forge.show_left = false;
	forge.show_mid = false;
	forge.show_right = false;
}