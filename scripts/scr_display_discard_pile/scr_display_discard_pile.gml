// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_discard_pile(){
	var count = clamp(array_length(global.player.discard), 0, 40);
	if (count > 1) draw_sprite(spr_deck_backs, 0, 160, 1260);
	if (count > 0) draw_sprite(spr_card_back_deck, 0, 160, 1260 - count * 5)
}