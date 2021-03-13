if (overallXP == 0){
	if (xp <= 0 && lvl == 1){
		game_restart();
	}
}

if (overallXP >= 25){
	xp -= 25;
	overallXP -= 25
	if (xp <= 0 && lvl >= 2){
		lvl --;
		xp = 100;
	}
}


instance_destroy();
