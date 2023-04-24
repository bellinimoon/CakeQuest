/// @description Insert description here
// You can write your code in this editor
x = player_startx;
y = player_starty;

vspd = 0;
hspd = 0;
mspd = 1.5;
spr = sprite_get_name(sprite_index);

camera_set_view_pos(view_camera[0], x-200, y);