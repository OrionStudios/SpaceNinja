if (hp <= 0){
	instance_destroy();	
}


if (place_meeting(x, y + grv, obj_platform)){//if platform is 10 pixels below
		while(!place_meeting(x, y + 1, obj_platform)){//wjile not 1 pixel above platfomr
			y += 1;//move down 1 pixel
		}
		grv = 0;//move down 4 pixels
}

y += grv;//move down regular if not touching platform
