// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_hand_objects() {
    var num_cards = ds_list_size(global.player.hand);
	var fan_angle = 0; // max degrees each side from center

    // Make sure hand_objects exists
    for (var i = 0; i < num_cards; i++) {
        card_id = global.player.hand[| i];
		// Evenly distribute cards across -fan_angle to +fan_angle
		t_angle = (num_cards > 1) 
              ? lerp(fan_angle, -fan_angle, i / (num_cards - 1)) 
              : 0; // single card stays centered

		var spacing = global.game_setup.card_spacing / num_cards + 1;
        card_x = room_width / 2 - spacing * (num_cards - 1)
                     + (i * spacing * 2);
        card_y = room_height + 100 + abs(room_width/2 - card_x)/8;

        var inst;

        // Check if instance already exists at index
        if (i < ds_list_size(global.player.hand_objects)) {
            inst = global.player.hand_objects[| i];
            if (instance_exists(inst) && inst.card_id == card_id) {
                // Update existing card target position
                inst.target_x = card_x;
				inst.base_x = card_x;
                inst.target_y = card_y;
				inst.base_y = card_y;
				inst.y_vel = 0;
				inst.x_vel = 0;
				inst.target_angle = t_angle;
                continue; // Move to next card
            }
        }

        // Otherwise, create a new card instance
        inst = instance_create_depth(card_x, card_y, global.game_setup.card_layer_depth, obj_card);
        with (inst) {
            card_id = other.card_id;
            card_data = global.card_database[? card_id];
            sprite_index = asset_get_index(card_data.sprite);
            target_x = other.card_x;
            base_x = other.card_x;
			target_y = other.card_y;
			base_y = other.card_y;
			y_vel = 0;
			x_vel = 0;
			target_angle = other.t_angle;
			x = room_width + 200;
			}
		ds_list_add(global.player.hand_objects, inst);
    }
}
