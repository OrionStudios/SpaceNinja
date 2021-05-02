if(global.energy <= 20){
global.energy += 5;	
}else{
global.energy = 25;	
}
audio_play_sound(snd_addCharge, 4, false);
instance_destroy();