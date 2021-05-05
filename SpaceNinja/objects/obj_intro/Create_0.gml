/// @description Insert description here
// You can write your code in this editor
screen_index = 0;
if(room == 7){
		audio_stop_sound(snd_lvl1);
}else if(room == 5){
	audio_stop_sound(snd_lvl2);	
 audio_stop_sound(snd_lvl1);	
}else if (room == 3){
	instance_destroy(obj_flash);
	audio_stop_sound(snd_lvl3);	
	audio_stop_sound(snd_lvl2);	
}