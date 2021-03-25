image_speed = 0.3;
image_blend = make_colour_hsv(360, 0, 360 - (hp * 150));
hit = false;
moving = false;
running = false;
canShoot = false;
path_start(movementPath, 1.5, path_action_reverse, false);