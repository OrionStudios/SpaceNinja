if(keyboard_check_pressed(ord("N"))){
	room_goto_next();	//skip room
}else if(keyboard_check_pressed(ord("L"))){
	lvl ++; //level up
}else if(keyboard_check_pressed(ord("H"))){
	obj_player.hp += 3;//health boost
}else if(keyboard_check_pressed(ord("C"))){
xp += 25;	
overallXP += 25;
}