


if (overallXP >= maxXP){//if player reaches maxXP needed to level up
	xp = 0;
	lvl += 1;
	
	// change xp label
	scr_changeLabel()

	maxXP += 100;
	obj_player.shotCooldown -= 5;
}