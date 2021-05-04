/// @description Insert description here
// You can write your code in this editor
key_space = keyboard_check_pressed(vk_space);
if(timesUp){
	obj_ninja.speed = 0;
	if(key_space){
	instance_destroy();
	}
}
if(instance_exists(obj_intro)){
	alarm[0] ++;
	counting = false;
}else if(!counting){
	if(room == 5){
		if(!instance_exists(obj_flash)){
			instance_create_layer(x, y, "FlashLayer", obj_flash)
		}
	}
		counting = true;
		alarm[1] = 20;
		//audio_play_sound(snd_clockTick, 4, false);
}

if (alarm[0] == 600){
	audio_play_sound(snd_clockTick, 4, false);
}

