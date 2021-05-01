/// @description Insert description here
// You can write your code in this editor
if (global.hp <= 0){
	
	if(lives == 0){
		
		audio_play_sound(snd_gameReset, 4, false);
	}else{
		global.hp = 3;
		obj_timer.alarm[0] = obj_timer.startTime;
		
		if (room == 7 || room == 5 || room == 3){
			room_restart();
		}else if(room == 1){
			room_goto(5);	
		}else if(room == 2 || room == 0){
			room_goto(3);	
		}
		
		audio_play_sound(snd_lvlReset, 4, false);
		obj_timer.alarm[0] = obj_timer.startTime;
	}
	lives --;
}

if(paused){
	if(instance_exists(obj_floatingPlatform)){
		obj_floatingPlatform.timeline_running = false;
		obj_floatingPlatform.hsp = 0
		obj_floatingPlatform.vsp = 0
	}
	
	obj_blaster.canShoot = false
	
	if(i % 3 = 0){
			obj_blaster.alarm[0] ++;	
	}
	if(instance_exists(obj_alien1)){
		obj_alien1.image_speed = 0;
	}
i++
if(i % 3 = 0){
	obj_timer.alarm[0] ++;
}
	if(instance_exists(obj_spike)){
		if(obj_spike.alarm[0] > 0){
			if(i % 3 = 0){
				obj_spike.alarm[0] ++;	
			}
		}else if (obj_spike.alarm[1] > 0){
			if(i % 3 = 0){
				obj_spike.alarm[1] ++;	
			}
		}else if (obj_spike.alarm[2] > 0){
			if(i % 3 = 0){
				obj_spike.alarm[2] ++;	
			}
		}else if (obj_spike.alarm[3] > 0){
			if(i % 3 = 0){
				obj_spike.alarm[3] ++;	
			}
		}
	}
}else{
	i = 0;
	if(instance_exists(obj_floatingPlatform)){
		obj_floatingPlatform.timeline_running = true;
	}
	if(instance_exists(obj_alien1)){
		obj_alien1.image_speed = 0.25;
	}
}
	
	