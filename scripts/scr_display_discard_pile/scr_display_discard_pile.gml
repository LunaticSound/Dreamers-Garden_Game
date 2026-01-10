// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_discard_pile(){
	var count = clamp(array_length(global.player.discard), 0, 40);
	if (count > 1) draw_sprite_ext(spr_deck_cards, 0, 170, 1410, -1, 1, 1, c_white, 1);
	if (count > 0) draw_sprite_ext(spr_deck_card_top, 0, 100 + count * 3, 1550 - count * 3, -1, 1, 1, c_white, 1)
}