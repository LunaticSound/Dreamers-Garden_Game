// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @desc Creates a particle effect: glowing orbs rising upward and fading.
/// @arg x       left side of the spawn area
/// @arg y       top of vertical spawn area
/// @arg width   horizontal width of spawn area
/// @arg height  vertical height of spawn area (e.g. 100 px)
///
/// @return {struct} Contains: ps, type, emitter

/// scr_orb_particles_init(x, y)
/// @desc Create a glowing-orb particle system that emits over 100px horizontally.
/// @arg x   Left edge of the spawn area
/// @arg y   Vertical position where the orbs start

function scr_orb_rise_particles(xx, yy, width, height){

// Create particle system
global.orb_ps = part_system_create();

part_system_depth(global.orb_ps, self.depth - 1);

// Let GameMaker draw particles automatically
part_system_automatic_draw(global.orb_ps, true);

// Create particle type
global.orb_pt = part_type_create();

part_type_shape(global.orb_pt, pt_shape_sphere);     // round orbs
part_type_size(global.orb_pt, 0.05, 0.3, 0, 0);       // small to medium
part_type_color2(global.orb_pt, c_white, c_yellow);    // soft glow color
part_type_alpha3(global.orb_pt, 0, 1, 0);            // fade in → visible → fade out
part_type_life(global.orb_pt, 40, 90);               // how long they live (steps)

part_type_speed(global.orb_pt, 1.2, 2.2, 0, 0);      // how fast they rise
part_type_direction(global.orb_pt, 90, 90, 0, 0);    // straight up (90°)
part_type_gravity(global.orb_pt, 0, 0);              // no gravity

part_type_blend(global.orb_pt, true);                // additive blend for glow

// Create emitter
global.orb_em = part_emitter_create(global.orb_ps);

// Emit over a 100px wide horizontal band at yy
// xmin = xx, xmax = xx + 100
// ymin = yy, ymax = yy (line)
part_emitter_region(global.orb_ps, global.orb_em,
    xx, xx + width,
    yy, yy + height,
    ps_shape_rectangle,
    ps_distr_gaussian
);

// Make it continuously emit orbs (2 per step)
part_emitter_stream(global.orb_ps, global.orb_em, global.orb_pt, 2);
}