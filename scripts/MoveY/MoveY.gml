function MoveY(amount){
	m_yRemainder += amount;
	var move = floor(m_yRemainder);
	if (move != 0){
		m_yRemainder -= move;
		var mySign = sign(move);
		while(move != 0){
			if ( !place_meeting(x, y + mySign, obj_barrier)){
				y += mySign;
				move -= mySign;
			}else{
				break
			}
		}
	}
}; 