
if (instance_exists(obj_ninja)){
	x = obj_ninja.x + 50 * obj_ninja.image_xscale;
	y = obj_ninja.y;
	image_xscale = obj_ninja.image_xscale;
}
if(keyboard_check_pressed(vk_space)){
	if(global.energy > 0){
	instance_create_layer(x - (image_xscale * 50), y-1, "GunLayer", obj_blasterShot);	
	global.energy --;
	}
}