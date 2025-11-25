// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
function init_card_database_bkp(){

enum card_type {
    TOOL,   
    PLANT,  
	BLESSING,
	FRUIT
}

enum tool_target {
	EMPTY_TILE,
	ANY_TILE,
	PLANT,
	FRUIT
}

enum tool_effect {
	SHOVEL,
	SICKLE
}



global.card_database = [
    {
        id: 0,
        name: "Stardust",
		category: card_type.PLANT,
        type: "Plant",
        description: "It holds within the warmth of the sun and lights up darkness and cold alike.",
		sprite: spr_card_plant_stardust,
		plant_sprite: spr_plant_stardust
    },
    {
        id: 1,
        name: "Moon Root",
		category: card_type.PLANT,
        type: "Plant",
        description: "It guides wandering souls through the dark of the night with its blue shine.",
		sprite: spr_card_plant_moon_root,
		plant_sprite: spr_moon_root_seedling
    },
    {
        id: 2,
        name: "Golden Clover",
		category: card_type.PLANT,
        type: "Plant",
        description: "Everybodys darling because of its delicious and nutrient rich golden fruit.",
		sprite: spr_card_plant_golden_clover,
		plant_sprite: spr_golden_clover_seedling
    },
    {
        id: 3,
        name: "Magika",
		category: card_type.PLANT,
        type: "Plant",
        description: "The deities favour the bittersweet taste of Magikas fruit.",
		sprite: spr_card_plant_magika,
		plant_sprite: spr_magika_seedling
    },
    {
        id: 4,
        name: "Skull of Ra",
		category: card_type.PLANT,
        type: "Plant",
        description: "Takes time and a lot of sun to grow, but will feed you for days on end.",
		sprite: spr_card_plant_pumpkin,
		plant_sprite: spr_plant_pumpkin
    },
	{
        id: 5,
        name: "Milkyway",
		category: card_type.PLANT,
        type: "Plant",
        description: "Its spiraling leaves provide a breeze of fresh air to surrounding plants.",
		sprite: spr_card_plant_milkyway,
		plant_sprite: spr_milkyway_seedling
    },
    {
        id: 1000,
        name: "Shovel",
		category: card_type.TOOL,
        type: "Tool",
        effect: tool_effect.SHOVEL,
        description: "Prepare the soil for planting seedlings for today.",
		sprite: spr_card_tool_shovel,
		plant_sprite: spr_tool_shovel,
		target: tool_target.EMPTY_TILE
    },
	    {
        id: 1001,
        name: "Sickle",
		category: card_type.TOOL,
        type: "Tool",
        effect: tool_effect.SICKLE,
        description: "Harvest fruits and cut plants.",
		sprite: spr_card_tool_sickle,
		plant_sprite: spr_tool_sickle,
		target: tool_target.PLANT
    },
	    {
        id: 2000,
        name: "Golden Peach",
		category: card_type.FRUIT,
        type: "Fruit",
        effect: -1,
        description: "Yum.",
		sprite: spr_card_fruit_golden_clover,
		plant_sprite: spr_golden_clover_regular,
		target: -1
    },
	    {
        id: 2001,
        name: "Magifruit",
		category: card_type.FRUIT,
        type: "Fruit",
        effect: -1,
        description: "Yuck.",
		sprite: spr_card_fruit_magika,
		plant_sprite: spr_magika_regular,
		target: -1
    }
];

}