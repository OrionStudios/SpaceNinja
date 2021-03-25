if(keyboard_check_pressed(ord("N"))){
	if (room != 5 && room != 1){
		
		lvl += 1;
		xp = 0;
					
		switch(lvl){
			case 0: health = 3;
					overallXP = 0;
			break;
			case 1: health = 5;
					xp = 0;
					overallXP = 100;
			break;
			case 2: health = 7;
					overallXP = 200;
			break;
			case 3: health = 10;
					overallXP = 300;
			break;
		}
	scr_changeLabel();
	overallXP = lvl * 100;
	maxXP = overallXP + 100;
	
	showXP = true;
	}else if (room == 1){
	xp = 50;
	overallXP = 450;
	maxXP = 500;
	}
	room_goto_next();	//skip room
}else if(keyboard_check_pressed(ord("L"))){
	lvl ++; //level up
}else if(keyboard_check_pressed(ord("H"))){
	health += 3;//health boost
}else if(keyboard_check_pressed(ord("C"))){
xp += 25;	
overallXP += 25;
}else if(keyboard_check_pressed(ord("B"))){
	xp = 0
	lvl --;
	overallXP = lvl * 100;
	maxXP += overallXP + 100;
	room_goto_previous();
}