direction = random_range(45,135);
speed = random_range(3,8);
alarm[0] = random_range(30,60);
motion_set(direction, speed);

image_speed = 0;

hsp = 0;
vsp = 0;
collisons = true;
grounded = false;
palpha = 1;
fadeout = false;