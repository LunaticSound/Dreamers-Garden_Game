// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hunger_disp(){
/// Draw GUI Event – Hunger bar filling upward

// Position and size of the bar
var bar_x = room_width - 140;
var bar_y = display_get_gui_height() - 650; // leaves space at bottom
var bar_w = 40;
var bar_h = 554;

draw_sprite(spr_hunger_display, 0, bar_x, bar_y)

// Hunger ratio: 0 = full, 1 = starving
var ratio = clamp(global.player.hunger / global.player.hunger_limit, 0, 1);

// Outline/background
draw_set_color(c_black);
draw_rectangle(bar_x - 2, bar_y - 2, bar_x + bar_w + 2, bar_y + bar_h + 2, false);

// Fill color changes gradually from green → red
draw_set_color(merge_color(c_lime, c_red, ratio));

// Compute how high the fill should go
var fill_height = bar_h * ratio;
fill_top = lerp(fill_top, bar_y + bar_h - fill_height, 0.1);
if (fill_top - bar_y <= 1) time_to_die = true;

// Draw filled part (bottom up)
draw_rectangle(bar_x, fill_top, bar_x + bar_w, bar_y + bar_h, false);

// Text label
draw_set_color(c_white);
// draw_text(bar_x + bar_w + 8, bar_y + bar_h - 12,
//          "Hunger: " + string(global.player.hunger));


}