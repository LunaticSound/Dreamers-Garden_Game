/// @description Insert description here
// You can write your code in this editor

if (hover) inc_counter += 1
else dec_counter += 1;

if (inc_counter >= 5 && image_index < image_number-1){
	image_index += 1;
	inc_counter = 0;
}

if (dec_counter >= 5 && image_index > 0){
	image_index -= 1;
	dec_counter = 0;
}