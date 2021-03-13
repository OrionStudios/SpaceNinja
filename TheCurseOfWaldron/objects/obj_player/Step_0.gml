key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));

key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

key_up= keyboard_check(vk_up) || keyboard_check(ord("W"));

key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));


////Calculate Movement
var move = key_right - key_left;

hspeed = move * walksp;

var vertMove = key_down - key_up;
vspeed = vertMove * walksp;

//Horizontal Collision
if(place_meeting(x + hspeed, y, obj_wall) || place_meeting(x + hspeed, y, obj_fightBarrier)){
	while(!place_meeting(x+sign(hspeed), y, obj_wall) && !place_meeting(x + hspeed, y, obj_fightBarrier)){
		x = x + sign(hspeed);
	}
	hspeed = 0;	
}

x = x + hspeed;


//Vertical Collision
if(place_meeting(x, y + vspeed, obj_wall)){
	while(!place_meeting(x, y+sign(vspeed), obj_wall)){
		y = y + sign(vspeed);
	}
	vspeed = 0;	
}

y = y + vspeed;

//invert sprite for moving left and right
if(hspeed != 0){
	image_xscale = sign(hspeed);
}

//shoot magic
if (canShoot && mouse_check_button(mb_left)){
	instance_create_layer(x, y, "Instances", obj_magicBall);	
	alarm[0] = shotCooldown;
	canShoot = false;

}

if (canShield && mouse_check_button(mb_right)){
	if (room >= 4){
			instance_create_layer(x, y, "Instances", obj_shield)
	}
}

