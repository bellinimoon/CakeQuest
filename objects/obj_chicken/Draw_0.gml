/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_self();
if(place_meeting(x,y,obj_player)){
	if(chickenCollected == 5) {
		draw_text_transformed(x,y-20,"Thanks, press x to collect my egg.",0.2,0.2,0)
		if (keyboard_check_pressed(mb_left)){
		alpha = 1;
		y_pos = obj_player.y + 15;
	
		egg = true;
		ds_list_replace(got_ingre,9,true)
		audio_play_sound(sud_pickup,0,false)
		}
	}	else{
		draw_text_transformed(x,y-20,@"Go find my baby ducks first, 
press x to collect",0.2,0.2,0)
	}
}

if (egg) {
	draw_set_alpha(alpha);
	alpha -= 0.02;
	y_pos -= 0.5;
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text_transformed(obj_player.x + 40,y_pos,"Milk + 1",0.2,0.2,0);
	draw_sprite_ext(spr_food_egg,0, obj_player.x + 40,y_pos-10, 0.2, 0.2,0,c_white,alpha)

	if (alpha < 0) {
		egg = false;
	}
}