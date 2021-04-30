/// @description Insert description here
// You can write your code in this editor
if(flashing){
	draw_set_alpha(0.1);
draw_rectangle_color(0, 0, 3000, 1000, c_red, c_white, c_red, c_red, false);
draw_set_alpha(1);

waiting = false;
}else{
	if(!waiting && !instance_exists(obj_intro)){
		waiting = true;	
		alarm[0] = 108
		}
}