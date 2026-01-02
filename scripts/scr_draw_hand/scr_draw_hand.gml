// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_hand(){
    if (array_length(global.player.deck) > 0) {
        // Get the first card in the deck (index 0)
        var card_id = global.player.deck[0];
        // Remove the card from the deck
        array_delete(global.player.deck, 0, 1);
        // Add the card to the hand
        array_push(global.player.hand, card_id);
    }
// Create visual card objects for the hand
create_hand_objects();
}