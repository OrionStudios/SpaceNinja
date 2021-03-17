hp = 45;

shotCooldown = 90;

canShoot = true;

dying = false



switch (path)
   {
	case "pathDefault":
		path_start(pathDefault, 1.2,  path_action_reverse, false);
		
    break;
	
	case "pathRightUp":
		path_start(pathRightUp, 1.2,  path_action_reverse, false);
	
	break;
	
	case "pathLeftRight":
		path_start(pathLeftRight, 1.2, path_action_reverse, false);
   }


path_position = pathPos;