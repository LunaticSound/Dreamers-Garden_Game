/// @description Insert description here
// You can write your code in this editor

switch (plant_data.effect){
	case plant_effects.CHANGE_HEAT:
		change_heat(gx, gy, plant_data.effect_radius, -plant_data.effect_strength, self);
	case plant_effects.HARM:
	
	case plant_effects.GREGARIOUSNESS:
	gregariousness(gx, gy, plant_data.effect_radius, -plant_data.effect_strength);
	
}