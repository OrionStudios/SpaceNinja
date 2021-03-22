if(instance_exists(obj_player)){//check if player exists

	instance_create_layer(x, y, "Instances", obj_gregAttack);//shoot enemy attack

}
image_blend = make_colour_hsv(360, 0, 360 - (hp * 60));
hp --;