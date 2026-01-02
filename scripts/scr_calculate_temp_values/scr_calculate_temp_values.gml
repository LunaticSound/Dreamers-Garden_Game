// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function calculate_temp_values(tile){
// scale factor: pixels per degree
var px_per_degree = 180 / global.game_setup.temp_range;

// offset from center
x_window = (plant_data.heat_pref - (global.game_setup.temp_range/2)) * px_per_degree;
x_heat_marker = (tile.heat - (global.game_setup.temp_range/2)) * px_per_degree;

// for tolerance, half-width in pixels
x_scale_window = (plant_data.heat_tol * 2 * px_per_degree / 100);

}
