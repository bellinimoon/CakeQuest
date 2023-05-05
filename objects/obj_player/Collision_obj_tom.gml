/// @description Insert description here
// You can write your code in this editor
if(cookFinished == false){
	if (keyboard_check_pressed(ord("X"))&& cookFinished == false  && instance_place(x, y, obj_tom) == inst_4D15662B){
		if(meetOwenFirst == 1){
			ds_list_add(dialogue, @"Tom
	Don't put a shrimp on the Barbie.");
			ds_list_add(dialogue, @"Tom
	You'd better go find Ms. Owen in her red house to join the casserole contest.");
			triggered = true;
		}else{
			ds_list_add(dialogue, @"Tom
	Why were you late this morning?");
			ds_list_add(dialogue, @"Rowan
	Hi Tom, I had to accompany some chicken to cross the street.");
			ds_list_add(dialogue, @"Tom
	How nice of you! But did Ms. Owen offer you another chance?");
			ds_list_add(dialogue, @"Rowan
	Sort of... she didn't tell me anything tho.");
			ds_list_add(dialogue, @"Rowan
	Guess she does not care for the baby chickens as much as we do.");
			ds_list_add(dialogue, @"Rowan
	Anything I missed from the meeting?");
			ds_list_add(dialogue, @"Tom
	Well... I cannot remember anymore...");
			ds_list_add(dialogue, @"Rowan
	O, I know coming to him's not a wise decision. ");
			ds_list_add(dialogue, @"Tom
	She did mention she particularly likes fish... Or maybe she hates it? ");
			ds_list_add(dialogue, @"Tom
	Something about fish, I'm 100 percent sure.");
			ds_list_add(dialogue, @"Rowan
	Fish? That seems random...Ok, but should I trust him? ");
			ds_list_add(dialogue, @"Rowan
	He seems pretty uncertain himself...");
			triggered = true;
		}
	}


	if (triggered == true){
		if(meetOwenFirst == 1){
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;
			}else{
				textBoxFace = spr_tom_face;
				passed = true;
				global.start = false;
			}
		}else{
			if(ds_list_size(dialogue) == 0 && passed == true){
				triggered = false;
				passed = false;
			}else if (ds_list_size(dialogue) == 3|| ds_list_size(dialogue) == 4 || ds_list_size(dialogue) == 6|| ds_list_size(dialogue) == 10|| ds_list_size(dialogue) == 12){
				textBoxFace = spr_tom_face;
				passed = true;
				global.start = false;
			}else{
				textBoxFace = spr_avatar_face;
			}
		}
	}
}