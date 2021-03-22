
draw_set_color(c_aqua);
draw_healthbar(x - 10, y + 75, x + 30, y + 80, (alarm_get(0) / shotCooldown) * 100 , $FFFFFFFF & $FFFFFF, c_blue,c_blue, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

//draw_rectangle(x - 30, y + 40, x + 10, y + 45, true);
draw_self();