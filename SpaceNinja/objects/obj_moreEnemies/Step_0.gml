/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_ninja) < 300){
	if(instance_exists(obj_alien1)){
		
		showMoreEnemies = true;
	}else{
		instance_destroy();
	}

}else{
	showMoreEnemies = false;
}