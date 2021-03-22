event_inherited();



if(distance_to_object(obj_player) < 1000){
	if (canShoot){
		canShoot = false;

		alarm[2] = shotCooldown;
	}

}