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
}