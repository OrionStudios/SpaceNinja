/// @description Insert description here
// You can write your code in this editor
if(!canTakeDamage){
	shader_set(Shader1);//use of shader
	draw_self();
	shader_reset();
}else{
	
	draw_self();
}