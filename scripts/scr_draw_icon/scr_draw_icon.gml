// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_icon(){
	draw_sprite_ext(card_data.icon_sprite, 0, x + 150, y + 168 + levitate_offset, 0.25, 0.25, image_angle, c_white, 1);
}