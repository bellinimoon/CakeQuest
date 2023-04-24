// reset the speed to zero at the start of each frame
	hspd = 0;	
	vspd = 0;
	
if (ds_list_size(dialogue)>0) {
	//the player will become idle
	sprite_index = asset_get_index(spr + "_idle");
} 
else {
	sprite_index = asset_get_index(spr);
	
	//player movement, update the hspd/vspd:
	if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
		vspd -= mspd;
		sprite_index = spr_avatar_back;	
		spr = sprite_get_name(sprite_index);
	} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
		vspd += mspd;
		sprite_index = spr_avatar_front;	
		spr = sprite_get_name(sprite_index);
	} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
		hspd += mspd;
		sprite_index = spr_avatar_right;
		spr = sprite_get_name(sprite_index);
	} else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
		hspd -= mspd;	
		sprite_index = spr_avatar_left;	
		spr = sprite_get_name(sprite_index);
	}
	
	
	if (hspd == 0 && vspd == 0) {
		//the player will become idle
		sprite_index = asset_get_index(spr + "_idle");
	}
	
	//collision with wall:
	if (place_meeting(x + hspd, y, obj_wall)) { //if player is about to hit the wall horizontally
		while (!place_meeting(x + sign(hspd), y, obj_wall)) { 
			//as long as player is not actually hitting the wall, moving a little bit closer to it
			x += sign(hspd); //sign() will be either -1or1 depending on whether hspd is positive or negative;
			//*which means if it's going left, it will be moving -1 as long as it's not going to hit the wall
		}
		hspd = 0; //stop before hitting the wall
	} else {	
		//update the speed for normal player movement
		x += hspd;
	}
		//similar logic with y:
	if (place_meeting(x, y + vspd, obj_wall)) {
		while (!place_meeting(x, y+sign(vspd), obj_wall)) {
			y += sign(vspd);	
		}
		vspd = 0;
	} else {
		y += vspd;
	}
}

if(room_get_name(room) != rm_inventory){
	roomName = room_get_name(room); 
}
show_debug_message(roomName);
if (roomName == rm_inventory){
	instance_destroy(cookBook);
}else{
	cookBook = instance_create_layer(x, y, "cookbook", obj_cookBook);
}