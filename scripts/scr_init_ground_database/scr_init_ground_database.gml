// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_ground_database(){
global.ground_database = [
    {
        id: 0,
        name: "Soil",
        type: "Ground",
        water: 10,
		max_water: 20,
        description: "Good soil for plants",
		sprite: [spr_tile_soil, spr_tile_soil, spr_tile_soil_stones]
    },
    {
        id: 1,
        name: "Sand",
        type: "Ground",
        water: 2,
		max_water: 10,
        description: "Dry sand, can´t hold water well",
		sprite: [spr_tile_sand]
    },
    {
        id: 2,
        name: "Dry Soil",
        type: "Ground",
        water: 2,
		max_water: 20,
        description: "Dry sand, can´t hold water well",
		sprite: [spr_tile_dry_soil]
    }
];

}