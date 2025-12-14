// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function craft_enter(){
if (show_mid){
	if (device_mouse_check_button_pressed(0, mb_left) && (position_meeting(mouse_x, mouse_y, self))){
		entries += 1;
		mid_sprite = global.selected_card_object.card_data.craft_sprite;
		obj_game_controller.forge.show_mid = false;
		obj_game_controller.altar.show_mid = false;
		offering[0] = global.selected_card_object.card_data.element;
		            // Remove card from hand
            for (var i = 0; i < ds_list_size(global.player.hand_objects); i++) {
                if (global.selected_card_object == global.player.hand_objects[| i]) {
                    instance_destroy(global.selected_card_object);
                    ds_list_delete(global.player.hand_objects, i);
                    ds_list_delete(global.player.hand, i);
                    global.selected_card = -1;
                    update_card_positions();
					alarm[0] = 1;
                    break;
                }
			}
	}
}

if (show_right){
	if (device_mouse_check_button_pressed(0, mb_left) && (position_meeting(mouse_x, mouse_y, self))){
		entries += 1;
		right_sprite = global.selected_card_object.card_data.craft_sprite;
		obj_game_controller.forge.show_right = false;
		obj_game_controller.altar.show_right = false;
		offering[1] = global.selected_card_object.card_data.element;
		var col_1 = color_from_name(offering[0]);
		var col_2 = color_from_name(offering[1]);
		var col_mix = mix_colors([col_1, col_2]);
		image_blend = col_mix;
		            // Remove card from hand
            for (var i = 0; i < ds_list_size(global.player.hand_objects); i++) {
                if (global.selected_card_object == global.player.hand_objects[| i]) {
                    instance_destroy(global.selected_card_object);
                    ds_list_delete(global.player.hand_objects, i);
                    ds_list_delete(global.player.hand, i);
                    global.selected_card = -1;
                    update_card_positions();
					alarm[0] = 1;
                    break;
                }
			}
	}
}

if (show_left){
	if (device_mouse_check_button_pressed(0, mb_left) && (position_meeting(mouse_x, mouse_y, self))){
		entries += 1;
		left_sprite = global.selected_card_object.card_data.craft_sprite;
		obj_game_controller.forge.show_left = false;
		obj_game_controller.altar.show_left = false;
			offering[2] = global.selected_card_object.card_data.element;
		var col_1 = color_from_name(offering[0]);
		var col_2 = color_from_name(offering[1]);
		var col_3 = color_from_name(offering[2]);
		var col_mix = mix_colors([col_1, col_2, col_3]);
		image_blend = col_mix;
		            // Remove card from hand
            for (var i = 0; i < ds_list_size(global.player.hand_objects); i++) {
                if (global.selected_card_object == global.player.hand_objects[| i]) {
                    instance_destroy(global.selected_card_object);
                    ds_list_delete(global.player.hand_objects, i);
                    ds_list_delete(global.player.hand, i);
                    global.selected_card = -1;
                    update_card_positions();
					alarm[0] = 1;
                    break;
                }
			}
	}
}

}