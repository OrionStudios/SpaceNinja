if(room != 4 && room != 6){
	if(instance_exists(obj_ninja))
	{
		//draw healthbar based off players health
	
		//draw_healthbar(8, 8, 256, 32, obj_player.hp, $FFFFFFFF & $FFFFFF, c_red,c_red, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
draw_healthbar(50, 50, 300, 100, global.hp, c_black, c_green, c_green, 0, true, false);
		for (var i = 0; i < global.hp; i++){

			//draw_sprite(spr_ninjaHealth, 0, (40 + 75 * i), 45); //draws number of hearts player has
		}
		for (var i = 0; i < lives; i++){
			//draws number of lives player has
			
			draw_sprite(spr_ninjaLife, 0, (55 + 75 * i), 125);//draws number of lives ninja has	
		}


	}
		if(gameOver){
			draw_text_ext_transformed(960, 300, "Game Over", 30, 200, 3, 3, 0);
			draw_text_ext_transformed(960, 400, "You ran out of lives, press space to return to menu", 30, 200, 3, 3, 0);
		}

	draw_rectangle(30, 790, 130, 950, false);
	draw_rectangle(60, 775 , 100, 800, false); 

	var numOfEnergyBars = ceil(global.energy / 5);
	if (numOfEnergyBars > 0){
	for(i = 0; i < (numOfEnergyBars - 1); i++){
	draw_rectangle_color(40, 920 - (30 * i), 120, 940 - (30 * i), c_green, c_green, c_green, c_green, false);	
	}

	var lastEnergyBar = global.energy % 5;
	if(lastEnergyBar == 0){
		draw_rectangle_color(40, 920 - (30 * (numOfEnergyBars - 1)), 120, 940 - (30 * (numOfEnergyBars - 1)), c_green, c_green, c_green, c_green, false);	
	}else{
		draw_rectangle_color(40, 920 - (30 * (numOfEnergyBars - 1)), 40 + ((lastEnergyBar / 5) * 80), 940 - (30 * (numOfEnergyBars - 1)), c_green, c_green, c_green, c_green, false);	

	}
	draw_rectangle_color(40, 920 - (30 * (numOfEnergyBars - 1)), 40 + ((lastEnergyBar / 5) * 80), 940 - (30 * (numOfEnergyBars - 1)), c_green, c_green, c_green, c_green, false);	
	}


}



if(paused){
	
	if(pauseInd == 0){
		draw_sprite(spr_inGameMenu, 0, 960, 400);	
		draw_rectangle(850, 315, 1060, 385, true);	
		draw_rectangle(850, 390, 1060, 440, true);
		draw_rectangle(850, 440, 1060, 510, true);
		draw_rectangle(850, 510, 1060, 570, true);
	}else if (pauseInd == 1){
		draw_sprite(spr_inGameCheats, 0, 960, 400);	
		draw_rectangle(825, 520, 1035, 580, true);
	}
}