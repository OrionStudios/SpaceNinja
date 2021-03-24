draw_self();
a++

if (room == 5){
	draw_set_font(fnt_small);
	for (i = 0; i < array_length(intro); i++){
		draw_text_ext_color(x + 80, y + 70 + (40 * i), intro[i], 20, 850, c_black, c_black, c_black, c_black,  a / 300)
	}
	
}else{
	draw_set_font(fnt_main);
	for (i = 0; i < array_length(outro); i++){
		draw_text_ext_color(x + 80, y + 100 + (50 * i), outro[i], 50, 850, c_black, c_black, c_black, c_black,  a / 300);
	}
	
}