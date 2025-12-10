// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weather_effects(){
	if(global.environment.rain > 0) effect_create_depth(-9000, ef_rain, x, y, clamp(global.environment.rain, 0, 2), c_grey);
	if(global.environment.rain = 0) draw_sun = true
	else draw_sun = false;
}