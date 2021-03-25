draw_set_font(fnt_main);
draw_set_color(c_black);



draw_self();
draw_text_ext(x, y + 20, string(string_copy(sentence, 1, charIndex)), 20, 950);
draw_set_font(fnt_name);

currentName = string_letters(ds_list_find_value(names, index));
draw_text(x,y - 20, currentName);

switch (currentName){
	

case "Albius":
	sprite = 1;
	break;
case "Zave":

	draw_sprite_ext(spr_walkingDown, 0, x + 35, y - 150, 1.4, 1.4, 0, c_white, 1);
	break;
case "Townsperson":
	if(room == 5){
		sprite = 3;
	}else if (room == 2){
		sprite = 4;
	}else{
		sprite = 5;	
	}
	break;
case "Astra":
	sprite = 2;
	draw_sprite_ext(spr_talkSprites, sprite, x + 35, y - 110, 1.2, 1.2, 0, c_white, 1);
	break;
case "King Augustus":
	sprite = 6;
	break;
}

if (currentName != "Astra" && currentName != "Zave"){
draw_sprite(spr_talkSprites, sprite, x + 35, y - 93);
}