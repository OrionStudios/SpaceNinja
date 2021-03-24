if (charIndex < string_length(sentence))//check if not at end of sentence
{

	charIndex ++;

	//play sound
	randomize();
	//audio_play_sound(choose(snd_type1, snd_type2, snd_type3, snd_type4), 100, false);
	
var interval = random_range(0.03, 0.05);
	alarm[0] = room_speed * interval;
	
}else{ //if at and of sentence
	
	alarm[1] = room_speed * 1;
	
	
	
}