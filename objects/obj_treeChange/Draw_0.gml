/// @description Insert description here
// You can write your code in this editor
depth = -20;
draw_self()
draw_set_font(fnt_peaberry)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom);
draw_set_color(c_white)
if(place_meeting(x,y,obj_avatar)){
	if(sprite_index = sp_redApple){
		if(picked){
			draw_text_transformed(x-65,y,"picked an Apple",1.5,1.5,0)
		}else{
			draw_text_transformed(x-65,y,"collectable",1.5,1.5,0)
		}
	}else if(sprite_index = sp_chiliTree){
		if(picked){
			draw_text_transformed(x-65,y,"picked a Chili",1.5,1.5,0)
		}else{
			draw_text_transformed(x-65,y,"collectable too",1.5,1.5,0)
		}	
	}
}
