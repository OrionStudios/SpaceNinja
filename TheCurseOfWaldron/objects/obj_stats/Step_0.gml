if (xp >= maxXP){//if player reaches maxXP needed to level up
	xp = 0;
	lvl += 1;
	maxXP = (lvl * 10) + (lvl * 100);
}