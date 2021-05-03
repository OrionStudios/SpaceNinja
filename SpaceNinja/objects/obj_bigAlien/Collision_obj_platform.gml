	if(movingRight){
		movingRight = false;
		movingLeft = true
		image_xscale *= -1;
	}else if(movingLeft){
		movingRight = true;
		movingLeft = false
		
		image_xscale *= -1;
	}