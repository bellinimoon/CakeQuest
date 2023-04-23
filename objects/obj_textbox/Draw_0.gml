/// @description Insert description here
// You can write your code in this editor
draw_self()

function Draw_Text(text) {
	draw_set_font(fnt_peaberry)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text_ext_transformed(x,y,text,25,sprite_width*(1/0.25),0.25, 0.25, 0)
}