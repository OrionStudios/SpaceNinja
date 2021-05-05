/// @description Insert description here
// You can write your code in this editor

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, spr_background);
layer_background_alpha(back_id, 0);
if(instance_exists(obj_button)){
	var button = instance_nearest(x, y, obj_button);
	if(button.activated && !showing){
		showing = true;
		var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, spr_background);

layer_background_alpha(back_id, 1);
		instance_destroy();
	}
}