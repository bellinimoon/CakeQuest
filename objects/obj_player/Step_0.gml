depth = -99;

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


if (roomName == rm_inventory){
	instance_destroy(cookBook);
}else{
	cookBook = instance_create_layer(x, y, "cookbook", obj_cookBook);
}


//if (keyboard_check_pressed(ord("X"))){
//	if(meetOwenFirst){
//		choiceAmount = 3;
//	    ds_list_add(dialogue, @"Rowan
//You look lovely today, Ms. Owen!");
//		ds_list_add(dialogue, @"Ms. Owen
//Yes, and I could look better if I didn't see you here.");
//		ds_list_add(dialogue, @"Rowan
//Well, well, you said this is a CASSEROLE CONTEST for everyone.");
//		ds_list_add(dialogue, @"Ms. Owen
//Yes, and people have already left. You are luckily thirty minutes late!");
//		triggered = true;
//		if (triggered == true){
//			if(ds_list_size(dialogue) == 0 && passed == true){
//				show_debug_message("a");
//				triggered = false;
//				passed = false;
//				meetOwenFirst = false;
//			}else if (ds_list_size(dialogue) == 3 || ds_list_size(dialogue) == 1){
//				show_debug_message("b");
//				textBoxFace = spr_owen_face;
//				passed = true;
//			}else{
//				show_debug_message("c");
//				textBoxFace = spr_avatar_face;
//			}
//		}
//	}else{
//	    ds_list_add(dialogue, @"Rowan
//Ms. Owen, please, please give me some more clues. ");
//		ds_list_add(dialogue, @"Rowan
//I don't want to make you taste any casserole you disapprove of.");
//		ds_list_add(dialogue, @"Ms. Owen
//Emmm, somebody’s really looking for a chance, isn’t he?.");
//		ds_list_add(dialogue, @"Ms. Owen
//A little hint won’t harm. It’s not like you have the chance of winning anyway.");
//			ds_list_add(dialogue, @"Ms. Owen
//Btw, I disprove of you, not casseroles.");
//			ds_list_add(dialogue, @"Ms. Owen
//I’d like something that reminds me of home, I will tell you this.");
//		triggered = true;
//		if (triggered == true){
//			if(ds_list_size(dialogue) == 0 && passed == true){
//				show_debug_message("a1");
//				triggered = false;
//				passed = false;
//			}else if (ds_list_size(dialogue) == 5 || ds_list_size(dialogue) == 6){
//				textBoxFace = spr_avatar_face;
//				show_debug_message("b1");
//				passed = true;
//			}else{
//				textBoxFace = spr_owen_face;
//				show_debug_message("c1");
//			}	
		
//		}
//	}
//}

