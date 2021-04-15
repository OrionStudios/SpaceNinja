
if (instance_exists(obj_ninja)){
	x = obj_ninja.x + 100 * obj_ninja.image_xscale;
	y = obj_ninja.y;
	image_xscale = obj_ninja.image_xscale;
}
if(keyboard_check_pressed(vk_space)){
	instance_create_layer(x - (image_xscale * 40), y, "GunLayer", obj_blasterShot);	
}