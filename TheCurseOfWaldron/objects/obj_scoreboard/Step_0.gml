


if (overallXP >= maxXP){//if player reaches maxXP needed to level up
	
	maxXP += 100;
	audio_play_sound(NewXPLevel, 6, false);
	alarm[2] = 100;


	
	obj_player.shotCooldown -= 5;
}

if (global.game_over && !resetting){
	resetting = true;
	audio_play_sound(KickedBackToTraining, 0, false);
	alarm[3] = 150;
}

switch(room){
	case 5:
	if (!playingIntro){
	playingIntro = true;
	audio_stop_all();
	audio_play_sound(IntroStory, 0, true);
	}
	break;
	case 4: 
	if (!playingTraining){
	playingTraining = true;
	audio_stop_all();
	audio_play_sound(TrainingMusic, 0, true);
	}
	break;
	case 7:
	if (!playing1_3){
	playing1_3 = true;
	audio_stop_all();
	audio_play_sound(BattleMusicRooms1_3, 0, true);
	}
	break;
	case 1:
	if (!playing4_5){
	playing4_5 = true;
	audio_stop_all();
	audio_play_sound(BattleMusicRoom4_5, 0, true);
	}
	break;
	case 2:
	if (!playingOutro){
	playingOutro = true;
	audio_stop_all();
	audio_play_sound(EndingStoryandCredits, 0, true);
	}
	break;
}


