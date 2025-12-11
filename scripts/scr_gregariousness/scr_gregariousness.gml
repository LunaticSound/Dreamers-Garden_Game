// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gregariousness(grid_x, grid_y, n_affected, effect_strength){
	var tiles = affected_nodes(grid_x, grid_y, n_affected);
	
for (var i = 0; i < array_length(tiles); i++) {
    var tile = tiles[i];

		with (tile){
				if occupied{
			inhabitant.plant_data.days_until_ripe -= effect_strength;
			}
		}
	}
}