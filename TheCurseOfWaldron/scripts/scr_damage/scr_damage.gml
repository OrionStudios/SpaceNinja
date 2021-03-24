// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage(_damage) 
{

	health -= _damage;
	audio_play_sound(HeartLost, 3, false);
	if (health <= 0){
		overallXP = lvl * 100;
		xp = 0;
		instance_destroy(obj_player);	
		
		lives --;
		health = 3 + (3 * lvl)
		
		if (lives >= 0){
			room_restart();
		}else{
			global.game_over = true;	
		}
	}
}