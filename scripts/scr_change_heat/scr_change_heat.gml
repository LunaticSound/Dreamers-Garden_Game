// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_heat(grid_x, grid_y, n_affected, heat_change){
	var tiles = affected_nodes(grid_x, grid_y, n_affected);

for (var i = 0; i < array_length(tiles); i++) {
    var tile = tiles[i];
    with (tile){
		heat += heat_change;	
		if(inhabitant != -1){ 
			with(inhabitant) calculate_temp_values(other);
		}
	}
}


}