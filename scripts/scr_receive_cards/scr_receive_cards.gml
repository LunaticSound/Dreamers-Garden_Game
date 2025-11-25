// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function receive_cards(offerings){
switch offerings[0]{
	case "Moon Fruit":
		for (var i = 0; i < 3; i += 1){
			with instance_create_depth(room_width/2 - 400 + i*400, room_height/2, depth, obj_card_craft)
		}
	}
}