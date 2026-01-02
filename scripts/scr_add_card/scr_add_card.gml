// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_card(card_type, number){
	for (i = 0; i < number; i++){
		/* ds_list_insert(global.player.deck, 0, card_type);
	    // Get the first card in the deck (index 0)
        var card_id = global.player.deck[| 0];
        // Remove the card from the deck
        ds_list_delete(global.player.deck, 0);
        // Add the card to the hand
        ds_list_add(global.player.hand, card_id);
		*/
		array_push(global.player.hand, card_type);
		}
	// Create visual card objects for the hand
	create_hand_objects();
}