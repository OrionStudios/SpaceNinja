if(other.y > y  && vsp > 0 ){
	
	other.hp -= 25;
	vsp = -35;
}else if(canTakeDamage){
	audio_play_sound(snd_playerDamage, 3, false);
	canTakeDamage = false;
	global.hp -= 25;
	alarm[0] = 50;
}