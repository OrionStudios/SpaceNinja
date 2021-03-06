vspeed = 6;
hspeed = 10;//shot speed

alarm[0] = 140;//alarm to despawn shot after out of range

image_angle = point_direction(x, y, x, obj_player.y);//sprite point towards player
direction = point_direction(x, y,  obj_player.x, obj_player.y);//obj move towards player