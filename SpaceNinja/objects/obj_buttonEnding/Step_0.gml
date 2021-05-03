/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y-5, obj_ninja) && !activated){
	
    audio_play_sound(snd_lastButtonPush, 4, false);

	audio_pause_sound(snd_lvl2);
	timeline_index = Timeline2;//set timeline
	timeline_position = 0;//set initial direction to left or right
	timeline_running = true;
	timeline_loop = false;
}
if(activated && !obj_scoreboard.paused){
obj_timer.alarm[0] ++;	
	if(instance_exists(obj_floatingPlatform)){
			obj_floatingPlatform.timeline_running = false;
			obj_floatingPlatform.hsp = 0
			obj_floatingPlatform.vsp = 0
		}
	
	obj_ninja.canShoot = false;
	
	
				obj_blaster.alarm[0] ++;	
	
		if(instance_exists(obj_alien1)){
			obj_alien1.image_speed = 0;
		}

	
		if(instance_exists(obj_spike)){
			if(obj_spike.alarm[0] > 0){
		
					obj_spike.alarm[0] ++;	
			
			}else if (obj_spike.alarm[1] > 0){
		
					obj_spike.alarm[1] ++;	
			
			}else if (obj_spike.alarm[2] > 0){
			
					obj_spike.alarm[2] ++;	
			
			}else if (obj_spike.alarm[3] > 0){
		
					obj_spike.alarm[3] ++;	
			
			}
		}
}