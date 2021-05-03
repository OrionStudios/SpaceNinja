time = alarm_get(0) ;
time = ceil(time / 60);

hour = floor(time/60);

hourStr = string(hour) + ":";
minute = (time % 60)
if (minute < 10){
	
	minuteStr = "0" + string(minute);
}else{
minuteStr = string(minute);	
}
currentTime = hourStr + minuteStr;

draw_rectangle_color(860, 40, 1060, 125, c_black, c_black, c_black, c_black, false);
draw_set_font(Font2);
draw_text_ext_transformed(960, 45, currentTime, 30, 100, 4, 4, 0);


if(timesUp){

draw_text_ext_transformed(960, 400, "You ran out of time, press space to restart the game", 30, 200, 3, 3, 0);
}