// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function tool_watering_can(node_passed){
	with(node_passed) water_stored = clamp(water_stored + 3, 0, 6);
}