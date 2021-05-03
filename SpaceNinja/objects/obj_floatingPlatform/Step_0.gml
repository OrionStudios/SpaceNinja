
if(!obj_scoreboard.paused){
	if(!vertical){
	switch(state){
		case "move_right": 
			hsp = moveSpeed;
		
			break;
		case "move_left":
			hsp = -moveSpeed;
			break;
	}



		if(place_meeting(x + hsp * 15, y, obj_platform) || place_meeting(x + hsp * 15, y, obj_box) ){//if platform or box or no ground is within move distance
			
					if(hsp > 0){//if moving to the right
						timeline_position = 400;//set timeline to move to left	
					}else if (hsp < 0){//if moving to the left
						timeline_position = 0;//set timeline to reset and move to the right
					}

				}else{//if nothing obstructing
					
				if(instance_exists(obj_buttonEnding)){
					if(obj_buttonEnding.activated){
						hsp = 0	
					}
				}
				x += hsp;//if not near anything move normally
			
				}
	}else{
	
		switch(state){
		case "move_up": 
			vsp = -moveSpeed;
		
			break;
		case "move_down":
			vsp = moveSpeed;
			break;
	}

if(!instance_exists(obj_alienBoss) || !boss){
		if(place_meeting(x, y + vsp * 15, obj_platform) && !place_meeting(x, y + vsp * 15, obj_box) ){//if platform or box or no ground is within move distance
			
					if(vsp > 0){//if moving to the right
						timeline_position = 000;//set timeline to move to left	
					}else if (vsp < 0){//if moving to the left
						timeline_position = 400;//set timeline to reset and move to the right
					}

				}else{//if nothing obstructing
				if(instance_exists(obj_buttonEnding)){
					if(obj_buttonEnding.activated){
						 vsp = 0	
					}
				}
				y += vsp;//if not near anything move normally
			
				}


}else{
	timeline_position = 0;
}


	}
}