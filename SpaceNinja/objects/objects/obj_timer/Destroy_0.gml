/// @description Insert description here
// You can write your code in this editor
	if(room == 7 || room == 5 || room == 3){
			room_restart();
		}else if (room == 1){
			room_goto(5)
		}else if (room == 2 || room == 0){
			room_goto(3);	
		}