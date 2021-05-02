/// @description Insert description here
// You can write your code in this editor
if(mouse_x >= camera_get_view_x(0) + 700 && mouse_x <= camera_get_view_x(0) + 1100){
	if(mouse_y >= camera_get_view_y(0) + 700 && mouse_y <= camera_get_view_y(0) + 800){
		instance_destroy();	
	}
}

