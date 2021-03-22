// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_openTextFile(txtFile) 
{
instance_create_layer(200 + camera_get_view_x(view_camera[0]), 600 + camera_get_view_y(view_camera[0]), "Text", obj_effect);
file = file_text_open_read(txtFile);
line = 1;
while (!file_text_eof(file)){

if(line % 2 == 0){
	ds_list_add(obj_effect.sentences, file_text_readln(file));
	obj_effect.sentenceCount ++;
}else{
	ds_list_add(obj_effect.names, file_text_readln(file));
}
line ++;
}
obj_effect.sentence = ds_list_find_value(obj_effect.sentences, 0);
file_text_close(file);
}