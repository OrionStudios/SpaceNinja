event_inherited();



if(distance_to_object(obj_player) < 650){
	if (canShoot && global.pause != 1 && !running){
		canShoot = false;

		alarm[2] = shotCooldown;
	}

}