
draw_set_color(c_white);
if (room == 2){

	draw_set_halign(fa_center);
	for(i = 0; i < array_length(contributors); i++){
		if (i % 2 == 1){
			draw_set_font(fnt_small);	
		}else{
			draw_set_font(fnt_name);	
		}
		draw_text(x + 80, y + 70 + (50 * i), contributors[i]);
	}
	if(!instance_exists(obj_background) && !showingNext){
		showingNext = true;
		alarm[0] = 100;
	}
	
}else if (room == 5 && instance_exists(obj_menuBtn)){
	draw_set_halign(fa_left);
	if(instance_nearest(x, y, obj_menuBtn).btnIndex == 2){
	for(i = 0; i < array_length(cheats); i++){
	
			draw_set_font(fnt_name);	
		
		draw_text(x - 450, y - 300 + (50 * i), cheats[i]);
	}
	}
}