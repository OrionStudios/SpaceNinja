key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_grab = keyboard_check(ord("G"));
var move = key_right - key_left;//Right = 1, Left = -1, Still = 0
walksp = 10;
hsp = move * walksp;
crouching = keyboard_check(ord("C"));
vsp = vsp + grv//jump speed with gravity


if (instance_place(x, y, obj_ladder)){
	
	if (keyboard_check(vk_up) || keyboard_check(vk_down)){
		canDoubleJump = true;
		climbing = true;
		//vspeed = 0;
		//gravity = 0;
		//sprite_index = spr_climbing;
	}

}else{
	climbing = false;
	//sprite_index = spr_player;
}

if(climbing){
		
	if (keyboard_check(vk_up)){//if holding up
		vsp = climb_speed;
		y -= climb_speed;//go up
	}

	if (keyboard_check(vk_down) && !place_meeting(x, y + climb_speed, obj_platform)){//if holding down
		if(!place_meeting(x, y + sign(vsp), obj_platform) && !place_meeting(x, y + sign(vsp), obj_box)){//if not 1 pixel from ground
			y += sign(climb_speed);//move 1 pixel towards ground
		}
		y += climb_speed;//go down
	}
	
	if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box)){//if platform or box is within move distance
		while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box)){//while platform and box arent 1 pixel away
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
		if(crouching){
			key_jump = false;
			sprite_index = spr_ninjaCrouch;
		}else{
			if(!place_meeting(x, y - sprite_height, obj_platform)){
				sprite_index = spr_ninja;
			}else{
				key_jump = false;
			}
		
		}
		if(key_grab && place_meeting(x +  (image_xscale * 10), y - 10, obj_box)){//if grab key is pressed and box is in move distance
				grabbing = true;	
		}

		if ((place_meeting(x, y + 1, obj_platform) || place_meeting(x, y + 1, obj_box))&& key_jump){//if touching platform or crate and pressed jump
			vsp = -35;
			canDoubleJump = true;
		}else if(canDoubleJump && key_jump){
			vsp = -35;
			canDoubleJump = false;
		}
	
		if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box)){//if platform or box is within move distance
			while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box)){//while platform and box arent 1 pixel away
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





