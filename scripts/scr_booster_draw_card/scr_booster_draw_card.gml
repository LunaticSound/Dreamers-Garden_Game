// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function booster_draw_card(booster_struct) {

    var pools = booster_struct.loot_pools;

    // Total up all weights
    var total_weight = 0;
    for (var i = 0; i < array_length(pools); i++)
        total_weight += pools[i].weight;

    // Pick rarity pool by weight
    var roll = irandom_range(1, total_weight);
    var sum = 0;
    var selected_pool;

    for (var i = 0; i < array_length(pools); i++) {
        sum += pools[i].weight;
        if (roll <= sum) {
            selected_pool = pools[i];
            break;
        }
    }

    // Pick a card inside that pool
    var cards = selected_pool.cards;
    var card = cards[irandom(array_length(cards)-1)];

    return card;
}
