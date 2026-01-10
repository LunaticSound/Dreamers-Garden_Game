// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_booster_database(){
	
enum rarities {
	COMMON,
	UNCOMMON,
	RARE,
	LEGENDARY
}

global.booster_database = ds_map_create();

ds_map_add(global.booster_database, "Earth+Earth+Earth",  
		{
        name: "Superearth",
		sprite: spr_booster_superearth,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.HOLLOW_BONSAI, plant_cards.GOLDEN_CLOVER, plant_cards.MANYSOUL_GRAIN, plant_cards.STARDUST, blessings.THE_FEAST] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.PUMPKIN, plant_cards.ASHEN_SHELLWOOD] },
			{ rarity: rarities.RARE,      weight:  8, cards: [plant_cards.PILLAR_OF_THE_EARTH] },
			//{ rarity: "legendary", weight:  2, cards: [12] }
		]
    });
	
ds_map_add(global.booster_database, "Earth+Earth+Moon",  
		{
        name: "The Ancestors",
		sprite: spr_booster_ancestors,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.GOLDEN_CLOVER, plant_cards.MILKYWAY] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MILKYWAY] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Earth+Earth+Sun",  
		{
        name: "Green Planet",
		sprite: spr_booster_green_planet,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.GOLDEN_CLOVER] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.PUMPKIN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Earth+Earth+Illusion",  
		{
        name: "Strange Planet",
		sprite: spr_booster_strange_planet,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.GOLDEN_CLOVER] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.PUMPKIN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });

ds_map_add(global.booster_database, "Moon+Moon+Moon",  
		{
        name: "Triple Moon",
		sprite: spr_booster_triple_moon,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MOON_ROOT] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MILKYWAY] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Moon+Moon+Sun",  
	{
    name: "Eclipse",
	sprite: spr_booster_eclipse,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MOON_ROOT] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MILKYWAY] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
});

ds_map_add(global.booster_database, "Earth+Moon+Moon",  
	{
    name: "Home",
	sprite: spr_booster_home,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MOON_ROOT] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MILKYWAY] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
});

ds_map_add(global.booster_database, "Illusion+Moon+Moon",  
	{
    name: "The Lunatic",
	sprite: spr_booster_lunacy,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MOON_ROOT] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MILKYWAY] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
});
	
ds_map_add(global.booster_database, "Illusion+Illusion+Illusion",  
		{
        name: "Madness",
		sprite: spr_booster_madness,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MAGIKA] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MAGIKA] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Illusion+Illusion+Moon",  
		{
        name: "Nebula",
		sprite: spr_booster_nebula,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MAGIKA] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MAGIKA] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Illusion+Illusion+Sun",  
		{
        name: "Eldritch God",
		sprite: spr_booster_eldritch,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MAGIKA] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MAGIKA] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Earth+Illusion+Illusion",  
		{
        name: "The Swamps",
		sprite: spr_booster_swamps,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.MAGIKA] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.MAGIKA] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Sun+Sun+Sun",  
		{
        name: "Supernova",
		sprite: spr_booster_supernova,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.STARDUST] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.PUMPKIN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Illusion+Sun+Sun",  
		{
        name: "Midnight Sun",
		sprite: spr_booster_midnight_sun,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.STARDUST] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.PUMPKIN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Earth+Sun+Sun",  
		{
        name: "Scorched Planet",
		sprite: spr_booster_scorched_planet,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.STARDUST] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.PUMPKIN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Moon+Sun+Sun",  
		{
        name: "Scholars of the Sun",
		sprite: spr_booster_scholars_of_the_sun,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [plant_cards.STARDUST] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [plant_cards.PUMPKIN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });

ds_map_add(global.booster_database, "Tool+Tool",  
		{
        name: "Tools",
		sprite: spr_booster_scholars_of_the_sun,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [tool_cards.SHOVEL, tool_cards.SICKLE, tool_cards.WATERING_CAN] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [tool_cards.WATERING_CAN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });
	
ds_map_add(global.booster_database, "Tool+Tool+Tool",  
		{
        name: "Tools",
		sprite: spr_booster_superearth,
		loot_pools: [
			{ rarity: rarities.COMMON,    weight: 65, cards: [tool_cards.SHOVEL, tool_cards.SICKLE, tool_cards.WATERING_CAN] },
			{ rarity: rarities.UNCOMMON,  weight: 25, cards: [tool_cards.WATERING_CAN] },
			/* { rarity: "rare",      weight:  8, cards: [10,11] },
			{ rarity: "legendary", weight:  2, cards: [12] } */
		]
    });

}