/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("X"))){
	if(meetOwenFirst != 3){
		ds_list_add(dialogue, @"Newton
I can calculate the motion of heavenly bodies but not the madness of people.");
		ds_list_add(dialogue, @"Rowan
This dude is Ms. Owen's son and he is mad.");
		ds_list_add(dialogue, @"Rowan
I know that because he talks about things even my smart brain cannot understand.");
	 	ds_list_add(dialogue, @"Rowan
I'd better go elsewhere.");
		triggered = true;
	}else{
		ds_list_add(dialogue, @"Rowan
Hey Newton! Still indulged in physics?");
		ds_list_add(dialogue, @"Newton
Oh, it's you again. What do you want from me?");
		ds_list_add(dialogue, @"Rowan
Bro, come on. Don’t be overprotective.");
		ds_list_add(dialogue, @"Rowan
You know I never ask for anything from you, at least not physically.");
		ds_list_add(dialogue, @"Newton
Whatever. I’m pretty busy with the gravity theories rn, so, do speak quick.");
		ds_list_add(dialogue, @"Rowan
Ok, single question! What tastes like home to you and your mother?");
		ds_list_add(dialogue, @"Newton
What? Are you mad? Why do you even care anyways?");
		ds_list_add(dialogue, @"Rowan
I’m trying to be friendly and cook you guys something. ");
		ds_list_add(dialogue, @"Rowan
I'd like to make up for laughing at your discoveries when we were in kindergarten.");
		ds_list_add(dialogue, @"Newton
You sound fishy, but what's mine to lose?");
		ds_list_add(dialogue, @"Newton
We eat a lot of traditional Irish stews and Japanese food.");
		ds_list_add(dialogue, @"Newton
Mom's really into dessert, but I don't like anything sweet.");
		triggered = true;
	}
}


if (triggered == true){
	if(meetOwenFirst != 3){
		if(ds_list_size(dialogue) == 0 && passed == true){
			triggered = false;
			passed = false;
		}else if (ds_list_size(dialogue) == 4){
			textBoxFace = spr_newton_face;
			passed = true;
			global.start = false;
		}else{
			textBoxFace = spr_avatar_face;
		}
	}else{
		if(ds_list_size(dialogue) == 0 && passed == true){
			triggered = false;
			passed = false;
		}else if (ds_list_size(dialogue) == 4|| ds_list_size(dialogue) == 5 || ds_list_size(dialogue) == 7|| ds_list_size(dialogue) == 9|| ds_list_size(dialogue) == 10|| ds_list_size(dialogue) == 12){
			textBoxFace = spr_avatar_face;
			passed = true;
			global.start = false;
		}else{
			textBoxFace = spr_newton_face;
		}
	}
}
show_debug_message(meetOwenFirst);