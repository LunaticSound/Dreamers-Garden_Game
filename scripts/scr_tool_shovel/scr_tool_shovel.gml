// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tool_shovel(node_passed){
	var nearest_node = node_passed;
	with(nearest_node) shoveled = true;
	global.game_setup.shoveled_tiles += 1;
}