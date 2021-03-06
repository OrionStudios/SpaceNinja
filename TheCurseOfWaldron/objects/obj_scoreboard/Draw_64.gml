var doesExist = false;

doesExist = instance_exists(obj_player);

if(doesExist)
{
	draw_healthbar(8, 8, 256, 32, obj_player.hp, $FFFFFFFF & $FFFFFF, c_red,c_red, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

}