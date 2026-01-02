/// @description Insert description here
// You can write your code in this editor

// Destroy Event
if (ds_exists(global.garden_plant_list, ds_type_list)) ds_list_destroy(global.garden_plant_list);

if (ds_exists(global.player.deck, ds_type_list)) ds_list_destroy(global.player.deck);

if (ds_exists(global.player.hand, ds_type_list)) ds_list_destroy(global.player.hand);

if (ds_exists(global.player.discard, ds_type_list)) ds_list_destroy(global.player.discard);

if (ds_exists(global.player.hand_objects, ds_type_list)) ds_list_destroy(global.player.hand_objects);
