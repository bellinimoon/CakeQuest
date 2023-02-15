/// @description Insert description here
// You can write your code in this editor
timer -= 1;
if (timer == 0){
	timer = 100;
	var choice = random_range(0,3);
	show_debug_message(choice);
	if (choice < 1){
		sprite_index = sp_apple;
		picked = false;
	}else if(1<= choice && choice < 2){
		sprite_index = sp_chili;
		picked = false;
	}else if(choice <=3){
		sprite_index = sp_redApple;
		picked = false;
	}
}
if(place_meeting(x,y,obj_avatar)){
	if(keyboard_check(ord("X"))){
		picked = true;
	}
}