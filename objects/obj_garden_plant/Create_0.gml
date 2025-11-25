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

// scr_orb_rise_particles(x - 80, y - 60, 200, 54);
/*
switch(plant_data.particle){
	case particle_type.CUBED_BELL_RISER:
		scr_orb_rise_init(self.depth - 1);
        scr_orb_rise_emit_cubed(
            orb_fx.ps,
            orb_fx.pt,
            x - orb_spawn_width * 0.5, // left edge
            orb_spawn_width,
            orb_spawn_y,
            orb_spawn_rate);
        break;
}