/// @description Insert description here
depth= -10;

if(place_meeting(x,y,obj_avatar)){
	if(keyboard_check(ord("X"))){
		global.find_mushroom = true;
		audio_play_sound(sud_gain, 8, false);
	}
}


if (place_meeting(x,y,obj_avatar) and keyboard_check(ord("X")))
{
	self.visible = false;
}