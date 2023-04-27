/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(fnt_peaberry);
col = make_colour_rgb(0, 175, 193);
draw_set_color(col);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
if(choices == 0){
	//with(obj_manager.newOptions[0]){
	//	draw_text_ext_transformed(x,y+8,@"Hell no",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	//}
	with(obj_manager.newOptions[1]){
		draw_text_ext_transformed(x,y+8,@"Yeye",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	}
	with(obj_manager.newOptions[2]){
		draw_text_ext_transformed(x,y+8,@"I want to die",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	}
}else if(choices == 1){
	with(obj_manager.newOptions[0]){
		draw_text_ext_transformed(x,y+8,@"I was sleeping.",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	}
	with(obj_manager.newOptions[1]){
		draw_text_ext_transformed(x,y+8,@"I was doing calculus.",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	}
	with(obj_manager.newOptions[2]){
		draw_text_ext_transformed(x,y+8,@"I was buying you a gift.",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	}
}else if(choices == 2){
	with(obj_manager.newOptions[1]){
		draw_text_ext_transformed(x,y+8,@"Bribe her.",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	}
	with(obj_manager.newOptions[2]){
		draw_text_ext_transformed(x,y+8,@"Cry.",48,sprite_width*(1/0.32),0.25, 0.25, 0);
	}
}