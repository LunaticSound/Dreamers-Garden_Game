// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_seasons_wheel_glow(){
// Create Event: Initialize the particle system
glow_particle_system = part_system_create();
glow_particle_type = part_type_create();

// Configure the particle type
part_type_shape(glow_particle_type, pt_shape_sphere);
part_type_size(glow_particle_type, 0.01, 0.1, 0.02, 0); // Start small, grow slightly
part_type_color3(glow_particle_type, $F4E9F4, $FFEECB, $819EFF); // Glow colors
part_type_alpha3(glow_particle_type, 0.8, 0.2, 0); // Fade out
part_type_life(glow_particle_type, 20, 60); // Particle lifetime (steps)
part_type_step(glow_particle_type, 0, 0); // No movement
part_type_speed(glow_particle_type, 0, 0, 0, 0); // No speed
part_type_gravity(glow_particle_type, 0, 0); // No gravity
part_type_blend(glow_particle_type, true); // Enable additive blending for glow

}