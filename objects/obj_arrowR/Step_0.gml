/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "rm_inventory" && mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, self, false, false)){
	room_goto(rm_inventory2);
}

