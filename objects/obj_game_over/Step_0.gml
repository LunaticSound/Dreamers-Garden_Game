/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_pressed(mb_left)) {
	
	if (position_meeting(mouse_x, mouse_y, self)){
		room_goto(rm_main);
		return;
	}
	
    for (var i = 0; i < array_length(nodes); i++) {
        var _n = nodes[i];
        
        // Only allow clicking if parent is unlocked
        var _clickable = (_n.parent == undefined || _n.parent.unlocked);
        
        if (_clickable && point_distance(mouse_x, mouse_y, _n.x, _n.y) < 40) {
            if (!_n.unlocked && global.currency >= _n.cost) {
                global.currency -= _n.cost;
                _n.unlocked = true;
				global.upgrade_state[$ string(_n.id)] = true;
                // Add card to player deck
				unlock_card(_n.booster_target, _n.rarity_bracket, _n.card_to_add)
                show_debug_message("Unlocked: " + _n.name);
            }
        }
    }
}