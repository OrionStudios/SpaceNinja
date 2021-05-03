/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_ninja) < 200 && !playing && !moreEnemies){
	playing = true;
	audio_play_sound(snd_nextRoom, 3, false);
	alarm[2] = 30;

}

if(instance_exists(obj_alien1)){
moreEnemies = true;


}else{
	moreEnemies = false;
	showMoreEnemies = false;
}