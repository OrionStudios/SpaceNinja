grv = 10
if (place_meeting(x, y + grv, obj_platform)){//if platform is 10 pixels below
		while(!place_meeting(x, y + 1, obj_platform)){//wjile not 1 pixel above platfomr
			y += 1;//move down 1 pixel
		}
		grv = 0;//move down 4 pixels
}
if(place_meeting(x, y + 10, obj_floatingPlatform)){
	onPlatform = true;
}
if(onPlatform){
	var platform = instance_nearest(x, y, obj_floatingPlatform);
	if(platform.vertical){
		grv = platform.vsp;	
	}else{
		x += platform.hsp;
		}
}
	
	y += grv;//move down regular if not touching platform
	

if(!beingGrabbed){//if not being grabbed
			if (place_meeting(x + 1, y, obj_ninja)){//if ninja is 1 pixel to the right
		
		if(!place_meeting(x - 4, y, obj_platform) && !place_meeting(x - 4, y, obj_alien1)){//if platfrom isnt on left
			x -= 4;//move 4 pixels to the left
		}
	}else if (place_meeting(x - 1, y, obj_ninja)){//if ninja is 1 pixel to the left
	
		if(!place_meeting(x + 4, y, obj_platform) && !place_meeting(x - 4, y, obj_alien1)){//if platfrom isnt on right
			x += 4;//move 4 pixels to the right
		}
	}
}else{//if being grabbed
	show_debug_message("Being Grabbed6");
	var ninja = instance_nearest(x, y, obj_ninja);
	
	if(ninja.x < x){//if ninja is to the left of the crate
		show_debug_message("On Left");
		if (ninja.hsp < 0){//if ninja is moving to the left 
			beingPulled = true;
		}else {//if ninja is not moving to the left
			beingPulled = false;
		}
	}else if(ninja.x > x){//if ninja is to the right of the crate
		show_debug_message("On Right");
		if (ninja.hsp > 0){//if ninja is moving to the right
			beingPulled = true;
		}else {//if ninja is not moving to the left
			beingPulled = false;
		}
	}
	
	if(beingPulled){//if being pulled
		show_debug_message("Being Pulled")
		ninja.pulling = true;
		
		if(!place_meeting(x + ninja.hsp, y, obj_platform)){//if platfrom isnt in way
			x += ninja.hsp;//move with the ninja 
		}
	}else{
		ninja.pulling = false;

		if (place_meeting(x + 1, y, obj_ninja)){//if ninja is 1 pixel to the right
		
			if(!place_meeting(x - 4, y, obj_platform) && !place_meeting(x - 4, y, obj_alien1)){//if platfrom isnt on left
				x -= 4;//move 4 pixels to the left
			}
		}else if (place_meeting(x - 1, y, obj_ninja)){//if ninja is 1 pixel to the left
		
			if(!place_meeting(x + 4, y, obj_platform) && !place_meeting(x - 4, y, obj_alien1)){//if platfrom isnt on right
				x += 4;//move 4 pixels to the right
			}
		}
	}
}
beingGrabbed = false;