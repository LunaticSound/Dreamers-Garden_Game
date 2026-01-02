// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function discard_hand(){
        // Get card id
        var card_id = global.player.hand[0];
        // Remove the card from hand
        array_delete(global.player.hand, 0, 1);
        // Add the card to discard pile
        array_push(global.player.discard, card_id);
		with(global.player.hand_objects[0]){
		discard = true;	
		}
	array_delete(global.player.hand_objects, 0, 1)
}