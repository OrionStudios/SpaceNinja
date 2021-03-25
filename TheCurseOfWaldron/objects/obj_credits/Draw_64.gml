if (room != 2 && room != 5 && global.pause){
		for(i = 0; i < array_length(cheats); i++){
	
			draw_set_font(fnt_name);	
		
		draw_text(x - 450, y - 300 + (50 * i), cheats[i]);
	}
}
