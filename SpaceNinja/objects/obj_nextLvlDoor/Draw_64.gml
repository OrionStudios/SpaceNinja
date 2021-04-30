if(showMoreEnemies){
draw_text_ext_transformed_color(500, 150, "You must kill all enemies in the room", 20, 300, 3, 3, 0, c_red, c_red, c_red, c_red, 1);
}

if(opening){
	if(room == 7){
		draw_sprite(spr_phase1Comp, 0, 500, 200);
		obj_timer.alarm[0] ++;
	}else if(room == 1){
		draw_sprite(spr_phase2Comp, 0, 500, 200);
	}
}