if(hp <= 0){
	instance_destroy();	
}
show_debug_message("POS" + string(path_position));
if(!obj_scoreboard.paused){
	image_speed = 0.25;
	if(movingLeft && path_position == 0){
		movingRight = true;
		movingLeft = false;
		path_speed = -10;
		image_xscale *= -1
	}

	if(movingRight && instance_place(x + (sprite_xoffset/2) , y, obj_platform)){
		movingRight = false;
		movingLeft = true
	
		image_xscale *= -1;
	}else if(movingLeft && instance_place(x + (sprite_xoffset/2), y, obj_platform)){
		movingRight = true;
		movingLeft = false
		
		image_xscale *= -1;
	}
	if(movingRight){
			path_speed = 10;
	}else{
		path_speed = -10;
	}
}else {
	path_speed = 0;
	image_speed = 0;
}