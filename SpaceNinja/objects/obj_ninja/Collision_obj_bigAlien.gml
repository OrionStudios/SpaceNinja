crushing = false;
if(other.y > y  && vsp > 0 ){
	
	other.hp -= 25;
	vsp = -35;
	crushing = true;
}else if(canTakeDamage && !crushing && !obj_scoreboard.gameOver && !obj_scoreboard.paused){
	audio_play_sound(snd_playerDamage, 3, false);
	canTakeDamage = false;
	global.hp -= 25;
	alarm[0] = 50;
}