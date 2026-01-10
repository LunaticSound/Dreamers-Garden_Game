// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_deck(){
	var count = clamp(array_length(global.player.deck), 0, 40);
	if (count > 1) draw_sprite(spr_deck_cards, 0, 2410, 1410);
	if (count > 0) draw_sprite(spr_deck_card_top, 0, 2480 - count * 3, 1550 - count * 3)
}