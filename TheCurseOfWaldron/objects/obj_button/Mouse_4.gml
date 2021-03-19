obj_effect.index ++;
obj_effect.charIndex = 0;
obj_effect.sentence = ds_list_find_value(obj_effect.sentences, obj_effect.index);
var interval = random_range(0.04, 0.06);
obj_effect.alarm[0] = room_speed * interval;
alarm[0] = 20;