/// @description Insert description here
// You can write your code in this editor

if(draw){
	
draw_set_colour(c_white);
draw_text(100, 100, "Temperature: " + string(global.environment.heat))
draw_text(300, 100, "Rain: " + string(global.environment.rain))
draw_text(500, 100, "Days: " + string(global.game_setup.days))
draw_text(700, 100, "Season: " + string(global.environment.season))
draw_text(900, 100, "Blessings act: " + string(global.blessings_active))
// if (draw_sun) draw_sprite_ext(spr_weather_sun, sun_image_index, 0, 0, 2, 2, 1, c_white, 1);

	
	
var draw_y = 20;
var key = ds_map_find_first(global.booster_database);

while (!is_undefined(key))
{
    var booster = global.booster_database[? key];

    draw_text(20, draw_y, booster.name);
    draw_y += 18;

    var pools = booster.loot_pools;
    for (var i = 0; i < array_length(pools); i++)
    {
        draw_text(
            40,
            draw_y,
            string(pools[i].rarity) +
            " | weight: " + string(pools[i].weight) +
            " | cards: " + string(array_length(pools[i].cards))
        );
        draw_y += 16;
    }

    draw_y += 8;
    key = ds_map_find_next(global.booster_database, key);
}
}