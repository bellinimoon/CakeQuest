/// @description Draw event

draw_self()
draw_set_font(fnt_peaberry)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom);
draw_set_color(c_white)


if(place_meeting(x,y,obj_house)){
	if(find_egg and find_flour and find_milk){
		if(make_cake){
			draw_text_transformed(x,y-50,@"Unfortunately. I don't actually 
know how to make cake...",1.5,1.5,0)
		}else{
			draw_text_transformed(x,y-50,@"You collected it all!
Press x to make the cake!",1.5,1.5,0)
		}
	}else if(find_egg and find_flour){
		draw_text_transformed(x,y-50,"Still need milk",1.5,1.5,0)
	}else if(find_egg and find_milk){
		draw_text_transformed(x,y-50,"Still need some flour",1.5,1.5,0)
	}else if(find_milk and find_flour){
		draw_text_transformed(x,y-50,"Still need an egg",1.5,1.5,0)
	}else{
		if(find_flour){
			draw_text_transformed(x,y-50,"Still need milk and an egg",1.5,1.5,0)
		}else if(find_milk){
			draw_text_transformed(x,y-50,"Still need an egg and some flour",1.5,1.5,0)
		}else if(find_egg){
			draw_text_transformed(x,y-50,"Still need milk and some flour",1.5,1.5,0)
		}else{
			draw_text_transformed(x,y-50,@"want a cake?
Go find me flour, milk
and an egg",1.5,1.5,0)
		}	
	}
}


if(place_meeting(x,y,obj_cow)){

	if(find_milk){
		draw_text_transformed(x,y-50,"Udderly expected.",1.5,1.5,0)
	}else{
		draw_text_transformed(x,y-50,"Where's the udder? Press x",1.5,1.5,0)
	}
}
if(place_meeting(x,y,obj_hen)){
	if(find_egg and global.find_chick == 4){
		draw_text_transformed(x,y-50,"So round. So precious.",1.5,1.5,0)	
	}else if (global.find_chick == 4){
		draw_text_transformed(x,y-50,"Now to grab a single egg with x",1.5,1.5,0)
	}else{
		draw_text_transformed(x,y-50,@"Go find my babies first, 
press x to collect",1.5,1.5,0)
	}
}
if(place_meeting(x,y,obj_mill)){
	if(find_flour){
		draw_text_transformed(x,y-50,"MMM... flour....",1.5,1.5,0)		
	}else{
		draw_text_transformed(x,y-50,"Press x to interact?",1.5,1.5,0)
	}
}
if(find_milk){
	draw_sprite(sp_milk, 0, wport+100, hport+cam_h - 50);
}
if(find_egg){
	draw_sprite(sp_egg, 0, wport+50, hport+cam_h - 50);
}
if(find_flour){
	draw_sprite(sp_flour, 0, wport, hport+cam_h - 50);
}
