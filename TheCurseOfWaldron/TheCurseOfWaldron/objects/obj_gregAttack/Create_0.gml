vspeed = 6;
hspeed = 10;//shot speed

alarm[0] = 140;//alarm to despawn shot after out of range
if (instance_exists(obj_player)){
	image_angle = point_direction(x, y, obj_player.x, y);//sprite point towards player
	direction = point_direction(x, y, obj_player.x, y);//obj move towards player
}