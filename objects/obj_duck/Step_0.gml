/// @description Insert description here
// You can write your code in this editor
timer -= 1;
if(timer < 0){
	timer = 5;
	m_randomx = sign(random_range(-10,10));
	m_randomy = sign(random_range(-10,10));
}
m_speedx = random_range(1,2);
m_speedy = random_range(1,2);

MoveX(m_randomx * m_speedx);
MoveY(m_randomy * m_speedy);

if (place_meeting(x,y,obj_player) and keyboard_check(ord("X")))
{
    instance_destroy();
	chickenCollected ++;
	//audio_play_sound(sud_chick, 8, false);
}