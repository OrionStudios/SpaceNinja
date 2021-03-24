
if (btnIndex == 0){
	layer_set_visible("Assets_1", false);
	instance_create_layer(x - 200, y - 500, "Instances", obj_background);
	
}else if(btnIndex == 1){
	layer_set_visible("Assets_1", false);
	object_set_visible(obj_credits, true);
	btnIndex++
}else if(btnIndex = 2){
	layer_set_visible("Assets_1", true);
	//instance_destroy(instance_nearest(x, y, obj_credits));
	object_set_visible(obj_credits, false);
	btnIndex--;	
}