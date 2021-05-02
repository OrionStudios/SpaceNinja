/// @description Insert description here
// You can write your code in this editor
if (global.hp <= 0){
	
	if(lives == 0){
		
		audio_play_sound(snd_gameReset, 4, false);
	}else{
		global.hp = 100;
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

if(paused && room != 6){
	if(instance_exists(obj_floatingPlatform)){
		obj_floatingPlatform.timeline_running = false;
		obj_floatingPlatform.hsp = 0
		obj_floatingPlatform.vsp = 0
	}
	
	
	
	if(i % 3 = 0){
			obj_blaster.alarm[0] ++;	
	}
	if(instance_exists(obj_alien1)){
		obj_alien1.image_speed = 0;
	}
i++
if(i % 3 = 0 && !instance_exists(obj_intro)){
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
	if(pauseInd == 0){
		if(mouse_x >= camera_get_view_x(view_camera[0]) + 900 && mouse_x <= camera_get_view_x(view_camera[0]) + 1110){
			if(mouse_y >= camera_get_view_y(view_camera[0]) + 315 && mouse_y <= camera_get_view_y(view_camera[0]) + 385){
				if(mouse_check_button_pressed(mb_left)){
					audio_play_sound(snd_menuSelect, 3, false);
					paused = false;
				}
			}else if(mouse_y >= camera_get_view_y(view_camera[0]) + 390 && mouse_y <= camera_get_view_y(view_camera[0]) + 440){
				if(mouse_check_button_pressed(mb_left)){
					pauseInd = 1;
				}
			}else if(mouse_y >= camera_get_view_y(view_camera[0]) + 440 && mouse_y <= camera_get_view_y(view_camera[0]) + 510){
				if(mouse_check_button_pressed(mb_left)){
					paused  = false;
					
					obj_timer.alarm[0] = obj_timer.startTime
					audio_stop_all();
					instance_destroy(obj_timer);
					instance_destroy(obj_flash);
						instance_destroy();	
					
			
				}
			}else if(mouse_y >= camera_get_view_y(view_camera[0]) + 510 && mouse_y <= camera_get_view_y(view_camera[0]) + 570){
				if(mouse_check_button_pressed(mb_left)){
					game_restart();
				}
			}
		}
	}else if(pauseInd == 1){
		if(mouse_x >= camera_get_view_x(view_camera[0]) + 855 && mouse_x <= camera_get_view_x(view_camera[0]) + 1065){
			if(mouse_y >= camera_get_view_y(view_camera[0]) + 520 && mouse_y <= camera_get_view_y(view_camera[0]) + 580){
				if(mouse_check_button_pressed(mb_left)){
				pauseInd = 0;
				}
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
	
	