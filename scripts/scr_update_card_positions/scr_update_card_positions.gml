// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_card_positions(){
/// scr_update_card_positions()
var num_cards = array_length(global.player.hand_objects);
var fan_angle = 0; // max degrees each side from center

// Update the positions of the cards
for (var i = 0; i < num_cards; i++) {
    var card_id = global.player.hand_objects[i];
    // Evenly distribute cards across -fan_angle to +fan_angle
    var t_angle = (num_cards > 1) ? lerp(fan_angle, -fan_angle, i / (num_cards - 1)) : 0; // single card stays centered
    var spacing = global.game_setup.card_spacing / (array_length(global.player.hand) + 1);
    var card_x = room_width / 2 - spacing * (num_cards - 1) + (i * spacing * 2);
    var card_y = room_height + 100 + abs(room_width / 2 - card_x) / 8;

    // Get the card instance
    var inst = global.player.hand_objects[i];
    if (instance_exists(inst)) {
        // Update the card target position
        inst.target_x = card_x;
        inst.base_x = card_x;
        inst.target_y = card_y;
        inst.base_y = card_y;
        inst.y_vel = 0;
        inst.x_vel = 0;
        inst.target_angle = t_angle;
    }
}

}