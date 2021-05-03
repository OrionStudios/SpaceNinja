key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_climb = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_grab = keyboard_check(ord("G"));


var move = key_right - key_left;//Right = 1, Left = -1, Still = 0
walksp = 10;
hsp = move * walksp;

vsp = vsp + grv//jump speed with gravity
if(instance_exists(obj_scoreboard)){
	if(obj_timer.timesUp || instance_exists(obj_intro) || obj_scoreboard.paused || obj_scoreboard.gameOver){
		key_left = false;
		key_right = false;
		key_jump = false;
		key_down = false;
		key_climb = false;
	
		key_grab = false;
		move = 0;
		walksp = 0;
		hsp = 0;
		vsp = 0;
	}
}
if(instance_exists(obj_nextLvlDoor)){
	if (obj_nextLvlDoor.opening){
		key_left = false;
		key_right = false;
		key_jump = false;
		key_down = false;
		key_climb = false;
	
		key_grab = false;
		move = 0;
		walksp = 0;
		hsp = 0;
		vsp = 0;
	}
}
if (instance_place(x, y, obj_ladder)){//if touching ladder
	
	if (key_climb || key_down){//if trying to move up or down ladder
		canDoubleJump = true;
		climbing = true;
		//vspeed = 0;
		//gravity = 0;
		//sprite_index = spr_climbing;
	}

}else{
	if(climbing){//if still in climbing state but not touching ladder
		vsp = 0;//reset vsp
	}
	climbing = false;
	//sprite_index = spr_player;
}

if(climbing){
		
	if (key_climb && !place_meeting(x, y - climb_speed, obj_platform)){//if holding up
		vsp = climb_speed;
			if(!place_meeting(x, y - sign(vsp), obj_platform)){//if not 1 pixel from ground
			y += sign(climb_speed);//move 1 pixel towards ground
		}
		y -= climb_speed;//go up
	}

	if (key_down && !place_meeting(x, y + climb_speed, obj_platform)){//if holding down
		if(!place_meeting(x, y + sign(vsp), obj_platform) && !place_meeting(x, y + sign(vsp), obj_box)){//if not 1 pixel from ground
			y += sign(climb_speed);//move 1 pixel towards ground
		}
		y += climb_speed;//go down
	}
	
	if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box) || place_meeting(x + hsp, y, obj_moreEnemies)){//if platform or box is within move distance
		while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box) && !place_meeting(x + sign(hsp), y, obj_moreEnemies)){//while platform and box arent 1 pixel away
			x += sign(hsp);//move forward 1 pixel
		}
		hsp = 0;//ninja within 1 pixel of platform or box so stop moving
	}
	x += hsp;//if not near anything move normally
	
	if(!instance_place(x, y + climb_speed, obj_platform)){//if touching ladder and not on ground
		climbing = true;
	}else{//if touching ladder but on ground
		climbing = false;	
	}
	
}else{//if not climbing
	if(!grabbing){//if not grabbing
		
		
		
			 if(place_meeting(x, y + 1, obj_floatingPlatform)){
					var platform = instance_nearest(x, y, obj_floatingPlatform);
					if(platform.vertical){
						y+= platform.vsp;
					}else{
						x += platform.hsp;
					}
			}
		
		if((key_down && place_meeting(x, y + 1, obj_platform))){//if pressing crouch key and touching ground
			key_jump = false;//not able to jump
			crouching = true;//crouching
			//sprite_index = spr_ninjaCrouch;
		}else{//if not pressing crouch or not touching ground
			if(!place_meeting(x, y - sprite_height, obj_platform)){//if platform is not above ninja
				//sprite_index = spr_ninjawalk;
				crouching = false;//no longer crouching
			}else if(sprite_index == spr_ninjaCrouch){//if platform above ninja while crouching
				key_jump = false;//cant jump
			}
		
		}
		if(key_grab && place_meeting(x +  (image_xscale * 10), y - 10, obj_box)){//if grab key is pressed and box is in move distance
				grabbing = true;	
		}

		if ((place_meeting(x, y + 5, obj_platform) || place_meeting(x, y + 5, obj_box))&& key_jump){//if touching platform or crate and pressed jump
			vsp = -35;
			canDoubleJump = true;

		}else if(canDoubleJump && key_jump && !climbing){
			dj = true;
			alarm[1] = 12;
			vsp = -35;
			canDoubleJump = false;
		}
	
		if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box) || place_meeting(x + hsp, y, obj_spikePlatform)){//if platform or box is within move distance
			while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box) && !place_meeting(x + sign(hsp), y, obj_spikePlatform)){//while platform and box arent 1 pixel away
				x += sign(hsp);//move forward 1 pixel
			}
			hsp = 0;//ninja within 1 pixel of platform or box so stop moving
		}
		
		x += hsp;//if not near anything move normally
	
		if (move != 0){//if moving
			image_xscale = move;//set image xscale
		}
	
		if(place_meeting(x, y + vsp, obj_platform) || place_meeting(x, y + vsp, obj_box)){//if platform or box is within jump distance
			while(!place_meeting(x, y + sign(vsp), obj_platform) && !place_meeting(x, y + sign(vsp), obj_box)){//if not 1 pixel from ground
				y += sign(vsp);//move 1 pixel towards ground
			}
			vsp = 0;//ninja 1 pixel above ground so stop moving
		}
		
		y += vsp;//not near ground continue falling
		
	}else{//if grabbing crate
			if((key_down && place_meeting(x, y + 1, obj_platform))){//if pressing crouch key and touching ground
			key_jump = false;//not able to jump
			crouching = true;//crouching
			//sprite_index = spr_ninjaCrouch;
		}else{//if not pressing crouch or not touching ground
			if(!place_meeting(x, y - sprite_height, obj_platform)){//if platform is not above ninja
				//sprite_index = spr_ninjawalk;
				crouching = false;//no longer crouching
			}else if(sprite_index == spr_ninjaCrouch){//if platform above ninja while crouching
				key_jump = false;//cant jump
			}
		
		}
		var box = instance_nearest(x, y, obj_box);
		if(place_meeting(x, y + 1, obj_floatingPlatform) || box.place_meeting(x, y + 1, obj_floatingPlatform)){
			var platform = instance_nearest(x, y, obj_floatingPlatform);
			if(platform.vertical){
				y+= platform.vsp;
			}else{
				x += platform.hsp;
			}
		}
		if(place_meeting(x, y + vsp, obj_platform) || place_meeting(x, y + vsp, obj_box)){//if platform or box is within jump distance
			while(!place_meeting(x, y + sign(vsp), obj_platform) && !place_meeting(x, y + sign(vsp), obj_box)){//if not 1 pixel from ground
				y += sign(vsp);//move 1 pixel towards ground
			}
			vsp = 0;//ninja 1 pixel above ground so stop moving
		}
		
		y += vsp;//not near ground continue falling
		
		if(key_grab){//while holding down grab button

			var boxGrabbed = instance_nearest(x + hsp, y, obj_box);
			boxGrabbed.beingGrabbed = true;
			if(!pulling){//if not pulling crate
				if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box)){//if platform or box is within move distance
					while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box)){//while platform and box arent 1 pixel away
						x += sign(hsp);//move forward 1 pixel
					}
					hsp = 0;//ninja within 1 pixel of platform or box so stop moving
				}
				
				x += hsp;//if not near anything move normally
				grabbing = true;
		
			}else{//if pulling
			
				if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box)){//if platform or box is within move distance
					while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box)){
						x += sign(hsp);
					}
					
					hsp = 0;
					
				}else{
					hsp = 4 * sign(hsp);	
				}
				x += hsp;
			}
		}else{
			grabbing = false;
		}
	}
}

if(crouching){
mask_index = spr_ninjaCrouch;
}else{
mask_index = spr_ninjaStand	
}
if(!dj){
	if(climbing){
		
		sprite_index = spr_ninjawalk;
		if(key_climb || key_down){
				image_speed = 0.17;
		}else {
			image_speed = 0;
		}

	}else if(!place_meeting(x, y + 20, obj_platform)){
		sprite_index = spr_ninjaJump;	
	}else if(hsp != 0 && place_meeting(x, y + 4, obj_platform) && !crouching || (move != 0 && distance_to_object(obj_box) < 4 && !crouching)){
		image_speed = 0.17;
		sprite_index = spr_ninjawalk;
	}else if(hsp != 0 && place_meeting(x, y + 4, obj_platform) && crouching || (move != 0 && distance_to_object(obj_box) < 4 && crouching)){
		image_speed = 0.17;
		sprite_index = spr_ninjaCrouch;
	}else if(hsp == 0 && crouching){
		image_speed = 0;
		sprite_index = spr_ninjaCrouchStill;
	}else if(hsp == 0 && !crouching){
		image_speed = 0;
		sprite_index = spr_ninjaStand;
	}

}else{
	sprite_index = spr_ninjaStand;
}

