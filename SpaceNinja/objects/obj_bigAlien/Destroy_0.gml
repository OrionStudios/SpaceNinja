dropChance = irandom_range(0, 100);
if(dropChance >= 50){
	instance_create_layer(x, y, "Instances", obj_energy);
}
audio_play_sound(snd_killEnemy, 4, false);