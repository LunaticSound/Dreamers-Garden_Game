// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_destroy_card(){
if (destroying) {
    // Increment destroy progress smoothly
    destroy_t += destroy_speed;
    destroy_t = clamp(destroy_t, 0, 1);
	

    // Send normalized destroy_t directly to shader (0 = top, 1 = bottom)
//    shader_set_uniform_f(u_cut_y, destroy_t);

    // Particle emission along the destruction edge
	var bbox_h = bbox_bottom - bbox_top;
    var cut_y_world = bbox_top + destroy_t * bbox_h;

    // Emit particles in a small fraction above/below the line for smoothness
    var edge_range = 1; 
    part_emitter_region(
        ps_destroy,
        em_destroy,
        bbox_left,
        bbox_right,
        cut_y_world + 10,
        cut_y_world + 10 + edge_range,
        ps_shape_rectangle,
        ps_distr_linear
    );
	
	part_system_update(ps_destroy);

    // Destroy card when fully gone
    if (destroy_t >= 1) {
        instance_destroy();
    }
}

}