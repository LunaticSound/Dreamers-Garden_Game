/// @description Draw Card
// You can write your code in this editor

if(to_draw > 0){
	// If deck is empty, shuffle discard pile into deck
	if(array_length(global.player.deck) == 0){
		to_shuffle = 5;
		shuffle_discard_to_deck();
		alarm[3] = 1;
		alarm[0] = 20;
		}else{
		draw_hand();
		to_draw -= 1;
		alarm[0] = 5;
		}
	}else{
	global.state = game_state.CARD;
	}