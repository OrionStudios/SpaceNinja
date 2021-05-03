if (instance_exists(obj_alienBoss)){

		x = obj_alienBoss.x + 55 * obj_alienBoss.image_xscale;
		y = obj_alienBoss.y + 150;
		
	if(obj_alienBoss.hp == 50 && !speedingUp){
		speedingUp = true;
		alarm[0] = -1;
		alarm[1] = 125;	
	}else if(obj_alienBoss.hp == 20 && speedingUp){
		speedingUp = false;
		alarm[1] = -1;
		alarm[2] = 75;
	}
		
	if(instance_exists(obj_ninja)){
		image_angle = point_direction(obj_ninja.x, obj_ninja.y, x, y);	
	}

	
}