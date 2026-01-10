// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_card(card_type, number){
	for (i = 0; i < number; i++){
		array_push(global.player.hand, card_type);
		}
	// Create visual card objects for the hand
	create_hand_objects(true);
}