// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_boulder_tile(x_pos, y_pos){
var search_x = x_pos;
var search_y = y_pos;
var nearest_id = noone;
var nearest_dist = room_width; // Start with a large distance

// Check all grid node instances
with (obj_grid_node) {
    if (inhabitant == obj_boulder) {
        var dist = point_distance(search_x, search_y, x, y);
        if (dist < nearest_dist) {
            nearest_dist = dist;
            nearest_id = id;
        }
    }
}

return nearest_id;

}