/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
hp -= 10;
if(hp <= 0){
	instance_destroy(obj_alienBlaster);	
	instance_destroy();	
}