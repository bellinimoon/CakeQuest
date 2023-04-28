/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("X"))){
	choiceAmount = 3;
	ds_list_add(dialogue, @"Rowan
Hey Emma, how are you?!");
	ds_list_add(dialogue, @"Emma
Wow, I didn’t expect to see you.");
	ds_list_add(dialogue, @"Emma
I haven’t seen you in years, ever since I started to work as Ms. Owen’s maid.");
	ds_list_add(dialogue, @"Emma
How are you doing… Wait, this is about the contest again, isn’t it?");
	ds_list_add(dialogue, @"Rowan
Seems like I’m not the only one… Sorry Emmie, we'll talk another time");
	ds_list_add(dialogue, @"Rowan
Anything you could tell me?");
	ds_list_add(dialogue, @"Emma
Emmmm, unsurpriseingly. I mean, I guess we were once friends… ");
	ds_list_add(dialogue, @"Emma
she has especially a distaste for Apples. ");
	ds_list_add(dialogue, @"Emma
Her son Newton was hit on the head by an apple, and now he couldn’t stop talking about that nonsense… ");
	ds_list_add(dialogue, @"Emma
You know, the physics, gravity, and stuff.");
	triggered = true;
}


if (triggered == true){
	if(ds_list_size(dialogue) == 0 && passed == true){
		triggered = false;
		passed = false;
		meetOwenFirst = false;
	}else if (ds_list_size(dialogue) == 3 || ds_list_size(dialogue) == 1){
		textBoxFace = spr_emma_face;
		passed = true;
	}else{
		textBoxFace = spr_avatar_face;
	}
}
