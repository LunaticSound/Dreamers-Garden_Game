// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_up_destroy_particle(){
	ps_destroy = part_system_create();
	part_system_depth(ps_destroy, -1000);

	pt_burn = part_type_create();
	part_type_shape(pt_burn, pt_shape_pixel);
	part_type_size(pt_burn, 0.5, 1, 0, 0);
	part_type_speed(pt_burn, 0.2, 1, -0.01, 0);
	part_type_life(pt_burn, 10, 25);
	part_type_alpha2(pt_burn, 1, 0);
	part_type_colour1(pt_burn, c_orange);

	em_destroy = part_emitter_create(ps_destroy);
}