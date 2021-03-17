


if (overallXP >= maxXP){//if player reaches maxXP needed to level up
	maxXP += 100;
	xp = 0;
	lvl += 1;
	
	// change xp label
	scr_changeLabel()

	
	obj_player.shotCooldown -= 5;
}