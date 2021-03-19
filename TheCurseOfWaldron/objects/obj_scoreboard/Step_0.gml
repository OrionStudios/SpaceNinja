


if (overallXP >= maxXP){//if player reaches maxXP needed to level up
	maxXP += 100;
	xp = 0;
	lvl += 1;
	
	// change xp label
	scr_changeLabel()

	
	obj_player.shotCooldown -= 5;
}

show_debug_message(room);


switch (room)
{
	case 3:
		audio_play_sound(TrainingMusic, 0, true);
		break;
	case 5:
	case 2:
	case 4:
		audio_play_sound(BattleMusicRooms1_3, 0, true);
		break;
	case 1:
	case 0:
		audio_play_sound(BattleMusicRoom4_5, 0, true);
}