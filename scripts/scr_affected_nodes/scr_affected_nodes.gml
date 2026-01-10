// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// affected_nodes(gx, gy, type, param)
/// gx, gy = grid coordinates of the center tile
/// type = "plus", "3x3", "n_closest", "radius"
/// param = depends on type:
///     - "plus" → ignored
///     - "3x3" → ignored
///     - "n_closest" → param = number of tiles
///     - "radius" → param = {value: number, circular: true/false}

function affected_nodes(gx, gy, type, param) {
    var result = [];
    var w = array_length(global.grid_node_instances);
    var h = array_length(global.grid_node_instances[0]);

    switch(type) {

        case "plus":
            // center
            if (gx >= 0 && gx < w && gy >= 0 && gy < h) array_push(result, global.grid_node_instances[gx][gy]);
            // up
            if (gy-1 >= 0) array_push(result, global.grid_node_instances[gx][gy-1]);
            // down
            if (gy+1 < h) array_push(result, global.grid_node_instances[gx][gy+1]);
            // left
            if (gx-1 >= 0) array_push(result, global.grid_node_instances[gx-1][gy]);
            // right
            if (gx+1 < w) array_push(result, global.grid_node_instances[gx+1][gy]);
            break;

        case "3x3":
            for (var _x = gx-1; _x <= gx+1; _x++) {
                for (var _y = gy-1; _y <= gy+1; _y++) {
                    if (_x >= 0 && _x < w && _y >= 0 && _y < h) {
                        array_push(result, global.grid_node_instances[_x][_y]);
                    }
                }
            }
            break;

        case "n_closest":
            var n = param;
            var candidates = [];
            for (var _x = 0; _x < w; _x++) {
                for (var _y = 0; _y < h; _y++) {
                    var dist = abs(_x - gx) + abs(_y - gy); // Manhattan distance
                    array_push(candidates, [dist, global.grid_node_instances[_x][_y]]);
                }
            }
            array_sort(candidates, function(a, b) { return a[0] - b[0]; });
            var count = min(n, array_length(candidates));
            for (var i = 0; i < count; i++) {
                array_push(result, candidates[i][1]);
            }
            break;

        case "radius":
            var radius = param.value;
            var circular = param.circular; // true = Euclidean, false = Manhattan
            for (var _x = 0; _x < w; _x++) {
                for (var _y = 0; _y < h; _y++) {
                    var dist = (circular) ? point_distance(_x, _y, gx, gy) : abs(_x - gx) + abs(_y - gy);
                    if (dist <= radius) array_push(result, global.grid_node_instances[_x][_y]);
                }
            }
            break;
    }

    return result; // array of instance IDs
}
