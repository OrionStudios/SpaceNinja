if(other.y > y - 3 && vsp > 0 ){
	//canTakeDamage = false;
	//alarm[0] = 30;
	other.hp -= 25;
	vsp = -35;
	
}else if(canTakeDamage){
	audio_play_sound(snd_playerDamage, 3, false);
	canTakeDamage = false;
	global.hp -= 25;
	alarm[0] = 50;
}