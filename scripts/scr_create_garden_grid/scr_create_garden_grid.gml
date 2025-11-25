// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_garden_grid(width, height, size){
var grid_width = width;
var grid_height = height;
var grid_size = size;

// Create a ds_list to store instance references
var grid = array_create(width);
for (var i = 0; i < width; i++) {
    grid[i] = array_create(height);
}


// Create visual grid nodes
for (var i = 0; i < grid_width; i++) {
    for (var j = 0; j < grid_height; j++) {
        // Calculate world position for the grid node
        var world_x = global.game_setup.garden_x + (i - j) * grid_size; // Adjust for isometric grid
        var world_y = global.game_setup.garden_y + (i + j) * grid_size/2;

        // Create the grid node instance
        var inst = instance_create_depth(world_x, world_y, global.game_setup.garden_layer_depth, obj_grid_node);
		
		with(inst){
			heat = global.environment.heat;
			gx = i;
			gy = j;
		}
        // Store the instance reference in the ds_list
        grid[i][j] = inst;
		}
	}
	return(grid);
}

