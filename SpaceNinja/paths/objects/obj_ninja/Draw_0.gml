/// @description Insert description here
// You can write your code in this editor
if(!canTakeDamage){
	shader_set(Shader1);
	draw_self();
	shader_reset();
}else{
	
draw_self();
}