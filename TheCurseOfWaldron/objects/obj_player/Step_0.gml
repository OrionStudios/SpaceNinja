key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));

key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

key_up= keyboard_check(vk_up) || keyboard_check(ord("W"));

key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

show_debug_message(room);
////Calculate Movement

show_debug_message(room);
if (!talking){
	var move = key_right - key_left;
	hspeed = move * walksp;

	var vertMove = key_down - key_up;
	vspeed = vertMove * walksp;
	if (!canShoot){
		if((training || trainingOver) && waitingToShoot ){
			waitingToShoot = false;
			alarm[0] = 10;
		}
	}
}else{
	
	hspeed = 0;
	vspeed = 0;
	
	
}

//Horizontal Collision
if(place_meeting(x + hspeed, y, obj_wall) || place_meeting(x + hspeed, y, obj_fightBarrier)){
	while(!place_meeting(x+ 2 * sign(hspeed), y, obj_wall) && !place_meeting(x + hspeed, y, obj_fightBarrier)){
		x = x + sign(hspeed);
	}
	hspeed = 0;	
}

x = x + hspeed;


//Vertical Collision
if(place_meeting(x, y + vspeed, obj_wall)){
	while(!place_meeting(x, y + 2 * sign(vspeed), obj_wall)){
		y = y + sign(vspeed);
	}
	vspeed = 0;	
}

y = y + vspeed;

//invert sprite for moving left and right
if(hspeed != 0){
	sprite_index = spr_walkingRight;
	//image_xscale = sign(hspeed);
}
if(hspeed == 0){
	//sprite_index = spr_walkingRight;
	image_speed = 0;
}
if(canShoot){
	show_debug_message("Can Shoot");	
}
//shoot magic
if (canShoot && mouse_check_button(mb_left) && !talking && !waitingToShoot && lastChecker){
	
	if (instance_exists(obj_grandpa)){
		if (obj_grandpa.training && !obj_grandpa.trainingOver && !obj_grandpa.shooting){
			instance_create_layer(x, y - 30, "Training", obj_trainingMagic);
			canShoot = false;
			alarm[6] = 100;
			trainingOver = true;
			attacking = false;
			alarm[2] = shotCooldown;
			
		}else{
			instance_create_layer(x, y, "Instances", obj_magicBall);	
			alarm[0] = shotCooldown;
			canShoot = false;
				show_debug_message("Shot 1");
		}
	}else{
		instance_create_layer(x, y, "Instances", obj_magicBall);	
		alarm[0] = shotCooldown;
			show_debug_message("Shot 2");
		canShoot = false;
	}
	

	if (!attacking){
		
		attacking = true;

}
}



if (talking){
hspeed = 0;
vspeed = 0
}

if(hspeed == 0 && !attacking){
image_speed = 0;	
}
if (hspeed > 0 && vspeed == 0){
	sprite_index = spr_walkingRight;
	image_speed = 0.2;
	
}else if(hspeed < 0 && vspeed == 0){
	sprite_index = spr_walkingLeft;
	image_speed = 0.2;
}else if(hspeed == 0 && vspeed < 0){
	sprite_index = spr_walkingUp;
	image_speed = 0.2;
}else if(hspeed == 0 && vspeed > 0){
	sprite_index = spr_walkingDown;
	image_speed = 0.2;
}

if (attacking){
	if (sign(mouse_x - x) > 0){
		sprite_index = spr_attack_right;
	}else{
		sprite_index = spr_attack_left;
	}
	image_speed = 0.1;
}

if (canShield && mouse_check_button(mb_right)){
	if (true){
			
		canShield = false;
		alarm[5] = room_speed * 10;//cooldown between shields
		instance_create_layer(x, y, "Shield", obj_shield);

	}
}

