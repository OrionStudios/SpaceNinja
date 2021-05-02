
if (instance_exists(obj_ninja)){
	if(obj_ninja.crouching){
			x = obj_ninja.x + 50 * obj_ninja.image_xscale;
			y = obj_ninja.y + 20;
	}else{
		x = obj_ninja.x + 50 * obj_ninja.image_xscale;
		y = obj_ninja.y;
	}
	image_xscale = obj_ninja.image_xscale;
	
}
if(keyboard_check_pressed(vk_space) && canShoot && !obj_scoreboard.paused){
	canShoot = false;
	alarm[0] = 20;
	if(global.energy > 0){
	instance_create_layer(x - (image_xscale * 50), y-1, "GunLayer", obj_blasterShot);	
	global.energy --;
	}
}