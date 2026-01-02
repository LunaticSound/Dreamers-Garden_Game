/// @description Insert description here
// You can write your code in this editor

global.dev_mode = true;
global.currency = 0;

init_card_database();
init_ground_database();
init_plant_database();
init_weather_database();
init_booster_database();

var _tex_array = texturegroup_get_textures( "MainMenu");
for (var i = 0; i < array_length(_tex_array); ++i)
{
    texture_prefetch(_tex_array[i]);
}