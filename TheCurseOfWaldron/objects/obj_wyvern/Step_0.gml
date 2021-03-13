event_inherited();

vspeed = -obj_player.vspeed;


if(place_meeting(x, y + vspeed, obj_wall)){
	while(!place_meeting(x, y+sign(vspeed), obj_wall)){
		y = y + sign(vspeed);
	}
vspeed = 0;	
}
y = y + vspeed;