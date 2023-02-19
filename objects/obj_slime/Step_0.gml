/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_avatar)){
	if(!global.find_slime and global.find_mushroom and keyboard_check(ord("X"))){
		global.find_slime = true;
		global.find_mushroom = false;
		audio_play_sound(sud_gain, 8, false);
	}
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
