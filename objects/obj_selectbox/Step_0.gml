/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && (instance_nearest(x,y,obj_unknown).sprite_index != spr_unknown) && mouse_x >= x && mouse_x <= (x+sprite_width) && mouse_y >= y && mouse_y <= (y+sprite_height)) {
	show_debug_message(box_num)
	if (room = rm_inventory) {
		if (ds_list_find_value(select_ingre,box_num)) { //if being selected, unselect
			ds_list_replace(select_ingre,box_num,false)
		} else {		
			ds_list_replace(select_ingre,box_num,true)
		}
	} else {
		if (ds_list_find_value(select_ingre2,box_num)) { //if being selected, unselect
			ds_list_replace(select_ingre2,box_num,false)
		} else {		
			ds_list_replace(select_ingre2,box_num,true)
		}
	}
}
