/// @description Insert description here
// You can write your code in this editor

each_plant_growth_phase();

var flicker_f = plant_data.pulse_strength;
var wiggle = plant_data.fruit_wiggle;
var base_x = x + plant_data.fruit_x;
var base_y = y + plant_data.fruit_y;

flicker_f += random_range(-0.005, 0.005)

if (grow){
	glow_size += flicker_f;
	grow_count += 1;
}

if (!grow){ 
	glow_size -= flicker_f;
	grow_count -=1;
}

if (grow && grow_count >= plant_data.flicker_speed) grow = false;

if (!grow && grow_count <= 0) grow = true;

if (fruit_ripe) use_particle();

if (fruit_x >= plant_data.fruit_x + wiggle) fruit_grow = false;
if (fruit_grow){
	fruit_x = lerp(fruit_x, base_x + wiggle, 0.1)
	fruit_y = lerp(fruit_y, base_y + wiggle, 0.1)
}
if (fruit_x <= plant_data.fruit_x - wiggle) fruit_grow = true;
if (!fruit_grow){
	fruit_x = lerp(fruit_x, base_x - wiggle, 0.1)
	fruit_y = lerp(fruit_y, base_y - wiggle, 0.1)
}