/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player) && !collected) {
	collected = true;
	ds_list_replace(got_ingre,num,true)
}