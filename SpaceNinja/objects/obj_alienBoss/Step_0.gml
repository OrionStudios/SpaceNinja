	//vsp = vsp + grv//jump speed with gravity
	//	if(place_meeting(x, y + vsp, obj_platform) || place_meeting(x, y + vsp, obj_box)){//if platform or box is within jump distance
	//		while(!place_meeting(x, y + sign(vsp), obj_platform) && !place_meeting(x, y + sign(vsp), obj_box)){//if not 1 pixel from ground
	//			y += sign(vsp);//move 1 pixel towards ground
	//		}
	//		vsp = 0;//ninja 1 pixel above ground so stop moving
	//	}
		
	//	y += vsp;
	
	
	//if(place_meeting(x, y + 4, obj_floatingPlatform)){
	//		var platform = instance_nearest(x, y, obj_floatingPlatform);
	//			if(platform.vertical){
	//				y+= platform.vsp;
	//			}
	//}
			if(!obj_scoreboard.gameOver && !obj_scoreboard.paused){
				image_speed = 0.1;
				if(hp >= 60 && bossPaused){
					bossPaused = false;
				path_speed = 8;	
				}else if(hp < 60 && hp > 30 && bossPaused){
					bossPaused = false;
					path_speed = 15;
				}else if(hp <= 30 && bossPaused){
					bossPaused = false;
					path_speed = 20;
				}
				
				if(hp < 60 && hp > 30 && speedUp == 0){
					path_speed = 15;
					speedUp = 1;
				}else if(hp < 30 && speedUp == 1){
				path_speed = 20;
					speedUp = 2;
				}
			}else{
				bossPaused = true;
			path_speed = 0;
			image_speed = 0;
			}