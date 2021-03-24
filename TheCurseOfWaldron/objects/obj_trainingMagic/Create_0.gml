vspeed = 0;
hspeed = 0;

y -= 30;
image_speed = 0.7;
image_blend = make_colour_hsv(360, 0, 360);
image_angle = point_direction(x, y, mouse_x, mouse_y);
direction = point_direction(x, y, mouse_x, mouse_y);

alarm[0] = 40;

audio_play_sound(ShootingLightMagic, 1, false);