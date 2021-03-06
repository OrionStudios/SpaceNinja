
if(instance_exists(obj_player)){//check if player exists

	if (canShoot){//check if enemy can shoot
		
		if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)){//if wall is not in the way
	 						
			if(obj_player.x != x){
				image_xscale = sign(obj_player.x - x);//enemy will face player
			}
			
			switch (attackType)
			{
				case "sideToSide":
				instance_create_layer(x, y, 0, obj_enemyAttack1);//shoot enemy attack
				break;
				
				case "upAndDown":
				instance_create_layer(x, y, 0, obj_enemyAttack1b);//shoot enemy attack
				break;
			}
			alarm[0] = shotCooldown;//start cooldown
		
			canShoot = false;//enemy cant shoot until after cooldown
	
		}   
	}
}



//enemy runs away after losing all health
if (hp <= 0 ){
	
	canShoot = false;//end shooting
	path_end();//end path
	
	image_xscale = -sign(obj_player.x - x); //make enemy face away from player
	x -= sign(obj_player.x - x) * 12 //have enemy run away from player



	if (!dying){//if player hasnt started dying
		
		dying = true;//make it dying
		alarm[1] = 100;//set alarm to despawn after out of range	
		xp += 20//give player xp

	}

}
