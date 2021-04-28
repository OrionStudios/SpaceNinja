/// @description Insert description here
// You can write your code in this editor
if(screen_index == 0){
	if(mouse_x >= camera_get_view_x(view_camera[0]) + 850 && mouse_x <= camera_get_view_x(view_camera[0]) + 1060){
		if(mouse_y >= camera_get_view_y(view_camera[0]) + 615 && mouse_y <= camera_get_view_y(view_camera[0]) + 675){
			if(mouse_check_button_pressed(mb_left)){
				sprite_index = spr_gameIntro;
				screen_index = 2;
			}
		}else if(mouse_y >= camera_get_view_y(view_camera[0]) + 700 && mouse_y <= camera_get_view_y(view_camera[0]) + 765){
			if(mouse_check_button_pressed(mb_left)){
				sprite_index = spr_cheatCodes;
				screen_index = 1;
			}
		}
	}
}else if(screen_index == 1){
	if(mouse_x >= camera_get_view_x(view_camera[0]) + 850 && mouse_x <= camera_get_view_x(view_camera[0]) + 1060){
		if(mouse_y >= camera_get_view_y(view_camera[0]) + 700 && mouse_y <= camera_get_view_y(view_camera[0]) + 765){
			if(mouse_check_button_pressed(mb_left)){
				sprite_index = spr_mainMenu;
				screen_index = 0;
			}
		}
	}
}else if(screen_index == 2){
	
}
mouse_check_button_pressed(mb_left)