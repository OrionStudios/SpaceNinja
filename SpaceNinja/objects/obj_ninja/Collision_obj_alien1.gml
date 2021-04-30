if(other.y > y && vsp > 0){
	instance_destroy(other);
}else if(canTakeDamage){
	audio_play_sound(snd_playerDamage, 3, false);
	canTakeDamage = false;
	global.hp -= 1;
	alarm[0] = 50;
}