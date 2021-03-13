// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_changeLabel() 
{
	if (lvl == 0) {
	obj_scoreboard.xpLabel = "Novice"
	} else 	if (lvl == 1) {
	obj_scoreboard.xpLabel = "Apprentice"
	}else 	if (lvl == 2) {
	obj_scoreboard.xpLabel = "Journeyman"
	}else 	if (lvl == 3) {
	obj_scoreboard.xpLabel = "Skilled"
	}else 	if (lvl == 4) {
	obj_scoreboard.xpLabel = "Expert"
	}else 	if (lvl == 5) {
	obj_scoreboard.xpLabel = "Master"
	}
}