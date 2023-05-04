/// @description Insert description here
if(global.start == true && ds_list_size(dialogue) == 1){
	optionMenu = true;
}

if(optionMenu){
	if(newOption){
		newOptions = Option(choiceAmount);
		newOption = false;
		choiceSelected = true;
	}
	for(var i = 0; i < 3; i++){	
		if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, newOptions[i], false, true)){	
			//show_debug_message(i);
			optionSelected = i;
			choices ++;

			optionMenu = false;
			newOption = true;
			global.selected = true;
			instance_destroy(newOptions[0]);
			instance_destroy(newOptions[1]);
			instance_destroy(newOptions[2]);
			//newOptions = noone;
			global.start = false;
			ds_list_clear(dialogue);
		}
	}	
}else if(choices == 1 && optionSelected != noone && global.selected == true){
	if(optionSelected == 2){
		global.selected = false;
		room_goto(rm_end)
		endName = "ASW";
	}
	
}else if(choices == 2 && optionSelected != noone && global.selected == true){
	if(optionSelected == 2){
		global.selected = false;
		extraDialogue1 = true;
	}else{
		global.selected = false;
		extraDialogue2 = true;
	}
}else if(choices == 3 && optionSelected != noone && global.selected == true){
	if(optionSelected == 1){
		global.selected = false;
		extraDialogue4 = true;	
	}else{
		global.selected= false;
		extraDialogue3 = true;
	}
}

show_debug_message(global.selected);

x_pos1 = camera_get_view_x(view_camera[0]) + 210;
x_pos2 = camera_get_view_x(view_camera[0]) + 210;
x_pos3 = camera_get_view_x(view_camera[0]) + 210;
y_pos1 = camera_get_view_y(view_camera[0]) + 50;
y_pos2 = camera_get_view_y(view_camera[0]) + 85;
y_pos3 = camera_get_view_y(view_camera[0]) + 120;
