// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum tool_displays{
	WATERING_CAN
}

enum game_state {
    CARD,   // selecting and handling cards
    PLANT,   // placing the chosen plant
	TOOL,    // using tools
	GROW,
	END_DAY,
	RECEIVE,
	CRAFT,
	SHOW_CARD
}

function game_setup(){	
global.game_setup = {
    starting_deck: [plant_cards.MOON_ROOT, tool_cards.WATERING_CAN, plant_cards.GOLDEN_CLOVER, plant_cards.MILKYWAY, plant_cards.MAGIKA, tool_cards.SHOVEL, tool_cards.SICKLE, plant_cards.MANYSOUL_GRAIN],
	// "moon_root", "golden_clover", "stardust", "milkyway", "magika", "pumpkin", "sickle", "sickle", "sickle", "shovel", "shovel", "shovel"],
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
	season_length: 16,
	temp_range: 58,
	tool_display: -1
	};

global.player = {
	hunger : 0,           // starts at 0 (no hunger)
	hunger_rate : 4,    // how much hunger increases per day
	hunger_limit : 300,   // when this is reached, you starve
    deck: ds_list_create(),
    hand: ds_list_create(),
    discard: ds_list_create(),
	hand_objects: ds_list_create()
};

enum plant_states {
	SEEDLING,
	REGULAR,
	SPLENDID,
	SICK,
	DEAD
};
	
enum weather_type {
    CLEAR,   
    CLOUDY,  
	RAINY,
	STORM,
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
	heat: 20,
	rain: 0
	};
	
window_set_cursor(cr_none);
}