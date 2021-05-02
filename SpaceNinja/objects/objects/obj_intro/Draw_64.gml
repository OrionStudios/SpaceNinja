/// @description Insert description here
// You can write your code in this editor
if(room == 7){
	
	if(screen_index == 0){
		draw_sprite(spr_phase1Pt1, 0, 500, 200);
	}else if(screen_index == 1){
		draw_sprite(spr_phase1Pt2, 0, 500, 200);
	}
}else if (room == 5){
	
	draw_sprite(spr_phase2, 0, 500, 200);
}else if (room == 3){
	draw_sprite(spr_phase3, 0, 500, 200);	
}