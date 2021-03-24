if(instance_exists(obj_effect)){
obj_effect.index ++;
obj_effect.charIndex = 0;
obj_effect.sentence = ds_list_find_value(obj_effect.sentences, obj_effect.index);

var interval = random_range(0.04, 0.06);
obj_effect.alarm[0] = room_speed * interval;
alarm[0] = 20;
}else if (room == 5){
room_goto_next();	
}else{
	show_debug_message("Creating button")
	object_set_visible(obj_credits, true);
	instance_create_layer(x - 400 , y - 550, "Button", obj_credits);

	instance_destroy(instance_nearest(x, y, obj_background));
	alarm[0] = 20
	
}