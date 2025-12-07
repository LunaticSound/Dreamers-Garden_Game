// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_weather_database(){
global.weather_data = ds_map_create();

global.weather_data[? season_type.SPRING ] = {
    temperature_mean: 28,
    temperature_sd: 3,
    rain_chance: 30, //by 100
	storm_chance: 5
};

global.weather_data[? season_type.SUMMER] = {
    temperature_mean: 39,
    temperature_sd: 5,
    rain_chance: 10,
	storm_chance: 5
};

global.weather_data[? season_type.AUTUMN] = {
    temperature_mean: 23,
    temperature_sd: 2,
    rain_chance: 40,
	storm_chance: 15
};

global.weather_data[? season_type.WINTER] = {
    temperature_mean: 14,
    temperature_sd: 6,
    rain_chance: 20,
	storm_chance: 10
};

}