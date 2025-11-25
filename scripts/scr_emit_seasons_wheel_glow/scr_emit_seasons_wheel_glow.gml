// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function emit_seasons_wheel_glow(center_x, center_y, radius, particle_count){

// Emit particles in a circular pattern
for (var i = 0; i < particle_count; i++) {
    var angle = random(360); // Random angle around the circle
    var px = center_x + lengthdir_x(radius, angle);
    var py = center_y + lengthdir_y(radius, angle);
    part_particles_create(
        glow_particle_system,
        px, py,
        glow_particle_type,
        1
    );
}

}