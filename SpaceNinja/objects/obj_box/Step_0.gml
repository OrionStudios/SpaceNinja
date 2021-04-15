grv = 10
if (place_meeting(x, y + grv, obj_platform)){//if platform is 10 pixels below
		while(!place_meeting(x, y + 1, obj_platform)){//wjile not 1 pixel above platfomr
			y += 1;//move down 1 pixel
		}
		grv = 0;//move down 4 pixels
}

y += grv;//move down regular if not touching platform



 if (place_meeting(x + 1, y, obj_ninja)){//if ninja is 1 pixel to the right
	 show_debug_message("Hello1");
		if(!place_meeting(x - 1, y, obj_platform)){
			show_debug_message("Hello2");//if platfrom isnt on left
		x -= 4;//move 4 pixels to the left
		}
		
	}else if (place_meeting(x - 1, y, obj_ninja)){//if ninja is 1 pixel to the left
		show_debug_message("Hello3");
		if(!place_meeting(x + 4, y, obj_platform)){//if platfrom isnt on right
		x += 4;//move 4 pixels to the right
		show_debug_message("Hello4");
	}
	}
