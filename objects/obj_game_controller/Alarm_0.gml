/// @description Draw Card
// You can write your code in this editor

if(to_draw > 0){
	draw_hand(1);
	to_draw -= 1;
	alarm[0] = 4;
}else{
	global.state = game_state.CARD
}