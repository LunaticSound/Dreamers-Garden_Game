/// @description Insert description here
// You can write your code in this editor
// Initialize player data

game_setup();
randomise();

// safe_rare_drop = false;
global.blessings_active = [];

global.garden_plant_list = ds_list_create();
global.grid_node_instances = create_garden_grid(global.game_setup.garden_size[0],global.game_setup.garden_size[1], global.game_setup.tile_size);
altar_cards = [];
forge_cards = [];
rotate_wheel = 0;

setup_seasons_wheel_glow();
wheel_rotation = 0;
moon_rotation = 0;
wheel_rotation_target = 0;
moon_rotation_target = 0;

cursor = false;
day_end_index = 0;
draw_sun = true;
sun_image_index = 0;

global.selected_card = -1; // -1 = no card selected
global.selected_card_object = -1;
global.plant_sprite = instance_create_depth(0, 0, global.game_setup.tool_layer_depth, obj_plant_sprite);
global.plant_sprite.visible = false; // Initially hidden

altar = instance_create_depth(-800, 150, global.game_setup.altar_layer_depth, obj_altar);
forge = instance_create_depth(-800, 150, global.game_setup.altar_layer_depth, obj_forge);
consume = instance_create_depth(room_width, 150, global.game_setup.altar_layer_depth, obj_consume);
with(consume){
	game_controller = other.id}

global.state = game_state.CARD;

fill_top = display_get_gui_height() - 55;
time_to_die = false;

save_1 = "savegame_1.json";

// Create starting deck
for (var i = 0; i < array_length(global.game_setup.starting_deck); i++) {
	array_push(global.player.deck, global.game_setup.starting_deck[i]);
	}
shuffle_deck();

// draw first 4 cards
to_draw = 4;
alarm[0] = 3;

image_xscale = 0.5;
image_yscale = 0.5;

scr_set_up_destroy_particle();