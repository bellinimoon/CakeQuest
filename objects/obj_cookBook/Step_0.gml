/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) != rm_inventory){
	global.roomName = room_get_name(room); 
}
show_debug_message(global.roomName);
if (mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, self, false, false))
{
    room_goto(rm_inventory);
}

//if (roomName == rm_inventory){
//	instance_destroy();
//}else{
//	instance_create_layer(x, y, "cookbook", self);
//}

