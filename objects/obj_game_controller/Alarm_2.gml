/// @description Discard Card
// You can write your code in this editor

if(to_discard > 0){
	// If deck is empty, shuffle discard pile into deck
		discard_hand();
		to_discard -= 1;
		alarm[2] = 3;
		}else{
	update_card_positions();
	}