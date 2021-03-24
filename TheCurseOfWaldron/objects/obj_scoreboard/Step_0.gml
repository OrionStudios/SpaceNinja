


if (overallXP >= maxXP){//if player reaches maxXP needed to level up
	maxXP += 100;

	alarm[2] = 100;


	
	obj_player.shotCooldown -= 5;
}

if (global.game_over && !resetting){
	resetting = true;
	audio_play_sound(KickedBackToTraining, 0, false);
	alarm[3] = 60;
}




