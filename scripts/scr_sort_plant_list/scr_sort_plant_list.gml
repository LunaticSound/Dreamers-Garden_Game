// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function sort_plants()
/// Sorts plants left→right, top→bottom
function sort_plant_list() {
// Create a temporary array of IDs and their keys
var temp = [];
var count = ds_list_size(global.garden_plant_list);
for (var i = 0; i < count; i++) {
    var inst = global.garden_plant_list[| i];
    array_push(temp, [inst.gy * 1000 + inst.gx, inst]); // [sort_key, instance]
}

// Sort the array manually
for (var i = 0; i < array_length(temp) - 1; i++) {
    for (var j = i+1; j < array_length(temp); j++) {
		if (temp[i][0] < temp[j][0]) {
            var t = temp[i];
            temp[i] = temp[j];
            temp[j] = t;
        }
    }
}

// Rewrite the DS list in sorted order
for (var i = 0; i < array_length(temp); i++) {
    global.garden_plant_list[| i] = temp[i][1];
}

}
