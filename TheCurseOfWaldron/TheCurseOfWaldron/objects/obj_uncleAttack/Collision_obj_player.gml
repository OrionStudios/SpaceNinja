/* 
When Uncle damages player:
XP Decreases by 50 points (Half a level)
*/

// If Player's overall xp is > 100 (Greater than a full Novice bar) 
if (overallXP > 100){
	xp -= 50;
	overallXP -= 50
	
	// if Player's overall xp is 100 (Maxed novice) or below, restart game in Forest room
	if (overallXP <= 100){
		game_restart();
	}
	
	/* if xp is zero after the decrease (such as 50 - 50 = 0) decrease level and reset bar to full */
	if (xp == 0){
		lvl --;
		scr_changeLabel()
		xp = 100;
	}	
	/* else if xp is less than zero after decrease, (such as 25 - 50 = -25) 
	set it to 75 and decrease level */
	else if (xp < 0){
		lvl --;
		scr_changeLabel()
		xp = 75;
	}
}

// Destroy dark magic projectile after collision with player
instance_destroy();
