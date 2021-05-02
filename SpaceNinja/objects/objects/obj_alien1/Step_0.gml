if (collision_circle(x, y, 300, obj_explosion, false, true) && !takingDamage){
	takingDamage = true;
   //hp -= 10
	image_blend = c_blue;
	alarm[1] = 70;
}

grv = 10;

dropChance = irandom_range(0, 100);
switch(state){
	case "move_right": 
		hsp = moveSpeed;
		
		break;
	case "move_left":
		hsp = -moveSpeed;
		break;
}

image_xscale = sign(hsp);
if(!obj_scoreboard.paused){
	if(agro){//if agroed onto ninja
		timeline_running = false;//stop timeline
		if(!collision_line(x,y, x + agroRange * sign(hsp), y, obj_ninja, false, true)){//if ninja isnt in line of sight
					agro = false;//no longer agro
		}
		
		if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box) || !place_meeting(x + (sprite_width)  + hsp, y + sprite_height , obj_platform)){//if platform or box or no ground is within move distance
			while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box) && place_meeting(x + (sprite_width)  + sign(hsp) , y + (sprite_height / 2) + 8, obj_platform)){//while platform and box arent 1 pixel away and ground is
				x += sign(hsp);//move forward 1 pixel
			}
				
		}else{
			x += hsp;//if not near anything move normally
		}
	}else{//if not agroed on ninja
		timeline_running = true;//timeline is running
		if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box) || !place_meeting(x + (sprite_width)  + hsp, y + 10 , obj_platform)){//if platform or box or no ground is within move distance
				while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box) && place_meeting(x + (sprite_width)  + sign(hsp) , y + 10, obj_platform)){//while platform and box arent 1 pixel away and ground is
					x += sign(hsp);//move forward 1 pixel
				}
				if(hsp > 0){//if moving to the right
					timeline_position = 100;//set timeline to move to left	
				}else if (hsp < 0){//if moving to the left
					timeline_position = 0;//set timeline to reset and move to the right
				}

			}else{//if nothing obstructing
		
			x += hsp;//if not near anything move normally
				if(collision_line(x,y, x + agroRange * sign(hsp), y, obj_ninja, false, true)){//if ninja in line of sight
					agro = true;
				}
			}
			
	}
}