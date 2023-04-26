/// @description Insert description here

if(choices == 0 && ds_list_size(dialogue) == 1){
	optionMenu = true;
	choices = 1;
}

if(optionMenu){
	if(newOption){
		newOptions = Option();
		newOption = false;
	}
	for(var i = 0; i < 3; i++){	
		if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, newOptions[i], false, true)){	
			show_debug_message(i);
			optionSelected = i;
			choices = 2;
			optionMenu = false;
			instance_destroy(newOptions[0]);
			instance_destroy(newOptions[1]);
			instance_destroy(newOptions[2]);
			ds_list_clear(dialogue);
		}
	}
	
}

x_pos1 = camera_get_view_x(view_camera[0]) + 102;
x_pos2 = camera_get_view_x(view_camera[0]) + 102;
x_pos3 = camera_get_view_x(view_camera[0]) + 102;
y_pos1 = camera_get_view_y(view_camera[0]) + 50;
y_pos2 = camera_get_view_y(view_camera[0]) + 85;
y_pos3 = camera_get_view_y(view_camera[0]) + 120;