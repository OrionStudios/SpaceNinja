hspeed = 0;

vspeed = 0;

walksp = 2.4;
tipShowing = false;
shotCooldown = 30;
talking = false;
waitingToShoot = false;
training = false;
trainingOver = false;
canShield = true;
attacking = false;
hp = 3;

switch (room) //rooms arent numbered in order for some reason
{
	case 3://room 0
		audio_play_sound(TrainingMusic, 0, true);
		
		
		break;
	case 5://room 1
		audio_stop_all();
	case 2://room 2
	case 4://room 3
		audio_play_sound(BattleMusicRooms1_3, 0, true);
		break;
	case 1://room 4
		audio_stop_all();
	case 0://room 5
		audio_play_sound(BattleMusicRoom4_5, 0, true);
}
