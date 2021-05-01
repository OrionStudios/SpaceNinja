/// @description Insert description here
// You can write your code in this editor
show_debug_message("ROOM");
show_debug_message(room);
timesUp = false;
counting = false;
	audio_stop_sound(snd_clockTick);
	draw_set_halign(fa_center);
switch(room){
	
	

	case 7://Lvl1Room1

	startTime = 3600 * 2;
	break;
	case 5://Lvl2Room1
	
	startTime = 3600 * 3;
	break;
	case 1://Lvl2Room2
	case 3://Lvl3Room1
	
	startTime = 3600 * 3;
	break;
	case 2://Lvl3Room2
	case 0://Lvl3Room3
	//case 4://Credits
	
	
	
	break;
}
alarm[0] = startTime;