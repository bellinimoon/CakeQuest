/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(fnt_peaberry)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom);
draw_set_color(c_white)

if(place_meeting(x,y,obj_avatar)){
	if(global.find_slime){
		draw_text_transformed(x+50,y,"EMMMM...",1.5,1.5,0);
	}else if(global.find_mushroom){
		draw_text_transformed(x+50,y,"alright, press X",1.5,1.5,0);
	}else{
		draw_text_transformed(x+50,y,"Give me something I like",1.5,1.5,0);
	}


}