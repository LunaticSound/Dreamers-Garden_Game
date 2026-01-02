/// @description Insert description here
// You can write your code in this editor
// Draw Vines (Bezier Curves)

draw_self();

for (var i = 0; i < array_length(nodes); i++) {
    var _n = nodes[i];
    if (_n.parent != undefined) {
        // Only draw if the parent is revealed
        if (_n.parent.unlocked) {
            var x1 = _n.parent.x;
            var y1 = _n.parent.y;
            var x3 = _n.x;
            var y3 = _n.y;
            
            // Midpoint Control Point (adds the curve)
            var x2 = (x1 + x3) / 2 + 40; 
            var y2 = (y1 + y3) / 2 - 20;

            var _col = _n.unlocked ? c_lime : make_color_rgb(40, 80, 40);
            draw_set_color(_col);
            
            // Draw curve segments
            var _steps = 20;
            var px = x1; var py = y1;
            for (var j = 1; j <= _steps; j++) {
                var t = j / _steps;
                var cx = (1-t)*(1-t)*x1 + 2*(1-t)*t*x2 + t*t*x3;
                var cy = (1-t)*(1-t)*y1 + 2*(1-t)*t*y2 + t*t*y3;
                draw_line_width(px, py, cx, cy, _n.unlocked ? 4 : 2);
                px = cx; py = cy;
            }
        }
    }
}

// Draw Nodes
for (var i = 0; i < array_length(nodes); i++) {
    var _n = nodes[i];
    
    // Only draw if parent is unlocked (Fog of War)
    if (_n.parent == undefined || _n.parent.unlocked) {
        var _alpha = _n.unlocked ? 1.0 : 0.4;
        
        // Gentle "Breeze" animation
        var _shake_x = sin(current_time * 0.002 + i) * 3;
        var _shake_y = cos(current_time * 0.002 + i) * 3;

        // Draw Node Background
        draw_set_alpha(_alpha);
        draw_circle_color(_n.x + _shake_x, _n.y + _shake_y, 30, c_black, c_dkgray, false);
        
        // Draw Label
        draw_set_halign(fa_center);
        draw_text_transformed(_n.x + _shake_x, _n.y + _shake_y + 40, _n.name, 0.8, 0.8, 0);
        draw_set_alpha(1);
    }
}

// Draw HUD
draw_text(20, 20, "Nutrients: " + string(global.currency));

for(i = 0; i < array_length(global.booster_database[? "Earth+Earth+Earth"].loot_pools[0].cards); i ++){
	draw_text(20 + 200*(i+1), 20, string(global.booster_database[? "Earth+Earth+Earth"].loot_pools[0].cards[i]))
}