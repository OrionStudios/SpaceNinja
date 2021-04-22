//for (var i = 0; i < instance_number(obj_button); i ++){
//	button[i] = instance_find(obj_button,i);
//	if(button[i].activated = true){
//		draw_sprite_ext(spr_button, 0, x + 100 * i, y - 20, .2, .2, 0, 0, 1);   
		 
//	}else{
//		draw_sprite_ext(spr_button, 0, x, y - 20, .2, .2, 0, c_white, 1);   
//	}
   
//}

if(instance_exists(obj_alien1)){
moreEnemies = true;


}else{
	moreEnemies = false;
	showMoreEnemies = false;
}