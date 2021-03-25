if (!convoStarted && distance_to_object(obj_player) < 50){//if convo hasnt started and player is within range
	convoStarted = true;//start convo
	talking = true//grandpa is talking
	scr_openTextFile("room0.txt");//open dialogue file
	obj_player.canShoot = false;

}

if (!instance_exists(obj_effect) && !moving && convoStarted && path_position != 1){//checks convo has begun, ended, and hasnt started moving yet.
	talking = false;
	moving = true;//grandpa is moving
	path_start(path_grandpa, 1.3, path_action_stop, false);//along path
	image_speed = .2;
	obj_player.canShoot = false;
}

if (path_position == 1 && moving = true){//if moving on path and reached end
	moving = false;//stop moving
	image_speed = 0;
	scr_openTextFile("room0pt2.txt");//open dialogue file
	talking = true;//grandpa is talking
	obj_player.canShoot = false;
	
		
}

if(path_position == 1 && !instance_exists(obj_effect) && !training && !shooting){//if at end of path and dialogue is over and hasnt started training
	
	talking = false;//not talking
	training = true;//training started
	obj_player.talkingPt2 = true;
	obj_player.training = true;
	obj_player.waitingToShoot = false;
	obj_player.lastChecker = true;
	//alarm[0] = 10;
	//player can now shoot
	obj_player.shootTraining = true;
	obj_scoreboard.tip = 2;
}

if (trainingOver && !talking){
	talking = true
	scr_openTextFile("room0pt3.txt");
	
}

if (trainingOver && !instance_exists(obj_effect) && !shooting){
	
	shooting = true;
	training = false
	trainingOver = false;
	if (talking){
		obj_scoreboard.zoomXP = true;
		
		talking = false;
		obj_player.waitingToShoot = true;
		obj_scoreboard.tip = 3;	
		//alarm[0] = 10;
	}

}

if (numOfEnemies == 0 && !talking){//if room is cleared 
	talking = true;
	scr_openTextFile("room0pt4.txt");
}

if (numOfEnemies == 0 && talking && !instance_exists(obj_effect) && !instance_exists(obj_map)){
	audio_play_sound(MapComesUp, 0, false);
	instance_create_layer(200 + camera_get_view_x(view_camera[0]), 50 + camera_get_view_y(view_camera[0]), "Text", obj_map);
}