/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text_transformed(x+30,y+5,"Press X to fish!",0.2,0.2,0);

if (keyboard_check_pressed(ord("X")) && place_meeting(x,y,obj_player) && timer <= 0) {
	//trout, shrimp, shellfish
	var v = irandom_range(0,2);
	alpha = 1;
	timer = 180;
	y_pos = obj_player.y + 15;
	if (v == 0) {
		trout = true;
		ds_list_replace(got_ingre,5,true)
		audio_play_sound(sud_pickup,0,false)
	} else if (v == 1) {
		shrimp = true;
		ds_list_replace(got_ingre,6,true)
		audio_play_sound(sud_pickup,0,false)
	} else {
		shellfish = true;
		ds_list_replace(got_ingre,7,true)
		audio_play_sound(sud_pickup,0,false)
	}

}

if (timer >=0) {
	timer --;
}

if (trout) {
	draw_set_alpha(alpha);
	alpha -= 0.05;
	y_pos -= 0.5;
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text_transformed(obj_player.x + 40,y_pos,"Trout + 1",0.2,0.2,0);
} else if (shrimp) {
	draw_set_alpha(alpha);
	alpha -= 0.05;
	y_pos -= 0.5;
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text_transformed(obj_player.x + 40,y_pos,"Shrimp + 1",0.2,0.2,0);
} else if (shellfish) {
	draw_set_alpha(alpha);
	alpha -= 0.05;
	y_pos -= 0.5;
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text_transformed(obj_player.x + 45,y_pos,"Shellfish + 1",0.2,0.2,0);
}

if (alpha < 0) {
	trout = false;
	shrimp = false;
	shellfish = false;
}