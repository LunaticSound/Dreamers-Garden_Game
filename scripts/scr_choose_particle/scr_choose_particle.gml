// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_particle(){
						switch(plant_data.particle){
							case particle_type.CUBED_BELL_RISER:
								orb_fx = scr_orb_rise_init(self.depth - 1);
						        break;
						}
}