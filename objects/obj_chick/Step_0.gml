/// @description Insert description here
// You can write your code in this editor
timer -= 1;
if(timer < 0){
	timer = 5;
	m_randomx = sign(random_range(-10,10));
	m_randomy = sign(random_range(-10,10));
}
//if (random_range(0,20) > 10){
	
//}
//if (random_range(0,20) > 10){
	
//}

m_speedx = random_range(1,10);
m_speedy = random_range(1,10);

MoveX(m_randomx * m_speedx);
MoveY(m_randomy * m_speedy);

if (place_meeting(x,y,obj_avatar) and keyboard_check(ord("X")))
{
    instance_destroy();
	global.find_chick ++;
}