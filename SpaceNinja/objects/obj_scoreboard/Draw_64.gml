if(instance_exists(obj_ninja))
{
	//draw healthbar based off players health
	
	//draw_healthbar(8, 8, 256, 32, obj_player.hp, $FFFFFFFF & $FFFFFF, c_red,c_red, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

	for (var i = 0; i < global.hp; i++){

		draw_sprite(spr_ninjaLife, 0, (40 + 75 * i), 45); //draws number of hearts player has
	}
	for (var i = 0; i < lives; i++){
		//draws number of lives player has
		draw_sprite(spr_ninjaLife, 0, (55 + 75 * i), 125);	
	}

}