/// @description Insert description here
// You can write your code in this editor

if(dropChance >= 20){
	instance_create_layer(x, y, "Instances", obj_energy);
}
audio_play_sound(snd_killEnemy, 4, false);