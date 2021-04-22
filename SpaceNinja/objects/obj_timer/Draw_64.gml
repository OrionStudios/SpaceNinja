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

draw_rectangle_color(785, 40, 960, 125, c_black, c_black, c_black, c_black, false);
draw_text_ext_transformed(810, 30, currentTime, 30, 100, 4, 4, 0);


if(timesUp){

draw_text_ext_transformed(500, 400, "You ran out of time, press space to restart", 30, 200, 3, 3, 0);
}