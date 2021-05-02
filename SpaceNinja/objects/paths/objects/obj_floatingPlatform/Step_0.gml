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
		
			x += hsp;//if not near anything move normally
			
			}