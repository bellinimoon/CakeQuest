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
			global.extraDialogueOpen = true;
		}else{
			textBoxFace = spr_owen_face;
		}
	}
}

if(extraDialogue3 == true){
	if(global.extraDialogueOpen == true){
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
			global.extraDialogueOpen = true;
			end2_debtor = true;
		}else{
			textBoxFace = spr_avatar_face;
		}
	}
}
show_debug_message(ds_list_size(dialogue));