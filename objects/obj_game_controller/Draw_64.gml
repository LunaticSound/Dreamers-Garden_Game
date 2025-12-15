/// @description Insert description here
// You can write your code in this editor


draw_set_colour(c_white);
draw_text(100, 100, "Temperature: " + string(global.environment.heat))
draw_text(300, 100, "Rain: " + string(global.environment.rain))
draw_text(500, 100, "Days: " + string(global.game_setup.days))
draw_text(700, 100, "Season: " + string(global.environment.season))
// if (draw_sun) draw_sprite_ext(spr_weather_sun, sun_image_index, 0, 0, 2, 2, 1, c_white, 1);
