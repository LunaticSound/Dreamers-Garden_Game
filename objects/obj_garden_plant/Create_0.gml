/// @description Insert description here
// You can write your code in this editor

depth = -y;
grow_count = 0;
grow = true;
fruit_ripe = false;
ripe_count = 0;
fruit_grow = true;
emit = true;
hot = false;
cold = false;
thirsty = false;
growth_phase_duration = 40; // the higher, the longer
growth_phase_process = false;
growth_phase_done = false;
growth_phase_counter = 0;
draw_feedback = false;
dots_to_draw = [];
draw_scale = 0.5;
plant_state = plant_states.SEEDLING;
fruit_dot = false;