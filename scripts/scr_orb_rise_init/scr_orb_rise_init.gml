// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function scr_orb_rise_init(depth)
/// @desc Creates a particle system + type for rising glowing orbs.
/// @arg depth  Depth at which to draw the particles
///
/// @return {struct} { ps, pt }

function scr_orb_rise_init(_depth)
{
    var ps = part_system_create();
    part_system_depth(ps, _depth);
    part_system_automatic_draw(ps, true);

    var pt = part_type_create();

    // Shape & size
    part_type_shape(pt, pt_shape_sphere);
    part_type_size(pt, 0.01, 0.25, 0, 0);

    // Colors & alpha (glow + fade)
	var col = $827041;
    part_type_color2(pt, c_white, col);
    part_type_alpha3(pt, 0, 1, 0);             // fade in → visible → fade out

    // Lifetime (how long they rise before disappearing)
    part_type_life(pt, 1, 100);

    // Rising upwards
    part_type_speed(pt, 0.2, 2.2, 0, 0);
    part_type_direction(pt, 90, 90, 0, 0);     // 90° = straight up

    // No gravity
    part_type_gravity(pt, 0, 0);

    // Glow (additive blending)
    part_type_blend(pt, true);

    return {
        ps : ps,
        pt : pt
    };
}
