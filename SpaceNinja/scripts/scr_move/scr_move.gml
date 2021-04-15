
function scr_move(){
	if (place_meeting(x + hspd, y, obj_platform)){//if platform is to left or right, and moving regular distance would go through platform
		while(!place_meeting(x + sign(hspd), y, obj_platform)){//while not 1 pixel away from platform
			x += sign(hspd);//move 1 pixel towards platform	
		}
		
		hspd = 0;//else it is 1 pixel away and speed should be 0
	}
	
	if (place_meeting(x + hspd, y, obj_box)){//if platform is to left or right, and moving regular distance would go through platform
		while(!place_meeting(x + sign(hspd), y, obj_box)){//while not 1 pixel away from platform
			x += sign(hspd);//move 1 pixel towards platform	
		}
		
		hspd = 0;//else it is 1 pixel away and speed should be 0
	}
	
	
	x += hspd;//either move regular speed or 0 if near platform
	
	if (place_meeting(x, y + 9, obj_platform)){//if platform is 9 pixels below
		while(!place_meeting(x, y + 2, obj_platform)){//while platform is not 2 pixels below
			y += 1;
		}
		if (place_meeting(x, y + 2, obj_platform)){//if platform is 2 pixels down
			gravity = 0;
			vspeed = sign(vspd);//if player jumps, vspd can increase	
			alarm[0] = 10;//keep setting alarm until player isnt 2 pixels above
			
		}
	
	}
	if (place_meeting(x, y + 9, obj_box)){
	while(!place_meeting(x, y + 2, obj_box)){//while box is not 2 pixels below
			y += 1;//move 1 pixel down
		}
		if (place_meeting(x, y + 2, obj_box)){//if box is 2 pixels down
			gravity = 0;
			vspeed = sign(vspd);	//if player jumps, vspd can increase
			alarm[0] = 10;//keep setting alarm until player isnt 2 pixels above
			
		}
	}

	//if (place_meeting(x, y + 4, obj_platform)){
	//	while(!place_meeting(x, y + 1, obj_platform)){
	//		y += sign(vspd);	
	//	}
	//	gravity = 0;
	//	vspd = 0;
	//}
	y += vspd;
}