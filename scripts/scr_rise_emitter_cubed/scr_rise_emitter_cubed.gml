// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function orb_emitter_cubed(_ps, _pt, _x_left, _width, _y_width, _y_bottom, _count){
	if(emit){
    var center = _x_left + _width * 0.5;
    var half_w = _width * 0.5;

    for (var i = 0; i < _count; i++)
    {
        // r in [-1, 1]
        var r = random_range(-1, 1);
		var rr = random_range(-1, 1);

        // Cubed distribution: strong bias toward 0 (center)
        var biased = r * r * r; // r^3, keeps sign

        var _x = center + biased * half_w;
		var _y = _y_bottom - rr * _y_width; 

        part_particles_create(_ps, _x, _y, _pt, 1);
		}
	}else emit = !emit;
}
