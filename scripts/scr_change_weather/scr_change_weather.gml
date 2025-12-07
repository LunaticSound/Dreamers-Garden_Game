// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_weather(){
	global.environment.heat = round(gauss(global.weather_data[? global.environment.season].temperature_mean, global.weather_data[? global.environment.season].temperature_sd));
	if (irandom(99) < global.weather_data[? global.environment.season].rain_chance){ 
		global.environment.rain += 1;
		if (irandom(99) < global.weather_data[? global.environment.season].rain_chance){ 
			global.environment.rain += 1;
			if (irandom(99) < global.weather_data[? global.environment.season].rain_chance){
				global.environment.rain += 1;
			}
		}
	} else {
		global.environment.rain -= 1;
	}
	global.environment.rain =  clamp(global.environment.rain, 0, 3);
	if (irandom(99) < global.weather_data[? global.environment.season].storm_chance){
		//trigger storm
	}
}