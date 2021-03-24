i ++;
image_index = i;

switch(i){
	case 1:
		newX = x + 360;
		newY = y + 300;
		break;
	case 2:
		newX = x + 675;
		newY = y + 200;
		break;
	case 3:
		newX = x + 400;
		newY = y + 50;
		break;
	case 4:
		newX = x + 125;
		newY = y;
		break;
}
instance_create_layer(newX, newY, "Button", obj_nextTown);



