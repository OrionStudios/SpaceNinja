/// @description Insert description here
// You can write your code in this editor
if(paused){
	if(mouse_x >= camera_get_view_x(view_camera[0]) + 850 && mouse_x <= camera_get_view_x(view_camera[0]) + 1060){
		if(mouse_y >= camera_get_view_y(view_camera[0]) + 315 && mouse_y <= camera_get_view_y(view_camera[0]) + 385){
				if(mouse_check_button_pressed(mb_left)){
				audio_play_sound(snd_menuSelect, 3, false);
				paused = false;
			}
		
		}
	}
		
	draw_rectangle(850, 315, 1060, 385, true);	
}