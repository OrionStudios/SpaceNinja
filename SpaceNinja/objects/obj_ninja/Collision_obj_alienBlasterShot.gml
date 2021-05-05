/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
if(canTakeDamage && !obj_scoreboard.gameOver && !obj_scoreboard.paused){
	audio_play_sound(snd_bossDamage, 3, false);
	canTakeDamage = false;
	global.hp -= 25;
	alarm[0] = 50;
}