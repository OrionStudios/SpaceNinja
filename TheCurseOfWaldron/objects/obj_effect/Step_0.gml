if (index >= sentenceCount - 1 && !goingAway){
	goingAway = true;
instance_destroy(obj_button);
obj_player.canShoot = true;
waitingToShoot = false;
obj_player.talkingPt2 = false;
obj_player.alarm[4] = 20;
alarm[4] = 5;

}else{
obj_player.talkingPt2 = true;
waitingToShoot = true;	
}

x = 200 + camera_get_view_x(view_camera[0]);
y = 600 + camera_get_view_y(view_camera[0]);
