// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_destroy_card(){
if (destroying)
{
	
    shader_set(shd_destroy);
	shader_set_uniform_f(u_cut_y, destroy_t);
    draw_self();
    shader_reset();
}
else
{
    draw_self();
}
}