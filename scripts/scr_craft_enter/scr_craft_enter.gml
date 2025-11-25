// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function craft_enter(){
if (show_mid){
	if (device_mouse_check_button_pressed(0, mb_left) && (point_distance(mouse_x, mouse_y, x + 440, y + 338) < 100)){
		entries += 1;
		mid_sprite = global.selected_card_object.card_data.craft_sprite;
		show_mid = false;
		with(obj_game_controller){
			offering[0] = global.selected_card_object.card_data.element;
		}
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
	}
}

if (show_left){
	if (device_mouse_check_button_pressed(0, mb_left) && (point_distance(mouse_x, mouse_y, x + 220, y + 460) < 70)){
		entries += 1;
		left_sprite = global.selected_card_object.card_data.craft_sprite;
		show_left = false;
		with(obj_game_controller){
			offering[1] = global.selected_card_object.card_data.element;
		}
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
	}
}

if (show_right){
	if (device_mouse_check_button_pressed(0, mb_left) && (point_distance(mouse_x, mouse_y, x + 650, y + 465)<70)){
		entries += 1;
		right_sprite = global.selected_card_object.card_data.craft_sprite;
		show_right = false;
		with(obj_game_controller){
			offering[2] = global.selected_card_object.card_data.element;
		}
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
	}
}

}