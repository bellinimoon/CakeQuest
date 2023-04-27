//dialogue display
if (ds_list_size(dialogue) > 0) {
	obj_textbox.Draw_Text(dialogue[|0], textBoxFace);
	if (global.start == true && ds_list_size(dialogue) >= 2 && (keyboard_check_pressed(vk_space) || (mouse_check_button_pressed(mb_left)) && mouse_y > obj_textbox.y)) {
		ds_list_delete(dialogue,0);
	}else if ( global.start == false && ds_list_size(dialogue) >= 0 && (keyboard_check_pressed(vk_space) || (mouse_check_button_pressed(mb_left)) && mouse_y > obj_textbox.y)) {
		ds_list_delete(dialogue,0);
	}
	
	//if (choices == 0 && ds_list_size(dialogue) >= 2 && (keyboard_check_pressed(vk_space) || (mouse_check_button_pressed(mb_left)) && mouse_y > obj_textbox.y)) {
	//	ds_list_delete(dialogue,0);
	//}else if (choices == 1 && ds_list_size(dialogue) >= 0 && (keyboard_check_pressed(vk_space) || (mouse_check_button_pressed(mb_left)) && mouse_y > obj_textbox.y)) {
	//	ds_list_delete(dialogue,0);
	//}
	
	
}

