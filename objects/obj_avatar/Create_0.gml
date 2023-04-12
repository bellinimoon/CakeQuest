/// @description Create event
gpu_set_texfilter(false)
movement_speed = 5
spd = [0,0]

global.find_flour = false
global.find_milk = false;
global.find_egg = false;
global.find_mushroom = false;
global.find_grass = false;
global.find_apple = false;
global.find_chili = false;
global.find_chick = 0;
global.find_slime = false;
global.allA = [global.find_flour,
global.find_milk,
global.find_egg,
global.find_mushroom,
global.find_grass,
global.find_apple,
global.find_chili,
global.find_slime,
]
audio_play_sound(sud_bg, 5, true);
collect = 0;
make_cake = false;
cake = false;
re = false;
played = true;

_camera = view_camera[0]
cam_x = camera_get_view_x(_camera)
cam_y = camera_get_view_y(_camera )
cam_h = camera_get_view_height(_camera)



