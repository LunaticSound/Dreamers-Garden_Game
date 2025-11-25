// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(filename){
/// scr_save_game(filename)
var _filename = filename;

// Create a ds_map to store the game data
var game_data = ds_map_create();

// Save player data
game_data[? "hand"] = global.player.hand;
game_data[? "deck"] = global.player.deck;
game_data[? "discard"] = global.player.discard;

// Save game state
game_data[? "state"] = global.state;

// Save garden data
game_data[? "garden"] = global.garden;

// Save other game data
// game_data[? "other_data"] = global.other_data;

// Convert the ds_map to a JSON string
var json_data = json_encode(game_data);

// Save the JSON string to a file
file_text_open_write(_filename);
file_text_write_string(_filename, json_data);
file_text_close(_filename);

// Clean up
ds_map_destroy(game_data);

}