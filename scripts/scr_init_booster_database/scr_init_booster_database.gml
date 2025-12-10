// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_booster_database(){

global.booster_database = ds_map_create();

ds_map_add(global.booster_database, "Moon+Moon+Moon",  
		{
        name: "Triple Moon",
		sprite: spr_booster_triple_moon,
		loot_array: [plant_cards.MOON_ROOT],
		pool_size: 1
    });

ds_map_add(global.booster_database, "Earth+Earth+Earth",  
		{
        name: "Supernova",
		sprite: spr_booster_supernova,
		loot_array: [plant_cards.PUMPKIN],
		pool_size: 1
    });
	
}