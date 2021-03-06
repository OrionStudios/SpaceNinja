

switch (enemyType)
   {
   case "obj_enemy1":
		if(instance_exists(obj_player)){
		  if(point_distance(x,y,obj_player.x,obj_player.y) < 1000){//if player is near spawner
		    instance_create_layer(x - 64,y - 32, 0, obj_enemy1)//spawn enemy
		   obj_enemy1.path = enemyPath;
		   instance_destroy()
		  }
		}
    break;
    }


