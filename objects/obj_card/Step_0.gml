/// @description Insert description here
// You can write your code in this editor

scr_card_movement();

if(device_mouse_check_button_pressed(0, mb_left)){
	            if(card_selected){
		if (!position_meeting(mouse_x, mouse_y, self) && !position_meeting(mouse_x, mouse_y, obj_altar_parent)){
			target_x = base_x;
			target_y = base_y;
			card_selected = false;
			fruit_clicked = false;
			card_horny = false;
			if (global.state != game_state.TOOL && global.state != game_state.PLANT) global.state = game_state.CARD;
				}
			}
}

if (discard) target_x = -200;

if (x = -200) instance_destroy();

if (card_horny){
	shake_phase += 1;
	shake = shake_phase/2 + 90// clamp(shake_phase - 50, 0, 360);
	shake_val =  sin(degtorad(shake))*20;
	shake_offset_x = random(shake_val);
	shake_offset_y = random(shake_val);
	if(shake_phase >= 360) shake_phase = 0;
}