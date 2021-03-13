if (overallXP < playerMaxXP){
	
	xp += 25;
	overallXP += 25;
	if (xp >= 100){
		lvl++;
		xp = 25;	
	}

}
instance_destroy(other);
uncleMagic -= 10;