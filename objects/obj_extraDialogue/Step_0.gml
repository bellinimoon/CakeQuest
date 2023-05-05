/// @description Insert description here
// You can write your code in this editor
if(extraDialogue1 == true){
	if(global.extraDialogueOpen == true){
		ds_list_add(dialogue, @"Ms. Owen
Where is it, then?");
		ds_list_add(dialogue, @"Rowan 
Ah, didn't find anything worthy...");
		global.extraDialogueOpen = false;
	}else{
		if(ds_list_size(dialogue) == 0){
			extraDialogue1 = false;
			global.extraDialogueOpen = true;
			extraDialogue2 = true;
			//optionSelected = noone;
		}else if( ds_list_size(dialogue) == 2){
			textBoxFace = spr_owen_face;
		}else{
			textBoxFace = spr_avatar_face;
		}
	}
}

if(extraDialogue2 == true){
	if(global.extraDialogueOpen == true){
		choiceAmount = 2;
		ds_list_add(dialogue, @"Ms. Owen
.......");
		ds_list_add(dialogue, @"Ms. Owen
Anyway, I don't have anything for you now, go away.");
		global.extraDialogueOpen = false;
		global.start = true;
	}else{
		if(ds_list_size(dialogue) == 0){
			extraDialogue2 = false;
			//optionSelected = noone;
			global.extraDialogueOpen = true;
		}else{
			textBoxFace = spr_owen_face;
		}
	}
}

if(extraDialogue3 == true){
	if(global.extraDialogueOpen == true){
		audio_play_sound(sud_cry,0,false)
		ds_list_add(dialogue, @"Ms. Owen
OK, fine, I can see you won't leave me alone.");
		ds_list_add(dialogue, @"Ms. Owen
Here, take this. Remember to come back here before Sunday.");
		ds_list_add(dialogue, @"Ms. Owen
 If you are late again, it won't be my problem.	");
		global.extraDialogueOpen = false;
		global.start = false;
	}else{
		if(ds_list_size(dialogue) == 0){
			extraDialogue3 = false;
			inventoryAccess = true;
			//optionSelected = noone;
			global.roomName = room_get_name(room); 
			player_startx = obj_player.x;
			player_starty = obj_player.y;
			room_goto(rm_inventory);
			global.extraDialogueOpen = true;
		}else{
			textBoxFace = spr_owen_face;
		}
	}
}

if(extraDialogue4 == true){
	if(global.extraDialogueOpen == true){
		ds_list_add(dialogue, @"Rowan
How about.. if I offer you precious money?");
		ds_list_add(dialogue, @"Rowan
Oh no, I forgot I don't have any money.");
		global.extraDialogueOpen = false;
		global.start = false;
	}else{
		if(ds_list_size(dialogue) == 0){
			extraDialogue4 = false;
			//optionSelected = noone;
			//choices = 4;
			global.extraDialogueOpen = true;
			endName = "DEBTOR";
			audio_pause_all()
			audio_play_sound(end_bad,0,false)
			room_goto(rm_end);
		}else{
			textBoxFace = spr_avatar_face;
		}
	}
}
//show_debug_message(ds_list_size(dialogue));
