// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function discard_hand(number){

// Draw cards from deck to hand
for (var i = 0; i < number; i++) {
        // Get card id
        var card_id = global.player.hand[| 0];
        // Remove the card from hand
        ds_list_delete(global.player.hand, 0);
        // Add the card to discard pile
        ds_list_add(global.player.discard, card_id);
		with(global.player.hand_objects[| 0]){
		discard = true;	
		}
		ds_list_delete(global.player.hand_objects, 0)
    }
update_card_positions();
}