/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_intro) && room != 4){
	if(!paused){
		pauseInd = 0;
		paused = true;
		
	}else {
		paused = false;
	}
}