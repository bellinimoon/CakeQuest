/// @description Draw event

draw_self()
draw_set_font(fnt_peaberry)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom);
draw_set_color(c_white)


if(place_meeting(x,y,obj_house)){
	collect = 0;
	for(i = 0 ; i<array_length(global.allA); i++){
		if(global.allA[i] == true){
		collect++;
		}
	}
	if (collect >= 3 and !cake){
		draw_text_transformed(x,y-50,"X to make a cake.",1.5,1.5,0)
		make_cake = true;
	}else if (!cake){
		draw_text_transformed(x,y-50,"Emm, need something more",1.5,1.5,0)
	}
	if(cake){
		if(	global.find_flour and
	global.find_milk and
	global.find_egg and
	global.find_mushroom and
	global.find_grass and
	global.find_apple and
	global.find_chili and
	global.find_slime){
		draw_text_transformed(x,y-50,@"Ultimate delight!
Loved by every creatures alike",1.5,1.5,0)
			if (!audio_is_playing(sud_cakeW) and played) {
				audio_play_sound(sud_cakeW,8, false);
				played = false;
			}
		
	}else if(global.find_mushroom){
			draw_text_transformed(x,y-50,@"poisonous,
very bad.",1.5,1.5,0) 
			if (!audio_is_playing(sud_cakeF) and played) {
				audio_play_sound(sud_cakeF,8, false);
				played = false;
			}
		}else if(global.find_egg and global.find_milk and global.find_flour){
			if(global.find_slime){
				draw_text_transformed(x,y-50,"Slimy..cake?",1.5,1.5,0);
				if (!audio_is_playing(sud_cakeO) and played) {
					audio_play_sound(sud_cakeO,8, false);
				}
				played = false;
			}else if(global.find_chili){
				draw_text_transformed(x,y-50,"A hot and new recipe: chili cake",1.5,1.5,0)
				if (!audio_is_playing(sud_cakeO) and played) {
					audio_play_sound(sud_cakeO,8, false);
				played = false;
				}
			}else if(global.find_apple){
				draw_text_transformed(x,y-50,"Can't say I don't like apple cake",1.5,1.5,0)
				if (!audio_is_playing(sud_cakeO) and played) {
					audio_play_sound(sud_cakeO,8, false);
				played = false;
				}
			}else{
				draw_text_transformed(x,y-50,"An ordinary cake, just what I want",1.5,1.5,0)
				if (!audio_is_playing(sud_cakeO) and played) {
					audio_play_sound(sud_cakeO,8, false);
				played = false;
				}
			}
		}else{
			if(global.find_slime){
				draw_text_transformed(x,y-50,"I'm gonna throw up cuz of the slime",1.5,1.5,0)
				if (!audio_is_playing(sud_cakeF) and played) {
					audio_play_sound(sud_cakeF,8, false);
				played = false;
				}
			}else if(global.find_chili){
				draw_text_transformed(x,y-50,"A hot mess, what is this?",1.5,1.5,0)
				if (!audio_is_playing(sud_cakeF) and played) {
					audio_play_sound(sud_cakeF,8, false);
				played = false;
				}
			}else if(global.find_apple){
				draw_text_transformed(x,y-50,"I normally like apples, but...",1.5,1.5,0)
				if (!audio_is_playing(sud_cakeF) and played) {
					audio_play_sound(sud_cakeF,8, false);
				played = false;
				}
			}else{
				draw_text_transformed(x,y-50,"Mysterious result...",1.5,1.5,0)
				if (!audio_is_playing(sud_cakeF) and played) {
					audio_play_sound(sud_cakeF,8, false);
				}
				played = false;
			}
		}

		show_debug_message(alarm[0]);
	}
}


if(place_meeting(x,y,obj_cow)){
	if(global.find_milk){
		draw_text_transformed(x,y-50,"Udderly expected...",1.5,1.5,0)
	}else if (global.find_grass ){
		draw_text_transformed(x,y-50,"Fine now, press X.",1.5,1.5,0)
	}else{
		draw_text_transformed(x,y-50,"I'm hungry. I need grass",1.5,1.5,0)
	}
}
if(place_meeting(x,y,obj_straw)){
	if(global.find_grass){ 
		draw_text_transformed(x,y-50,"Who likes to eat grass?",1.5,1.5,0)	
	}else{
		draw_text_transformed(x,y-50,"Ok, press X",1.5,1.5,0)
	}
}
if(place_meeting(x,y,obj_hen)){
	if(global.find_egg and global.find_chick == 4){
		draw_text_transformed(x,y-50,"So round. So precious.",1.5,1.5,0)	
	}else if (global.find_chick == 4){
		draw_text_transformed(x,y-50,"Now to grab a single egg with x",1.5,1.5,0)
	}else{
		draw_text_transformed(x,y-50,@"Go find my babies first, 
press x to collect",1.5,1.5,0)
	}
}
if(place_meeting(x,y,obj_mill)){
	if(global.find_flour){
		draw_text_transformed(x,y-50,"MMM... flour....",1.5,1.5,0)		
	}else if(global.find_grass){
		draw_text_transformed(x,y-50,"Press x to grind",1.5,1.5,0)
	}else{
		draw_text_transformed(x,y-50,@"You can't make an omelet 
without breaking eggs",1.5,1.5,0)
	}
}
if(global.find_milk){
	draw_sprite(sp_milk, 0, wport+100, hport+cam_h - 50);
}
if(global.find_egg){
	draw_sprite(sp_egg, 0, wport+50, hport+cam_h - 50);
}
if(global.find_flour){
	draw_sprite(sp_flour, 0, wport, hport+cam_h - 50);
}
if(global.find_mushroom){
	draw_sprite(sp_mushroom, 0, wport+150, hport+cam_h - 50);
}
if(global.find_grass){
	draw_sprite(sp_strawT, 0, wport+200, hport+cam_h - 50);
}
if(global.find_apple){
	draw_sprite(sp_apple, 0, wport+250, hport+cam_h - 50);
}
if(global.find_chili){
	draw_sprite(sp_chili, 0, wport+300, hport+cam_h - 50);
}
if(global.find_slime){
	draw_sprite(sp_slimeF, 0, wport+350, hport+cam_h - 50);
}