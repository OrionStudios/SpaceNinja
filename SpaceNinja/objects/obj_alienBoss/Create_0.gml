image_speed = 0.1;
instance_create_layer(x, y, "GunLayer", obj_alienBlaster);
hp = 100;
vsp = 0;
bossPaused = false;
grv = 2.5;
path_start(path_boss, 8, path_action_reverse, false);
speedUp = 0;