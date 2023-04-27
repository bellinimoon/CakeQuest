/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("X"))){
	choiceAmount = 3;
    ds_list_add(dialogue, @"Rowan
You look lovely today, Ms. Owen!");
	ds_list_add(dialogue, @"Ms. Owen
Yes, and I could look better if I didn't see you here.");
	ds_list_add(dialogue, @"Rowan
Well, well, you said this is a CASSEROLE CONTEST for everyone.");
	ds_list_add(dialogue, @"Ms. Owen
Yes, and people have already left. You are luckily thirty minutes late!
");
	triggered = true;
}
if (triggered == true){
	if(ds_list_size(dialogue) == 0 && passed == true){
		triggered = false;
	}else if (ds_list_size(dialogue) == 3 || ds_list_size(dialogue) == 1){
		textBoxFace = spr_owen_face;
		passed = true;
	}else{
		textBoxFace = spr_avatar_face;
	}
}
