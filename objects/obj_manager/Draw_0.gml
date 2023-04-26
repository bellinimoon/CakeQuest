//dialogue display
if (ds_list_size(dialogue) > 0) {
	obj_textbox.Draw_Text(dialogue[|0], spr_avatar_face);
	
	if (keyboard_check_pressed(vk_space) || (mouse_check_button_pressed(mb_left) && mouse_y > obj_textbox.y)) {
		ds_list_delete(dialogue,0);
	}
}

//generate options

