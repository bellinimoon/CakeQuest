
/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y,obj_avatar)){
	audio_play_sound(sud_fail, 8, false);
	emptyArray(); 
	hit = true;

}

timer -= 1;
if(timer < 0){
	timer = 100;
	m_randomx = sign(random_range(-10,10));
	m_randomy = sign(random_range(-10,10));
}
m_speedx = random_range(1,5);
m_speedy = random_range(1,5);

MoveX(m_randomx * m_speedx);
MoveY(m_randomy * m_speedy);

allA = [global.find_flour,
global.find_milk,
global.find_egg,
global.find_mushroom,
global.find_grass,
global.find_apple,
global.find_chili,
global.find_slime,
]