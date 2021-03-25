
if (btnIndex == 0){
	layer_set_visible("Assets_1", false);
	instance_create_layer(x - 200, y - 500, "Instances", obj_background);
	
}else if(btnIndex == 1){
	layer_set_visible("Assets_1", false);
	object_set_visible(obj_credits, true);
	btnIndex++
}else if(btnIndex == 2){
	layer_set_visible("Assets_1", true);
	//instance_destroy(instance_nearest(x, y, obj_credits));
	object_set_visible(obj_credits, false);
	btnIndex--;	
}else if(btnIndex == 4){
global.pause = 0;	
	instance_destroy();
}else if(btnIndex ==5){
	health = 3;
	lives = 3;
	lvl = 0;
	xp = 0;
	maxXP = 100;
	overallXP = 0;
	global.pause = 0;
room_goto(4);	
}else if(btnIndex == 6){
	instance_create_layer(x, y + 100, "Instances", obj_credits)
	btnIndex = 8;
}else if(btnIndex == 7){
	game_restart();
}else if(btnIndex == 8){
	instance_destroy(obj_credits);
	btnIndex = 6;
}