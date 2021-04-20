if(giveTip){
	switch(tipIndex){
		case 0:
		
			
			//draw_text(0, 0, "You can double jump by pressing the jump key again while you are in the air")
			draw_text_ext_transformed(500, 100, "You can double jump by pressing the jump key again while you are in the air", 20, 300, 3, 3, 0);
			break;
		case 1:
		
			draw_text_ext_transformed_color(500, 100, "Watch your head, spikes will instantly kill you", 20, 300, 3, 3, 0, c_red, c_red, c_red, c_red, 1);
			break;
	}
}