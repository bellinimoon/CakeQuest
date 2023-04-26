//dialogue display
if (ds_list_size(dialogue) > 0) {
	obj_textbox.Draw_Text(dialogue[|0], spr_avatar_face);
	
	if (keyboard_check_pressed(vk_space) || (mouse_check_button_pressed(mb_left) && mouse_y > obj_textbox.y)) {
		ds_list_delete(dialogue,0);
	}
}

//generate options
if(optionMenu){
	if(newOption){
		newOptions = Option();
		newOption = false;
	}
	for(var i = 0; i < 3; i++){		 
		if(mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, newOptions[i], false, true)){	
			show_debug_message(i);
			optionSelected = i;
			optionMenu = false;
			instance_destroy(newOptions[0]);
			instance_destroy(newOptions[1]);
			instance_destroy(newOptions[2]);
		}
	}
}
x_pos1 = camera_get_view_x(view_camera[0]) + 600;
y_pos1 = camera_get_view_y(view_camera[0]) + 175;
x_pos2 = camera_get_view_x(view_camera[0]) + 600;
y_pos2 = camera_get_view_y(view_camera[0]) + 200;
x_pos3 = camera_get_view_x(view_camera[0]) + 600;
y_pos3 = camera_get_view_y(view_camera[0]) + 225;