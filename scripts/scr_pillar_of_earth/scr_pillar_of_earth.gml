// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pillar_of_earth(){
	nodes = affected_nodes(underlying_tile.gx, underlying_tile.gy, "3x3");
	for (var i = 0; i < array_length(nodes); i ++){
		with(nodes[i].inhabitant){
			if (plant_state != plant_states.SICK && plant_state != plant_states.DEAD){ 
				fruit_ripe = true;
				plant_state = plant_states.SPLENDID;
				sprite_index = plant_data.plant_sprite[plant_state];
			}
		}
	}
}