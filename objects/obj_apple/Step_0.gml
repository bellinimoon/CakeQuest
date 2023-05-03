/// @description Insert description here
// You can write your code in this editor

timer -= 1;
if (timer == 0){
	timer = 50;
	var choice = random_range(0,2);
	//show_debug_message(choice);
	if (choice < 1){
		sprite_index = spr_food_apple;
		picked = false;
	}else if(1<= choice){
		sprite_index = spr_food_cherry;
		picked = false;
	}
}
if(place_meeting(x,y,obj_player)){
	if(keyboard_check(ord("X"))){
		picked = true;
		if(sprite_index == spr_food_apple){
			ds_list_replace(got_ingre,0,true)
			audio_play_sound(sud_pickup,0,false)
			instance_destroy(self);
		}
		if(sprite_index == spr_food_cherry){
			ds_list_replace(got_ingre,1,true)
			audio_play_sound(sud_pickup,0,false)
			instance_destroy(self)
		}
	}
}