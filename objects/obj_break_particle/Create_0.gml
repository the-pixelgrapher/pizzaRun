player_direction = point_direction(obj_player.x, obj_player.y, x, y)
direction = random_range(player_direction-120,player_direction+120);
speed = random_range(3,6);
alarm[0] = random_range(45,90);
motion_set(direction, speed);

image_speed = 0;

hsp = 0;
vsp = 0;
collisons = true;
grounded = false;
palpha = 1;
fadeout = false;