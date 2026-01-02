/// @description Insert description here
// You can write your code in this editor

each_plant_growth_phase();

var flicker_f = plant_data.pulse_strength;

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