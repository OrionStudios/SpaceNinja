if(canTakeDamage){
	audio_play_sound(snd_playerDamage, 3, false);
	canTakeDamage = false;
	global.hp -= 25;
	alarm[0] = 50;
}