/// @description Insert description here
if(global.start == true && ds_list_size(dialogue) == 1){
	optionMenu = true;
}
//show_debug_message(optionSelected);
if(optionMenu){
	if(newOption){
		newOptions = Option(choiceAmount);
		newOption = false;
		choiceSelected = true;
	}
	for(var i = 0; i < 3; i++){	
		if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, newOptions[i], false, true)){	
			//show_debug_message(i);
			optionSelected = i;
			choices ++;

			optionMenu = false;
			newOption = true;
			global.selected = true;
			instance_destroy(newOptions[0]);
			instance_destroy(newOptions[1]);
			instance_destroy(newOptions[2]);
			//newOptions = noone;
			global.start = false;
			ds_list_clear(dialogue);
		}
	}	
}else if(choices == 1 && optionSelected != noone && global.selected == true){
	if(optionSelected == 2){
		global.selected = false;
		audio_pause_all()
			audio_play_sound(end_bad,0,false)
		room_goto(rm_end)
		endName = "CORPSE";
	}else if(optionSelected == 1){
		optionSelected = noone;
	}
	
}else if(choices == 2 && optionSelected != noone && global.selected == true){
	if(optionSelected == 2){
		global.selected = false;
		extraDialogue1 = true;
		optionSelected = noone;
	}else{
		global.selected = false;
		extraDialogue2 = true;
		optionSelected = noone;
	}
}else if(choices == 3 && optionSelected != noone && global.selected == true){
	if(optionSelected == 1){
		global.selected = false;
		extraDialogue4 = true;	
		optionSelected = noone;
	}else{
		global.selected= false;
		extraDialogue3 = true;
		optionSelected = noone;
	}
}

//show_debug_message(global.selected);

x_pos1 = camera_get_view_x(view_camera[0]) + 210;
x_pos2 = camera_get_view_x(view_camera[0]) + 210;
x_pos3 = camera_get_view_x(view_camera[0]) + 210;
y_pos1 = camera_get_view_y(view_camera[0]) + 50;
y_pos2 = camera_get_view_y(view_camera[0]) + 85;
y_pos3 = camera_get_view_y(view_camera[0]) + 120;


//	if (keyboard_check_pressed(ord("X"))){
//		if(endName == "LOSER"){
//			ds_list_add(dialogue, @"Ms. Owen
//Rowan, come on; you can do better than this. I don’t even want to dip my tongue in there.");
//			ds_list_add(dialogue, @"Ms. Owen
//This is the most discouraging thing I’ve tasted my whole life, and I’ve been here quite a while. 
//");
//			ds_list_add(dialogue, @"Ms. Owen
//Kick him out. What a loser.");
//			triggered = true;
//			if (triggered == true){
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else{
//					textBoxFace = spr_owen_face;
//					passed = true;
//					global.start = false;
//				}
//			}	
//		}else if(endName == "HERD"){
//			ds_list_add(dialogue, @"Ms. Owen
//Very boring... plain like water.");
//			ds_list_add(dialogue, @"Newton
//Mother, I daresay this IS water. Nothing can be purer.
//");
//			ds_list_add(dialogue, @"Rowan
//That's an insult! I've literally put TONES OF things in there.");
//			ds_list_add(dialogue, @"Ms. Owen
//OH? Then you already have TONES OF comic books. What a waste of time.");
//			triggered = true;
//			if (triggered == true){
//				room_goto(rm_end);
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					show_debug_message("???");
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else if (ds_list_size(dialogue) == 1 || ds_list_size(dialogue) == 4){
//					textBoxFace = spr_owen_face;
//					passed = true;
//					global.start = false;
//				}else if(ds_list_size(dialogue) == 2){
//					textBoxFace = spr_avatar_face;
//				}else{
//					textBoxFace = spr_newton_face;
//				}
//			}
//		}else if(endName == "BOURGEOIS"){
//			ds_list_add(dialogue, @"Ms. Owen
//I can see you put in some effort… But this is nothing compared to Newton’s brilliant casserole.
//");
//			ds_list_add(dialogue, @"Rowan
//That’s unfair! He’s your son, and he doesn’t care about comic books.
//");
//			ds_list_add(dialogue, @"Newton
//You’ve tried, but how could ever understand the beauty of the universe like me? Better luck next time.");
//			ds_list_add(dialogue, @"Emma
//It’s ok, Rowan; I used to cook like this when I was 6 years old.");
//			triggered = true;
//			if (triggered == true){
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else if (ds_list_size(dialogue) == 4){
//					textBoxFace = spr_owen_face;
//					passed = true;
//					global.start = false;
//				}else if(ds_list_size(dialogue) == 3){
//					textBoxFace = spr_avatar_face;
//				}else if(ds_list_size(dialogue) == 2){
//					textBoxFace = spr_newton_face;
//				}else{
//					textBoxFace = spr_emma_face;
//				}
//			}
//		}else if(endName == "NERD"){
//			ds_list_add(dialogue, @"Ms. Owen
//YAH, I do think this qualifies. Not the best thing I’ve tasted, but ok, you can be a winner. 
//");
//			ds_list_add(dialogue, @"Ms. Owen
//You’ll have to divide my books with Newton tho. It’s hard to tell the difference between your casseroles and his.
//");
//			ds_list_add(dialogue, @"Rowan
//Well, ok, not what I hoped for, but I’ll take it. Still a lot of comic books I can read!");
//			triggered = true;
//			if (triggered == true){
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else if (ds_list_size(dialogue) == 3 || ds_list_size(dialogue) == 2){
//					textBoxFace = spr_owen_face;
//					passed = true;
//					global.start = false;
//				}else{
//					textBoxFace = spr_avatar_face;
//				}
//			}
//		}else if(endName == "WINNER"){
//			ds_list_add(dialogue, @"Ms. Owen
//Undoubtedly this is the best casserole I’ve tasted in years ever since my neighbor moved away.");
//			ds_list_add(dialogue, @"Ms. Owen
//She used to cook this casserole for her dog, and I loved it so much that I fought with the dog to eat it.");
//			ds_list_add(dialogue, @"Ms. Owen
//I declared you the winner of this contest. Your counrty is proud of you.");
//			ds_list_add(dialogue, @"Emma
//God bless the new king of comic books!");
//			ds_list_add(dialogue, @"Newton
//God bless the new king of comic books!");
//			ds_list_add(dialogue, @"Tom
//God bless the new king of comic books!");
//			ds_list_add(dialogue, @"Rowan
//Yeyyy my dream has come true!");
//			triggered = true;
//			if (triggered == true){
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else if (ds_list_size(dialogue) == 1){
//					textBoxFace = spr_avatar_face;
//					passed = true;
//					global.start = false;
//				}else if(ds_list_size(dialogue) == 2){
//					textBoxFace = spr_tom_face;
//				}else if(ds_list_size(dialogue) == 3){
//					textBoxFace = spr_newton_face;
//				}else if(ds_list_size(dialogue) == 4){
//					textBoxFace = spr_emma_face;
//				}else{
//					textBoxFace = spr_owen_face;
//				}
//			}
//		}else if(endName == "POISONER"){
//			ds_list_add(dialogue, @"Ms. Owen
//What.. What.. have.. you... Done!");
//			ds_list_add(dialogue, @"Newton
//Mother! Hang on there! I’ve called the ambulance already.");
//			ds_list_add(dialogue, @"Tom
//Sick, bro, Did you put shrimp? Ms.Owen’s very much allergic to it, didn't I tell you that?");
//			ds_list_add(dialogue, @"Rowan
//???");
//			triggered = true;
//			if (triggered == true){
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else if (ds_list_size(dialogue) == 1){
//					textBoxFace = spr_avatar_face;
//					passed = true;
//					global.start = false;
//				}else if(ds_list_size(dialogue) == 2){
//					textBoxFace = spr_tom_face;
//				}else if(ds_list_size(dialogue) == 3){
//					textBoxFace = spr_newton_face;
//				}else{
//					textBoxFace = spr_owen_face;
//				}
//			}
//		}else if(endName == "CHIEF"){
//			ds_list_add(dialogue, @"Ms. Owen
//OMG! What is this? That taste, monstrous! I... I love it! ");
//			ds_list_add(dialogue, @"Newton
//What? I must try as well! ");
//			ds_list_add(dialogue, @"Newton
//Oh~ Very creative and exciting! Taste like the food served in those Michelin restaurants.");
//			ds_list_add(dialogue, @"Emma
//Rowan, you are a rising star in culinary arts! I insist you must become a world-renowned chief.");
//			ds_list_add(dialogue, @"Tom
//EMMM, yum! I voluntarily recede from the competition. How could I ever compete with this?");
//			ds_list_add(dialogue, @"Rowan
//What can I say? By this point, I have no interest in comic books anymore. I’ve discovered my true talent!.");
//			triggered = true;
//			if (triggered == true){
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else if (ds_list_size(dialogue) == 1){
//					textBoxFace = spr_avatar_face;
//					passed = true;
//					global.start = false;
//				}else if(ds_list_size(dialogue) == 2){
//					textBoxFace = spr_tom_face;
//				}else if(ds_list_size(dialogue) == 3){
//					textBoxFace = spr_emma_face;
//				}else if(ds_list_size(dialogue) == 4 || ds_list_size(dialogue) == 5 ){
//					textBoxFace = spr_newton_face;
//				}else{
//					textBoxFace = spr_owen_face;
//				}
//			}
//		}else{//joker
//			show_debug_message(endName);
//			ds_list_add(dialogue, @"Ms. Owen
//You must be kidding me. There's nothing in here. ");
//			ds_list_add(dialogue, @"Rowan
//There's a saying only the wise can see my secret casserole! ");
//			ds_list_add(dialogue, @"Ms.Owen
//Do you take me as a fool? Throw him out!");
//			ds_list_add(dialogue, @"Rowan
//NOOOOOOOO!");
//			triggered = true;
//			if (triggered == true){
//				if(ds_list_size(dialogue) == 0 && passed == true){
//					triggered = false;
//					passed = false;	
//					room_goto(rm_end);
//				}else if (ds_list_size(dialogue) == 1 || ds_list_size(dialogue) == 3){
//					textBoxFace = spr_avatar_face;
//					passed = true;
//					global.start = false;
//				}else{
//					textBoxFace = spr_owen_face;
//				}
//			}
//		}
//	}
//}