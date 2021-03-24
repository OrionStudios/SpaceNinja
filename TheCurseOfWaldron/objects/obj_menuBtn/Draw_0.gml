draw_self();
draw_set_color(c_white);
draw_set_font(fnt_small);
draw_set_halign(fa_left);
if (btnIndex == 0){
	draw_text(x + 40, y + 20, "Start Game");
}else if(btnIndex == 1){
	draw_text(x + 40, y + 20, "Menu");
	
}else if(btnIndex == 2){
	draw_text(x + 40, y + 20, "Back");
	
}