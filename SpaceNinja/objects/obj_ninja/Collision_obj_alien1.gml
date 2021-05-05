if(other.y > y && vsp > 0 && other != obj_bigAlien){
	instance_destroy(other);
}else if(canTakeDamage && !obj_scoreboard.gameOver && !obj_scoreboard.paused){
	audio_play_sound(snd_playerDamage, 3, false);
	canTakeDamage = false;
	global.hp -= 25;
	alarm[0] = 50;
}