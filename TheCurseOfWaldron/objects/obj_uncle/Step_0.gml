
if (obj_ruby.uncleMagic == 100){
path_speed = 2;
}else if (obj_ruby.uncleMagic == 70){
path_speed = 3.5;
shotCooldown = 75;
}else if (obj_ruby.uncleMagic == 30){
path_speed = 4.5;	
shotCooldown = 35;
}else if (obj_ruby.uncleMagic == 10){
path_speed = 6;	
}

if(distance_to_object(obj_player) < 650){
	if (canShoot && global.pause != 1 && !talking){
		canShoot = false;

		alarm[2] = shotCooldown;
	}

}