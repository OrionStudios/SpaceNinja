draw_set_halign(fa_center);
draw_rectangle(100, 50, 1700, 900, false);
draw_set_font(Font1);
draw_rectangle_color(600, 700, 1200, 800, c_green, c_green, c_green, c_green, false);

if(room == 2){
	draw_text_ext_transformed_color(900, 400, "Defeat all aliens and get to exit before the timer runs out", 20, 300, 2, 2, 0, c_green, c_green, c_green, c_green, 1);
draw_text_color(220, 425, "Jump", c_black, c_black, c_black, c_black, 1);
draw_text_color(380, 425, "Jump", c_black, c_black, c_black, c_black, 1);
draw_text_color(380, 550, "Crouch", c_black, c_black, c_black, c_black, 1);
draw_text_color(220, 550, "Crouch", c_black, c_black, c_black, c_black, 1);
draw_sprite(spr_movementKeys, 0, 300, 500);
draw_text_color(300, 600, "Use to move around", c_black, c_black, c_black, c_black, 1);
draw_sprite(spr_spaceKey, 0, 1500, 400);
draw_text_color(1500, 450, "Shoot", c_black, c_black, c_black, c_black, 1);
draw_sprite(spr_gKey, 0, 1500, 600);
draw_text_color(1500, 650, "Grab", c_black, c_black, c_black, c_black, 1);
}else if (room == 1){
	draw_text_ext_transformed_color(900, 400, "The aliens cut the power, defeat the aliens and get to the next room before the oxygen runs out", 20, 300, 2, 2, 0, c_green, c_green, c_green, c_green, 1);
}else if (room == 0){
		draw_text_ext_transformed_color(900, 400, "Find and press the button to turn the power back on", 20, 300, 2, 2, 0, c_green, c_green, c_green, c_green, 1);

}
draw_text_ext_transformed_color(900, 715, "Press Enter to Begin", 20, 300, 3, 3, 0, c_black, c_black, c_black, c_black, 1);
draw_text_ext_transformed_color(900, 200, "Mission:", 20, 300, 3, 3, 0, c_green, c_green, c_green, c_green, 1);


draw_set_halign(fa_left);
