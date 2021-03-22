moving = false;
talking = false;
mapOpened = false;
switch (room){
case 5:	
	scr_openTextFile("room1.txt");
	if (lvl == 2){
		path_start(path_townsPerson1, 3, path_action_stop, true);	
		
		if (distance_to_object(obj_player) < 50){
			scr_openTextFile("room1pt2.txt");
			
		}
	}
	
	
	break;
case 2:
	scr_openTextFile("room2.txt");
}