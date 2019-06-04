if (abs(speed) > 0.1){
	speed -= 0.1;
}
else{
	speed = 0;
}

scr_move(hsp);

if (fadeout){
	palpha -= 0.01;
	if (palpha <= 0){
	instance_destroy();
	}
}