// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_hand(){
/// scr_draw_hand(num_cards)
var num_cards = argument0;

// Draw cards from deck to hand
for (var i = 0; i < num_cards; i++) {
    if (ds_list_size(global.player.deck) > 0) {
        // Get the first card in the deck (index 0)
        var card_id = global.player.deck[| 0];
        // Remove the card from the deck
        ds_list_delete(global.player.deck, 0);
        // Add the card to the hand
        ds_list_add(global.player.hand, card_id);
    } else {
        // If deck is empty, shuffle discard pile into deck
        shuffle_discard_to_deck();
        if (ds_list_size(global.player.deck) > 0) {
            var card_id = global.player.deck[| 0];
            ds_list_delete(global.player.deck, 0);
            ds_list_add(global.player.hand, card_id);
        } else {
            break; // No cards left to draw
        }
    }
}
// Create visual card objects for the hand
create_hand_objects();

}