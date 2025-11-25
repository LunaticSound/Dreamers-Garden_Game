// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_setup(){
global.game_setup = {
    starting_deck: ["moon_root", "golden_clover", "stardust", "milkyway", "magika", "pumpkin", "sickle", "sickle", "sickle", "shovel", "shovel", "shovel"],
	garden_x: room_width/2,
	garden_y: room_height/4,
    garden_size: [5, 5],
	empty_tiles: 25,
	tile_size: 200,
	card_spacing: room_width/3,
	card_layer_depth: -3000,
	gui_layer_depth: -5000,
	tool_layer_depth: -1000,
	garden_layer_depth: 1000,
	altar_layer_depth: -2000,
	shoveled_tiles: 0,
	occupied_tiles: 0,
	plant_number: 0,
	days: 0,
	season_length: 18,
	};

global.player = {
	hunger : 0,           // starts at 0 (no hunger)
	hunger_rate : 4,    // how much hunger increases per day
	hunger_limit : 300,   // when this is reached, you starve
    deck: ds_list_create(),
    hand: ds_list_create(),
    discard: ds_list_create(),
	hand_objects: ds_list_create(),
	unlocked_cards: [0, 1]
};
	
enum weather_type {
    CLEAR,   
    CLOUDY,  
	RAINY,
	TORRENT,
	HEATWAVE,
	DROUGHT
};

enum season_type {
	SPRING,
	SUMMER,
	AUTUMN,
	WINTER
};

global.environment = {
	season: season_type.SPRING,
	weather: weather_type.CLEAR,
	heat: 18,
	};
}