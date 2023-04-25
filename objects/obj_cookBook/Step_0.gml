/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, self, false, false))
{
	global.roomName = room_get_name(room); 
	player_startx = obj_player.x
	player_starty = obj_player.y
    room_goto(rm_inventory);
}

//if (roomName == rm_inventory){
//	instance_destroy();
//}else{
//	instance_create_layer(x, y, "cookbook", self);
//}

