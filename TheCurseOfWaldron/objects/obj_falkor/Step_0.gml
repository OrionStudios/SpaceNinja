event_inherited();



if(distance_to_object(obj_player) < 650){
	if (canShoot){
		canShoot = false;

		alarm[2] = shotCooldown;
	}

}