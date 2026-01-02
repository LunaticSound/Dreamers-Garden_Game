// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_discard_to_deck(){
var discard_size = array_length(global.player.discard);
    // Move all cards from discard to deck
    for (var i = 0; i < discard_size; i++) {
        var card_id = global.player.discard[i];
        array_push(global.player.deck, card_id);
    }
    // Clear the discard pile
    global.player.discard = [];
    // Shuffle the deck
    shuffle_deck();
}
