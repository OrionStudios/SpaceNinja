if (collision_circle(x, y, 300, obj_explosion, false, true) && !takingDamage){
	takingDamage = true;
   //hp -= 10
	image_blend = c_blue;
	alarm[1] = 70;
}
