// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_card_database(){

enum card_type {
    TOOL,   
    PLANT,  
	BLESSING,
	FRUIT,
	MATERIAL
}

enum tool_target {
	EMPTY_TILE,
	ANY_TILE,
	PLANT,
	FRUIT
}

enum tool_effect {
	SHOVEL,
	SICKLE,
	WATERING_CAN
}

enum plant_cards {
	STARDUST,
	MOON_ROOT,
	GOLDEN_CLOVER,
	MAGIKA,
	PUMPKIN,
	MILKYWAY,
	MANYSOUL_GRAIN,
	NIGHTSHADE_GINGKO, 
	PURPLE_SNAIL,
	WATER_OMEN
	}

enum tool_cards {
	SHOVEL = 1000,
	SICKLE = 1001,
	WATERING_CAN = 1002,
}

enum fruit_cards{
	GOLDEN_PEACH = 2000,
	MAGIFRUIT = 2001,
	MOONFRUIT = 2002,
	BLOATKIN = 2003
}
	
enum material{
	DEADWOOD = 3000,
	RADIANT_ROOT = 3001,
	MIRRORGLAS = 3002,
	MOONSTONE= 3003
}


global.card_database = ds_map_create();

// --- PLANTS ---

ds_map_add(global.card_database, plant_cards.STARDUST, 
    {
        name: "Stardust",
		category: card_type.PLANT,
        type: "Plant",
		element: "Sun",
        description: "It holds within the warmth of the sun and lights up darkness and cold alike.",
		sprite: spr_card_plant_stardust,
		plant_sprite: spr_plant_stardust
    });
ds_map_add(global.card_database, plant_cards.MOON_ROOT, 
    {
        name: "Moon Root",
		category: card_type.PLANT,
        type: "Plant",
		element: "Moon",
        description: "It guides wandering souls through the dark of the night with its blue shine.",
		sprite: spr_card_plant_moon_root,
		plant_sprite: spr_moon_root_seedling
    })
ds_map_add(global.card_database, plant_cards.GOLDEN_CLOVER, 
	{
        name: "Golden Clover",
		category: card_type.PLANT,
        type: "Plant",
		element: "Earth",
        description: "Everybodys darling because of its delicious and nutrient rich golden fruit.",
		sprite: spr_card_plant_golden_clover,
		plant_sprite: spr_golden_clover_seedling
    })
ds_map_add(global.card_database, plant_cards.MAGIKA, 
    {
        name: "Magika",
		category: card_type.PLANT,
        type: "Plant",
		element: "Illusion",
        description: "The deities favour the bittersweet taste of Magikas fruit.",
		sprite: spr_card_plant_magika,
		plant_sprite: spr_magika_seedling
    })
ds_map_add(global.card_database, plant_cards.PUMPKIN,
    {
        name: "Skull of Ra",
		category: card_type.PLANT,
        type: "Plant",
		element: "Sun",
        description: "Takes time and a lot of sun to grow, but will feed you for days on end.",
		sprite: spr_card_plant_pumpkin,
		plant_sprite: spr_plant_pumpkin
    })
ds_map_add(global.card_database, plant_cards.MILKYWAY, 
	{
        name: "Milkyway",
		category: card_type.PLANT,
        type: "Plant",
		element: "Moon",
        description: "Its spiraling leaves provide a breeze of fresh air to surrounding plants.",
		sprite: spr_card_plant_milkyway,
		plant_sprite: spr_milkyway_seedling
    })
ds_map_add(global.card_database, plant_cards.MANYSOUL_GRAIN, 
	{
        name: "Manysoul Grain",
		category: card_type.PLANT,
        type: "Weed",
		element: "Earth",
        description: "- 1 day until ripe for every other weed around it.",
		sprite: spr_card_plant_milkyway_1,
		plant_sprite: spr_milkyway_seedling
    })
ds_map_add(global.card_database, plant_cards.WATER_OMEN, 
	{
        name: "Water Omen",
		category: card_type.PLANT,
        type: "Sun",
		element: "Moon",
        description: "Harvest: Next day will be rainy.",
		sprite: spr_card_plant_milkyway,
		plant_sprite: spr_milkyway_seedling
    })
ds_map_add(global.card_database, plant_cards.PURPLE_SNAIL, 
	{
        name: "Purple Snail",
		category: card_type.PLANT,
        type: "Plant",
		element: "Illusion",
        description: "Its spiraling leaves provide a breeze of fresh air to surrounding plants.",
		sprite: spr_card_plant_milkyway,
		plant_sprite: spr_milkyway_seedling
    })
ds_map_add(global.card_database, plant_cards.NIGHTSHADE_GINGKO, 
	{
        name: "Nightshade Gingko",
		category: card_type.PLANT,
        type: "Plant",
		element: "Moon",
        description: "Its spiraling leaves provide a breeze of fresh air to surrounding plants.",
		sprite: spr_card_plant_milkyway,
		plant_sprite: spr_milkyway_seedling
    })
ds_map_add(global.card_database, tool_cards.SHOVEL, 
    {
        name: "Shovel",
		category: card_type.TOOL,
        type: "Tool",
		element: "Tool",
        effect: tool_effect.SHOVEL,
        description: "Prepare the soil for planting seedlings for today.",
		sprite: spr_card_tool_shovel,
		plant_sprite: spr_tool_shovel,
		target: tool_target.EMPTY_TILE
    })
ds_map_add(global.card_database, tool_cards.SICKLE, 
	    {
        name: "Sickle",
		category: card_type.TOOL,
        type: "Tool",
		element: "Tool",
        effect: tool_effect.SICKLE,
        description: "Harvest fruits and cut plants.",
		sprite: spr_card_tool_sickle,
		plant_sprite: spr_tool_sickle,
		target: tool_target.PLANT
    })
ds_map_add(global.card_database, tool_cards.WATERING_CAN, 
	    {
        name: "Watering Can",
		category: card_type.TOOL,
        type: "Tool",
		element: "Tool",
        effect: tool_effect.WATERING_CAN,
        description: "Water your plants.",
		sprite: spr_card_tool_can,
		plant_sprite: spr_tool_can,
		target: tool_target.ANY_TILE
    })
	
	// --- FRUITS --- 

ds_map_add(global.card_database, fruit_cards.GOLDEN_PEACH, 
	    {
        name: "Golden Peach",
		category: card_type.FRUIT,
        type: "Fruit",
		nutritiousness: 5,
		element: "Earth",
        effect: -1,
        description: "Yum.",
		sprite: spr_card_fruit_earth,
		plant_sprite: spr_golden_clover_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_earth
    })
ds_map_add(global.card_database, fruit_cards.MAGIFRUIT, 
	    {
        name: "Magifruit",
		category: card_type.FRUIT,
        type: "Fruit",
		nutritiousness: 3,
		element: "Illusion",
        effect: -1,
        description: "Yuck.",
		sprite: spr_card_fruit_illusion,
		plant_sprite: spr_magika_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_illusion
    })

ds_map_add(global.card_database, fruit_cards.MOONFRUIT, 
	    {
        name: "Moon Fruit",
		category: card_type.FRUIT,
        type: "Fruit",
		nutritiousness: 6,
		element: "Moon",
        effect: -1,
        description: "Yuck.",
		sprite: spr_card_fruit_moon,
		plant_sprite: spr_magika_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_moon
    })
	
ds_map_add(global.card_database, fruit_cards.BLOATKIN, 
	    {
        name: "Skull of Ra",
		category: card_type.FRUIT,
        type: "Fruit",
		nutritiousness: 11,
		element: "Sun",
        effect: -1,
        description: "Yuck.",
		sprite: spr_card_fruit_sun,
		plant_sprite: spr_magika_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_sun
    })
	
	// --- CRAFTING MATERIALS ---
	
ds_map_add(global.card_database, material.DEADWOOD, 
	    {
        name: "Deadwood",
		category: card_type.MATERIAL,
        type: "Material",
		element: "Tool",
        effect: -1,
        description: "Use this to make tools.",
		sprite: spr_card_material_earth,
		plant_sprite: spr_magika_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_earth
    })
	
ds_map_add(global.card_database, material.MIRRORGLAS, 
	    {
        name: "Mirrorglas",
		category: card_type.MATERIAL,
        type: "Material",
		element: "Tool",
        effect: -1,
        description: "Use this to make tools.",
		sprite: spr_card_material_illusion,
		plant_sprite: spr_magika_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_illusion
    })
	
ds_map_add(global.card_database, material.MOONSTONE, 
	    {
        name: "Moonstone",
		category: card_type.MATERIAL,
        type: "Material",
		element: "Tool",
        effect: -1,
        description: "Use this to make tools.",
		sprite: spr_card_material_moon,
		plant_sprite: spr_magika_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_moon
    })
	
ds_map_add(global.card_database, material.RADIANT_ROOT, 
	    {
        name: "Radiant Root",
		category: card_type.MATERIAL,
        type: "Material",
		element: "Tool",
        effect: -1,
        description: "Use this to make tools.",
		sprite: spr_card_material_sun,
		plant_sprite: spr_magika_regular,
		target: -1,
		craft_sprite: spr_craft_fruit_sun
    })
}