/// @description Insert description here
// You can write your code in this editor

var food_mult = 1;
 for (i = 0; i < array_length(global.blessings_active); i ++){
	if (global.blessings_active[i] == blessings.THE_FEAST) food_mult *= 2;
}
global.player.hunger -= global.selected_card_object.card_data.nutritiousness * food_mult;
		// Remove card from hand
for (var i = 0; i < array_length(global.player.hand_objects); i++) {
    if (global.selected_card_object == global.player.hand_objects[i]) {
        instance_destroy(global.selected_card_object);
        array_delete(global.player.hand_objects, i, 1);
        array_delete(global.player.hand, i, 1);
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

global.state = game_state.CARD;