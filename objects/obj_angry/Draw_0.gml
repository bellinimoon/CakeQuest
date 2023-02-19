/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(fnt_peaberry)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom);
draw_set_color(c_white)

if(place_meeting(x,y,obj_avatar)){
	if(hit == true){
		draw_text_transformed(x+50,y,@"I'm evil, HAHAHA",1.5,1.5,0);
		hit = false;
	}

}