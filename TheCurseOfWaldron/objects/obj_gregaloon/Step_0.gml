if (hp <= 0 ){//if killed


	path_end();//end path
	if(instance_exists(obj_player)){
	image_xscale = -sign(obj_player.x - x); //make enemy face away from player
	x -= sign(obj_player.x - x) * 12 //have enemy run away from player
	}

	
	if (!running){//if player hasnt started dying
		
		running = true;//make it dying
		alarm[1] = 100;//set alarm to despawn after out of range	
		if (instance_exists(obj_fightBarrier)){
			

			instance_nearest(x, y, obj_fightBarrier).numOfEnemies -= 1;
		}
	xp += eXP;//give player xp
	overallXP += eXP;
	}
	
}

if(instance_exists(obj_player)){//check if player exists
	
	if(obj_player.x != x){
		image_xscale = sign(obj_player.x - x);//enemy will face player
	}
			
}
