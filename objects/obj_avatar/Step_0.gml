/// @description movements
camera_set_view_pos(view_camera[0], clamp(x - (view_wport[0] / 2),0,x - (view_wport[0] / 2)),clamp( y - (view_hport[0] / 2),0,y - (view_hport[0] / 2));
_camera = view_camera[0]
cam_x = camera_get_view_x(_camera)
cam_y = camera_get_view_y(_camera )
cam_h = camera_get_view_height(_camera)
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


if(find_milk and find_flour and find_egg){
	if(place_meeting(x,y,obj_house) and keyboard_check(ord("X"))){
		make_cake = true;
	}
}
if(!find_flour){
	if(place_meeting(x,y,obj_mill) and keyboard_check(ord("X"))){
		find_flour = true;
	}
}
if(!find_egg){
	if(place_meeting(x,y,obj_hen) and global.find_chick == 4 and keyboard_check(ord("X"))){
		find_egg = true;
	}
}
if(!find_milk){
	if(place_meeting(x,y,obj_cow) and keyboard_check(ord("X"))){
		find_milk = true;
	}
}

