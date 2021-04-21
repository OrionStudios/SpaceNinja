/// @description Insert description here
// You can write your code in this editor
key_space = keyboard_check_pressed(vk_space);
if(timesUp){
	obj_ninja.speed = 0;
	if(key_space){
room_restart();	
	}
}
if(instance_exists(obj_intro)){
	alarm[0] ++;
}
