/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("N")) && room != 4 && room != 6 && !instance_exists(obj_intro)){
room_goto_next();
}else if(keyboard_check_pressed(ord("N")) && room == 4){
room_goto(6)
}else if (keyboard_check_pressed(ord("R"))){
	obj_timer.alarm[0] = obj_timer.startTime;
room_restart();
}else if (keyboard_check_pressed(ord("M"))){
obj_timer.alarm[0] += 1200;
}else if (keyboard_check_pressed(ord("L"))){
lives ++;
global.hp = 100;
}