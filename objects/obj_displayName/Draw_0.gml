/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_peaberry);
col = make_colour_rgb(0, 175, 193);
draw_set_color(col);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_sprite_ext(spr_endTitle, 0, (room_width - sprite_get_width(spr_endTitle)) / 2 + 40, 30, 0.8, 0.7, 0, c_white, 1);
draw_text_transformed(room_width / 2, room_height / 2 , endName, 1.3, 1.3, 0);