
switch(tipIndex){
	case 0:
		if(distance_to_object(obj_ninja) < 500 && !giveTip){
			giveTip = true;
			alarm[0] = 50;
		}
		break;
	case 1:
		if(distance_to_object(obj_ninja) < 100 && !giveTip){
			giveTip = true;
			alarm[0] = 50;
		}
		break;
	case 2:
		if(distance_to_object(obj_ninja) < 500 && !giveTip){
			giveTip = true;
			alarm[0] = 50;
		}
		break;
	
}

