/// @description Insert description here
// You can write your code in this editor

function Draw_Text(text) {
	draw_self()
	x = camera_get_view_x(view_camera[0]) + 10
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_height - 10

	
	draw_set_font(fnt_peaberry)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_text_ext_transformed(x+12,y+8,text,48,sprite_width*(1/0.32),0.25, 0.25, 0)
}