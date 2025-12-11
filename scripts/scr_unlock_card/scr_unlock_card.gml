// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unlock_card(booster_struct, card_id){
    array_push(booster_struct.rarity_pools.common, card_id);
	
	/* ds_map_add(global.card_database, card_id, 
    {
        name: global.unlock_database.name,
		category: global.unlock_database.category,
        type: global.unlock_database.type,
		element: global.unlock_database.element,
        description: global.unlock_database.description,
		sprite: global.unlock_database.sprite
    }); */
}