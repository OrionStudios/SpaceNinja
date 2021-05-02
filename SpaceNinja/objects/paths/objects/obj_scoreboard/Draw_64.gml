if(instance_exists(obj_ninja))
{
	//draw healthbar based off players health
	
	//draw_healthbar(8, 8, 256, 32, obj_player.hp, $FFFFFFFF & $FFFFFF, c_red,c_red, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

	for (var i = 0; i < global.hp; i++){

		draw_sprite(spr_ninjaHealth, 0, (40 + 75 * i), 45); //draws number of hearts player has
	}
	for (var i = 0; i < lives; i++){
		//draws number of lives player has
		draw_sprite(spr_ninjaLife, 0, (55 + 75 * i), 125);//draws number of lives ninja has	
	}


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
