sentences = ds_list_create();
//ds_list_add(sentences, "Ah, you must be the boy. Don't worry, I've been awaiting your arrival.", 
//						"What's going on? Where are my parents?", 
//						"The darkness is rising, but fear not, you've got a job to do. All will become clear in time... You must be what now, 11?",
//						"I see, no formal training yet then. Well there’s no time like the present. Follow me.");
charIndex = 0;						
index = 0;
sentenceCount = 0;
names = ds_list_create();
sprite = 0;
if (room != 4){
audio_play_sound(TownsPersonPopsup, 2, false);
}
goingAway = false;
obj_player.talking = true;




var interval = random_range(0.03, 0.05);
alarm[0] = room_speed * interval;
						
	