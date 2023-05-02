/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("X"))){
	if(meetOwenFirst == 1){
		ds_list_add(dialogue, @"Emma
Kinda busy rn.");
		ds_list_add(dialogue, @"Emma
Ms. Owen's in the red house if you are looking for her.");
		triggered = true;
	}else{
		ds_list_add(dialogue, @"Rowan
Hey Emma, how are you?!");
		ds_list_add(dialogue, @"Emma
Wow, I didn't expect to see you.");
		ds_list_add(dialogue, @"Emma
I haven't seen you in years, ever since I started working as Ms. Owen's maid.");
		ds_list_add(dialogue, @"Emma
How are you doing... Wait, this is about the contest again, isn't it?");
		ds_list_add(dialogue, @"Rowan
Seems like I'm not the only one... Sorry Emmie, we'll chat casually another time.");
		ds_list_add(dialogue, @"Rowan
Anything you could tell me?");
		ds_list_add(dialogue, @"Emma
Emmmm, unsurpriseingly. I mean, I guess we were once friends...");
		ds_list_add(dialogue, @"Emma
she has especially a distaste for Apples. ");
		ds_list_add(dialogue, @"Emma
Her son Newton was hit on the head by an apple, and now he couldn't stop talking about that nonsense... ");
		ds_list_add(dialogue, @"Emma
You know, the physics, gravity, and stuff.");
		triggered = true;
		}
	}
show_debug_message(ds_list_size(dialogue));

if (triggered == true){
	if(meetOwenFirst == 1){
		if(ds_list_size(dialogue) == 0 && passed == true){
			triggered = false;
			passed = false;
		}else{
			textBoxFace = spr_emma_face;
			passed = true;
			global.start = false;
		}
	}else{
		if(ds_list_size(dialogue) == 0 && passed == true){
			triggered = false;
			passed = false;
		}else if (ds_list_size(dialogue) == 5|| ds_list_size(dialogue) == 6 || ds_list_size(dialogue) == 10){
			textBoxFace = spr_avatar_face;
			passed = true;
			global.start = false;
		}else{
			textBoxFace = spr_emma_face;
		}
	}
}
