// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_destroy_variables(){
	destroy_t = 0;          // 0..1
	destroy_speed = 0.02   // seconds
	destroying = false;
 // obj_card_craft : Create Event
ps_destroy = part_system_create();
part_type_life(pt_shape_sphere, 10, 20);
part_system_depth(ps_destroy, depth - 1);

em_destroy = part_emitter_create(ps_destroy);

part_emitter_stream(ps_destroy, em_destroy, pt_shape_sphere, 150); 


// optional: configure emitter defaults here
// part_emitter_shape(ps_destroy, em_destroy, ps_shape_line);

shd_destroy = shd_card_destroy;
u_cut_y = shader_get_uniform(shd_destroy, "u_cut_y");
}
