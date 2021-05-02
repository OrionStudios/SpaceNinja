if (instance_exists(obj_alienBoss)){

		x = obj_alienBoss.x + 55 * obj_alienBoss.image_xscale;
		y = obj_alienBoss.y + 150;
	if(instance_exists(obj_ninja)){
		image_angle = point_direction(obj_ninja.x, obj_ninja.y, x, y);	
	}

	
}