if(giveTip){
	draw_set_halign(fa_center);
	switch(tipIndex){
		case 0:
		
			
			//draw_text(0, 0, "You can double jump by pressing the jump key again while you are in the air")
			draw_text_ext_transformed(900, 200, "You can double jump by pressing the jump key again while you are in the air", 20, 300, 3, 3, 0);
			break;
		case 1:
		
			draw_text_ext_transformed_color(900, 200, "Watch your head, spikes will instantly kill you", 20, 300, 3, 3, 0, c_red, c_red, c_red, c_red, 1);
			break;
		case 2:
			draw_text_ext_transformed_color(900, 200, "Grab the box with 'G'", 20, 300, 3, 3, 0, c_white, c_white, c_white, c_white, 1);
			break;
	}
	draw_set_halign(fa_left);
}