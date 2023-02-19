/// @description movements
depth = -25;
_camera = view_camera[0]
cam_x = camera_get_view_x(_camera)
cam_y = camera_get_view_y(_camera )
cam_h = camera_get_view_height(_camera)
cam_w = camera_get_view_width(_camera)
wport = clamp(x - (view_wport[0] / 2), 0, room_width-cam_w);
hport = clamp(y - (view_hport[0] / 2), 0, room_height-cam_h);
camera_set_view_pos(view_camera[0],wport,hport);

if(keyboard_check(vk_right)){
	spd[0] = 1
}else if(keyboard_check(vk_left)){
	spd[0] = -1
}else{
	spd[0] = 0
}

if(keyboard_check(vk_down)){
	spd[1] = 1
}else if(keyboard_check(vk_up)){
	spd[1] = -1
}else{
	spd[1] = 0
}

if(spd[0] != 0 or spd[1] != 0){
	//var means local variable
	var mag = sqrt(power(spd[0],2)+power(spd[1],2))
	spd[0] = spd[0]/mag
	spd[1] = spd[1]/mag
	sprite_index = sp_narrator_walk;
}else{
	sprite_index = sp_narrator;
}


spd[0]*=movement_speed
spd[1]*=movement_speed


x+=spd[0]
if(place_meeting(x,y,obj_wall) or place_meeting(x,y,obj_purple)){
	x-=spd[0]
	spd[0] = 0
}

y+=spd[1]
if(place_meeting(x,y,obj_wall) or place_meeting(x,y,obj_purple)){
	y-=spd[1]
	spd[1] = 0
}


if(make_cake){
	if(place_meeting(x,y,obj_house) and keyboard_check(ord("X"))){
		cake = true;
	}
}
if(!global.find_egg){
	if(place_meeting(x,y,obj_hen) and global.find_chick == 4 and keyboard_check(ord("X"))){
		global.find_egg = true;
		audio_play_sound(sud_gain, 8, false);
	}
}
if(!global.find_milk and global.find_grass){
	if(place_meeting(x,y,obj_cow) and keyboard_check(ord("X"))){
		global.find_milk = true;
		global.find_grass = false;
		audio_play_sound(sud_gain, 8, false);
	}
}

if(!global.find_grass){
	if(place_meeting(x,y,obj_straw) and keyboard_check(ord("X"))){
		global.find_grass = true;
		audio_play_sound(sud_gain, 8, false);
	}
}


if(!global.find_flour and global.find_grass){
	if(place_meeting(x,y,obj_mill) and keyboard_check(ord("X"))){
		global.find_grass = false;
		global.find_flour = true;
		audio_play_sound(sud_gain, 8, false);
	}
}
if(cake and alarm[0]== -1){
	alarm[0] = 90;
}

global.allA = [global.find_flour,
global.find_milk,
global.find_egg,
global.find_mushroom,
global.find_grass,
global.find_apple,
global.find_chili,
global.find_slime,
]
if(re and room == Egg){
	obj_mushroom.visible = true;
	re = false;
}