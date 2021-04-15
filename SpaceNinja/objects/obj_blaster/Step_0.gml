x = obj_ninja.x + 100 * obj_ninja.image_xscale;
y = obj_ninja.y;
image_xscale = obj_ninja.image_xscale;
if(keyboard_check_pressed(vk_space)){
instance_create_layer(x, y, "GunLayer", obj_blasterShot);	
}