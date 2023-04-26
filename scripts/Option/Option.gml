// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Option(){
	box1 = instance_create_layer(obj_manager.x_pos1, obj_manager.y_pos1,"Instances", obj_optionbox);
	box2 = instance_create_layer(obj_manager.x_pos2, obj_manager.y_pos2,"Instances", obj_optionbox);
	box3 = instance_create_layer(obj_manager.x_pos3, obj_manager.y_pos3,"Instances", obj_optionbox);
	return [box1, box2, box3];
	//if(mouse_check_button(mb_left)){
	//	show_debug_message("ee");
	//    return 1;
	//}else if(mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, box2 , false, false)){
	//    return 2;
	//}else if(mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, box3 , false, false)){
	//    return 3;
	//}
	//show_debug_message(box1);
	//return 0;
}

