// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_deck(){
	var count = clamp(array_length(global.player.deck), 0, 40);
	if (count > 1) draw_sprite(spr_deck_backs, 0, 2400, 1260);
	if (count > 0) draw_sprite(spr_card_back_deck, 0, 2400, 1260 - count * 5)
}