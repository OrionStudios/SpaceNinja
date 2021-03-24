if (btnIndex == 0){
	
	instance_create_layer(x - 125, y - 500, "Instances", obj_background);
	
}else if(btnIndex == 1){
	object_set_visible(obj_credits, true);
	btnIndex++
}else if(btnIndex = 2){
	//instance_destroy(instance_nearest(x, y, obj_credits));
	object_set_visible(obj_credits, false);
	btnIndex--;	
}