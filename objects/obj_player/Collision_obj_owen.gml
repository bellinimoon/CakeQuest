/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("X"))){
	if(meetOwenFirst){
		choiceAmount = 3;
	    ds_list_add(dialogue, @"Rowan
You look lovely today, Ms. Owen!");
		ds_list_add(dialogue, @"Ms. Owen
Yes, and I could look better if I didn't see you here.");
		ds_list_add(dialogue, @"Rowan
Well, well, you said this is a CASSEROLE CONTEST for everyone.");
		ds_list_add(dialogue, @"Ms. Owen
Yes, and people have already left. You are luckily thirty minutes late!");
		triggered = true;
	}else{
		ds_list_add(dialogue, @"Rowan
Ms. Owen, please, please give me some more clues. ");
		ds_list_add(dialogue, @"Rowan
I don't want to make you taste any casserole you disapprove of.");
		ds_list_add(dialogue, @"Ms. Owen
Emmm, somebody's really looking for a chance, isn't he?.");
		ds_list_add(dialogue, @"Ms. Owen
A little hint won't harm. It's not like you have the chance of winning anyway.");
		ds_list_add(dialogue, @"Ms. Owen
Btw, I disprove of you, not any casseroles.");
		ds_list_add(dialogue, @"Ms. Owen
I'd like something that reminds me of home, I will tell you this.");
		triggered = true;
	}
}


if (triggered == true){
	if(meetOwenFirst == true){
		if(ds_list_size(dialogue) == 0 && passed == true){
			triggered = false;
			passed = false;
			meetOwenFirst = false;

		}else if (ds_list_size(dialogue) == 3 || ds_list_size(dialogue) == 1){
			textBoxFace = spr_owen_face;
			passed = true;
			global.start = true;
			choiceAmount = 3;
		}else{
			textBoxFace = spr_avatar_face;
		}
	}else{
		if(ds_list_size(dialogue) == 0 && passed == true){
			triggered = false;
			passed = false;
		}else if (ds_list_size(dialogue) == 5 || ds_list_size(dialogue) == 6){
			textBoxFace = spr_avatar_face;
			passed = true;
		}else{
			textBoxFace = spr_owen_face;
		}		
	}
}
show_debug_message(meetOwenFirst);
