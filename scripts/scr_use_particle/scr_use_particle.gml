// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function use_particle(){
	switch(plant_data.particle){
		case particle_type.CUBED_BELL_RISER:
			orb_emitter_cubed(				
				orb_fx.ps,
				orb_fx.pt,
				x + 3 , // left edge
				45,
				20,
				y - 51,
				1)
/*		
			orbd(
				orb_fx.ps,
				orb_fx.pt,
				x - 25, // left edge
				20,
				100,
				y - 40,
				2);
			*/
}
}