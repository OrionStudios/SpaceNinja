moving = false;
talking = false;
mapOpened = false;
talkingToAstra = false;
showingShield = false;
switch (room){
case 7:	
		
		
	scr_openTextFile("room1.txt");
	if (lvl == 2){
		scr_openTextFile("room1pt2.txt");
	}
	
	
	break;
case 3:
	scr_openTextFile("room2.txt");
	break;
case 6:
	scr_openTextFile("room3.txt");
	break;
}