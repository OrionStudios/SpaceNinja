if(keyboard_check_pressed(ord("N"))){
	if (room != 5){
	alarm[2] = 1
	
	maxXP += overallXP + 100;
	overallXP = lvl * 100;

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