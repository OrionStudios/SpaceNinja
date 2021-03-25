// if current player XP < maximum possible Player XP
if (overallXP < playerMaxXP){
	// add 25 xp to bar
	xp += 25;
	// add 25 to overall XP
	overallXP += 25;
	
	// checking if leveling up is necessary
	if (xp > 100){
		// increase level 
		lvl++;
		scr_changeLabel()
		// reset bar xp
		xp = 25;	
	}
}
audio_play_sound(RubyTakingDamage, 9, false);
// Destroy the light magic projectile
instance_destroy(other);

uncleMagic -= 10;
if (uncleMagic <= 0 && !obj_uncle.talking){
	audio_play_sound(RubyDestroyed_UncleDefeated, 0, false);
instance_destroy();
}

