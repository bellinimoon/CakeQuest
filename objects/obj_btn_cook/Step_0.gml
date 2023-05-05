/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left) && collision_point(mouse_x, mouse_y, self, false, false))
{
	audio_play_sound(sud_cook, 0,false)
	//destroy NPCs
	destroyEmma = true;
	destroyNewton = true;
	destroyTom = true;
	
	CalculateEnd();
	show_debug_message(endName);
	inventoryAccess = false;
	cookFinished = true;
	room_goto(asset_get_index(global.roomName))   
	ds_list_add(dialogue, @"Rowan
Ok now I'm all set.");
	ds_list_add(dialogue, @"Rowan
Let's go to Ms Owen to let her try the world's best Casserole.");
	triggered = true;
	if (triggered == true){
		if(ds_list_size(dialogue) == 0 && passed == true){
			triggered = false;
			passed = false;
		}else{
			textBoxFace = spr_avatar_face;
			passed = true;
			global.start = false;
		}
	}
}
