// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_ready(show){
if (show){
	if(entries = 0){
		show_mid = true;
		show_left = false;
		show_right = false;
	}
		if(entries = 1){
		show_mid = false;
		show_left = false;
		show_right = true;
	}
		if(entries = 2){
		show_mid = false;
		show_left = true;
		show_right = false;
	}}else{
		show_mid = false;
		show_left = false;
		show_right = false;
	}
}