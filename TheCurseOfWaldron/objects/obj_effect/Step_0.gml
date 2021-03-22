if (index >= sentenceCount - 1){
instance_destroy(obj_button);
obj_player.canShoot = false;
obj_player.alarm[4] = 20;
instance_destroy();	
}
x = 200 + camera_get_view_x(view_camera[0]);
y = 600 + camera_get_view_y(view_camera[0]);
