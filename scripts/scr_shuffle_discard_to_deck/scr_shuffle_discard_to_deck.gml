// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_discard_to_deck(){

if (ds_list_size(global.player.discard) > 0) {
    // Move all cards from discard to deck
    for (var i = 0; i < ds_list_size(global.player.discard); i++) {
        var card_id = global.player.discard[| i];
        ds_list_add(global.player.deck, card_id);
    }
    // Clear the discard pile
    ds_list_clear(global.player.discard);
    // Shuffle the deck
    shuffle_deck();
}

}