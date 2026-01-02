// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unlock_card(booster_struct, rarity, card_id){
    var pools = global.booster_database[? booster_struct].loot_pools;

    for (var i = 0; i < array_length(pools); i++)
    {
        if (pools[i].rarity == rarity)
        {
            if (!array_contains(pools[i].cards, card_id))
                array_push(pools[i].cards, card_id);
            return;
        }
    }
	booster_struct.loot_pools = pools;
}