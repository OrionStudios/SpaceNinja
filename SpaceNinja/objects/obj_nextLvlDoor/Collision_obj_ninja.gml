/// @description Insert description here
// You can write your code in this editor
if(moreEnemies){
//show message	
showMoreEnemies = true;
alarm[1] = 50;
}else if (!instance_exists(obj_flash)){
		audio_stop_sound(snd_clockTick);
	if(!opening){
		opening = true;
		//alarm[0] = 30;
	}

}
if(instance_exists(obj_flash)){
	showPushButton = true;
	alarm[1] = 50;
}