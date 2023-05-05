/// @description Insert description here
// You can write your code in this editor
draw_self();
if(place_meeting(x,y,obj_player)){
	if(chickenCollected == 5 && keyboard_check_pressed(ord("X"))){
		draw_text_transformed(x,y-20,"Who knows what species of eggs this is.",0.2,0.2,0)
	}else if(chickenCollected == 5){
		 draw_text_transformed(x,y-20,"Thanks, press x to collect my egg.",0.2,0.2,0)		
	}else{
		draw_text_transformed(x,y-20,@"Go find my baby ducks first, 
press x to collect",0.2,0.2,0)
	}
}