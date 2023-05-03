// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveX(amount){
		m_xRemainder += amount;
		var move = floor(m_xRemainder);
		
		if (move != 0){
			m_xRemainder -= move
			var mySign = sign(move)
			while ( move != 0){
				if (!place_meeting(x + mySign, y ,obj_barrier)){
					x += mySign
					move -= mySign
				}else{
					break;
				}
					
			
			}
		}

}