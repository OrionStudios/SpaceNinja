if(other.y > y && vsp > 0){
	instance_destroy(other);
}else if(canTakeDamage){
	canTakeDamage = false;
	global.hp -= 1;
	alarm[0] = 50;
}