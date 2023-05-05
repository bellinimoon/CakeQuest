/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_self()
draw_text_transformed(x+20,y-5,"Press X to interact!",0.2,0.2,0);

if (keyboard_check_pressed(ord("X")) && place_meeting(x,y,obj_player) && timer <= 0) {
	alpha = 1;
	timer = 180;
	y_pos = obj_player.y + 15;
	
	milk = true;
	ds_list_replace(got_ingre,3,true)
	audio_play_sound(sud_cow,0,false)
}

if (timer >=0) {
	timer --;
}

if (timer <= 160 && milk) {
	draw_set_alpha(alpha);
	alpha -= 0.02;
	y_pos -= 0.5;
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text_transformed(obj_player.x + 40,y_pos,"Milk + 1",0.2,0.2,0);
	draw_sprite_ext(spr_food_milk,0, obj_player.x + 40,y_pos-10, 0.2, 0.2,0,c_white,alpha)

	if (alpha < 0) {
		milk = false;
	}
}

/* test purpose!
for(var i = 0; i<13; i++) {
	ds_list_replace(got_ingre,i,true)
}
for(var i = 0; i<13; i++) {
	ds_list_replace(got_ingre2,i,true)
}
*/