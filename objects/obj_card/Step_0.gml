/// @description Insert description here
// You can write your code in this editor

scr_card_movement();

if(device_mouse_check_button_pressed(0, mb_left)){
	            if(card_selected){
		if (!position_meeting(mouse_x, mouse_y, self)){
			target_x = base_x;
			target_y = base_y;
			card_selected = false;
			fruit_clicked = false;
				}
			}
}

if (discard) target_x = -200;

if (x = -200) instance_destroy();