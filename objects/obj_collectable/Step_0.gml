/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) {
	ds_list_replace(got_ingre,num,true)
	audio_play_sound(sud_pickup,0,false)
	instance_destroy(self)
}