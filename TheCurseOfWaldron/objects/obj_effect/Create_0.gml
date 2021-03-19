sentences = ds_list_create();
//ds_list_add(sentences, "Ah, you must be the boy. Don't worry, I've been awaiting your arrival.", 
//						"What's going on? Where are my parents?", 
//						"The darkness is rising, but fear not, you've got a job to do. All will become clear in time... You must be what now, 11?",
//						"I see, no formal training yet then. Well there’s no time like the present. Follow me.");
charIndex = 0;						
index = 0;
sentenceCount = 0;
var i, file;
file = file_text_open_read("room1.txt");
while (!file_text_eof(file)){

	ds_list_add(sentences, file_text_readln(file));
	sentenceCount ++;

}
file_text_close(file);

sentence = ds_list_find_value(sentences, index);



var interval = random_range(0.04, 0.06);
alarm[0] = room_speed * interval;
						
	