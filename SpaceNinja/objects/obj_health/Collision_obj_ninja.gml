if(global.hp != 100){
	global.hp += 25;
}

audio_play_sound(snd_addHealth, 2, false);
instance_destroy();