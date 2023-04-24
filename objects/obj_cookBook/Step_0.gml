/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, self, false, false))
{
    room_goto(rm_inventory);
}
//roomName = room_get_name(room); 
//if (roomName == rm_inventory){
//	instance_destroy();
//}else{
//	instance_create_layer(x, y, "cookbook", self);
//}

