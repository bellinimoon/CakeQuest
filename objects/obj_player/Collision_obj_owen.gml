/// @description Insert description here
// You can write your code in this editor
if(cookFinished == false){
	if (keyboard_check_pressed(ord("X"))){
		if(meetOwenFirst == 1){
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
		if(meetOwenFirst == 1){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;
				meetOwenFirst = 2;
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
				meetOwenFirst = 3;
			}else if (ds_list_size(dialogue) == 5 || ds_list_size(dialogue) == 6){
				textBoxFace = spr_avatar_face;
				global.start = false;
				passed = true;
			}else{
				textBoxFace = spr_owen_face;
			}		
		}
	}
}else{
	if (keyboard_check_pressed(ord("X"))){
		if(endName == "LOSER"){
			ds_list_add(dialogue, @"Ms. Owen
Rowan, come on; you can do better than this. I don't even want to dip my tongue in there.");
			ds_list_add(dialogue, @"Ms. Owen
This is the most discouraging thing I’ve tasted my whole life, and I've been here quite a while. 
");
			ds_list_add(dialogue, @"Ms. Owen
Kick him out. What a loser.");
			triggered = true;
		}else if(endName == "HERD"){
			ds_list_add(dialogue, @"Ms. Owen
Very boring... plain like water.");
			ds_list_add(dialogue, @"Newton
Mother, I daresay this IS water. Nothing can be purer.
");
			ds_list_add(dialogue, @"Rowan
That's an insult! I've literally put TONES OF things in there.");
			ds_list_add(dialogue, @"Ms. Owen
OH? Then you already have TONES OF comic books. What a waste of time.");
			triggered = true;
		}else if(endName == "BOURGEOIS"){
			ds_list_add(dialogue, @"Ms. Owen
I can see you put in some effort... But this is nothing compared to Newton's brilliant casserole.
");
			ds_list_add(dialogue, @"Rowan
That's unfair! He's your son, and he doesn’t care about comic books.
");
			ds_list_add(dialogue, @"Newton
You've tried, but how could ever understand the beauty of the universe like me? Better luck next time.");
			ds_list_add(dialogue, @"Emma
It's ok, Rowan; I used to cook like this when I was 6 years old.");
			triggered = true;
		}else if(endName == "NERD"){
			ds_list_add(dialogue, @"Ms. Owen
YAH, I do think this qualifies. Not the best thing I've tasted, but ok, you can be a winner. 
");
			ds_list_add(dialogue, @"Ms. Owen
You'll have to divide my books with Newton tho. It's hard to tell the difference between your casseroles and his.
");
			ds_list_add(dialogue, @"Rowan
Well, ok, not what I hoped for, but I'll take it. Still a lot of comic books I can read!");
			triggered = true;
		}else if(endName == "WINNER"){
			ds_list_add(dialogue, @"Ms. Owen
Undoubtedly this is the best casserole I've tasted in years ever since my neighbor moved away.");
			ds_list_add(dialogue, @"Ms. Owen
She used to cook this casserole for her dog, and I loved it so much that I fought with the dog to eat it.");
			ds_list_add(dialogue, @"Ms. Owen
I declared you the winner of this contest. Your counrty is proud of you.");
			ds_list_add(dialogue, @"Emma
God bless the new king of comic books!");
			ds_list_add(dialogue, @"Newton
God bless the new king of comic books!");
			ds_list_add(dialogue, @"Tom
God bless the new king of comic books!");
			ds_list_add(dialogue, @"Rowan
Yeyyy my dream has come true!");
			triggered = true;
		}else if(endName == "POISONER"){
			ds_list_add(dialogue,@"Ms. Owen
What.. What.. have.. you... Done!");
			ds_list_add(dialogue, @"Newton
Mother! Hang on there! I've called the ambulance already.");
			ds_list_add(dialogue, @"Tom
Sick, bro, Did you put shrimp? Ms.Owen's very much allergic to it, didn't I tell you that?");
			ds_list_add(dialogue, @"Rowan
???");
			triggered = true;
		}else if(endName == "CHIEF"){
			ds_list_add(dialogue, @"Ms. Owen
OMG! What is this? That taste, monstrous! I... I love it! ");
			ds_list_add(dialogue, @"Newton
What? I must try as well! ");
			ds_list_add(dialogue, @"Newton
Oh~ Very creative and exciting! Taste like the food served in those Michelin restaurants.");
			ds_list_add(dialogue, @"Emma
Rowan, you are a rising^tar in culinary arts! I insist you must become a world-renowned chief.");
			ds_list_add(dialogue, @"Tom
EMMM, yum! I voluntarily recede from the competition. How could I ever compete with this?");
			ds_list_add(dialogue, @"Rowan
What can I say? By this point, I have no interest in comic books anymore. I've discovered my true talent!.");
			triggered = true;
		}else{//joker
			show_debug_message(endName);
			ds_list_add(dialogue, @"Ms. Owen
You must be kidding me. There's nothing in here. ");
			ds_list_add(dialogue, @"Rowan
There's a saying only the wise can see my secret casserole! ");
			ds_list_add(dialogue, @"Ms.Owen
Do you take me as a fool? Throw him out!");
			ds_list_add(dialogue, @"Rowan
NOOOOOOOO!");
			triggered = true;
		}
	}
	
	if (triggered == true){
		if(endName == "LOSER"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else{
				textBoxFace = spr_owen_face;
			}
		}else if(endName == "HERD"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else if (ds_list_size(dialogue) == 1 || ds_list_size(dialogue) == 4){
				textBoxFace = spr_owen_face;
				passed = true;
				global.start = false;
			}else if(ds_list_size(dialogue) == 2){
				textBoxFace = spr_avatar_face;
			}else{
				textBoxFace = spr_newton_face;
			}
		}else if(endName == "BOURGEOIS"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else if (ds_list_size(dialogue) == 4){
				textBoxFace = spr_owen_face;
				passed = true;
				global.start = false;
			}else if(ds_list_size(dialogue) == 3){
				textBoxFace = spr_avatar_face;
			}else if(ds_list_size(dialogue) == 2){
				textBoxFace = spr_newton_face;
			}else{
				textBoxFace = spr_emma_face;
			}
		}else if(endName == "NERD"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else if (ds_list_size(dialogue) == 3 || ds_list_size(dialogue) == 2){
				textBoxFace = spr_owen_face;
				passed = true;
				global.start = false;
			}else{
				textBoxFace = spr_avatar_face;
			}
		}else if(endName == "WINNER"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else if (ds_list_size(dialogue) == 1){
				textBoxFace = spr_avatar_face;
				passed = true;
				global.start = false;
			}else if(ds_list_size(dialogue) == 2){
				textBoxFace = spr_tom_face;
			}else if(ds_list_size(dialogue) == 3){
				textBoxFace = spr_newton_face;
			}else if(ds_list_size(dialogue) == 4){
				textBoxFace = spr_emma_face;
			}else{
				textBoxFace = spr_owen_face;
			}
		}else if (endName == "POISONER"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else if (ds_list_size(dialogue) == 1){
				textBoxFace = spr_avatar_face;
				passed = true;
				global.start = false;
			}else if(ds_list_size(dialogue) == 2){
				textBoxFace = spr_tom_face;
			}else if(ds_list_size(dialogue) == 3){
				textBoxFace = spr_newton_face;
			}else{
				textBoxFace = spr_owen_face;
			}
		}else if (endName == "CHIEF"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else if (ds_list_size(dialogue) == 1){
				textBoxFace = spr_avatar_face;
				passed = true;
				global.start = false;
			}else if(ds_list_size(dialogue) == 2){
				textBoxFace = spr_tom_face;
			}else if(ds_list_size(dialogue) == 3){
				textBoxFace = spr_emma_face;
			}else if(ds_list_size(dialogue) == 4 || ds_list_size(dialogue) == 5 ){
				textBoxFace = spr_newton_face;
			}else{
				textBoxFace = spr_owen_face;
			}
		}else if(endName == "JOKER"){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;	
				room_goto(rm_end);
			}else if (ds_list_size(dialogue) == 1 || ds_list_size(dialogue) == 3){
				textBoxFace = spr_avatar_face;
				passed = true;
				global.start = false;
			}else{
				textBoxFace = spr_owen_face;
			}
		}
	}
}
//show_debug_message(triggered);