// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage(_damage) 
{

	obj_player.hp -= _damage;
	audio_play_sound(HeartLost, 3, false);
	if (obj_player.hp <= 0){
		
		instance_destroy(obj_player);	
		lives --;
		
		if (lives >= 0){
			room_restart();
		}
	}
}