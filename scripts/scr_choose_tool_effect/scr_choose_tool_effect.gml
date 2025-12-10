// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_tool_effect(nearest_node){
	switch (global.card_database[? global.selected_card].effect){
		case tool_effect.SHOVEL:
			tool_shovel(nearest_node);
			break;
		case tool_effect.SICKLE:
			tool_sickle(nearest_node);
			break;
		case tool_effect.WATERING_CAN:
			tool_watering_can(nearest_node);
	}
}