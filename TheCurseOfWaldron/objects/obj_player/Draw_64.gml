	if(room == 5){
	for (var i = 0; i < health; i++){

		draw_sprite(spr_health, 0, (40 + 75 * i), 45); //draws number of hearts player has
	}
	for (var i = 0; i < lives; i++){
		//draws number of lives player has
		draw_sprite(spr_life, 0, (55 + 75 * i), 125);	
	}
		
		
	draw_healthbar(8, 200, 256, 224, xp, $FFFFFFFF & $FFFFFF, c_blue,c_blue, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
	draw_set_color(c_white);
	draw_set_font(fnt_main);
	draw_text(8, 230, obj_scoreboard.xpLabel);

	
	}