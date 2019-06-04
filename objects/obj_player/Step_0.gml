// Player control script

// Control

scr_controls();

// Ensure walksp is always positive
walksp *= sign(walksp);

// Ensure diagonal movement stays no higher than walksp
if (abs(key_right-key_left) + abs(key_down - key_up) > 1)
{
	walksp_mult = sqrt(0.5);
}
else
{
	walksp_mult = 1;
}

// Horizontal movement calculation
var movex = (key_right - key_left);
hsp = lerp(hsp, movex * walksp * walksp_mult, 0.33);

// Sprite flipping
if (hsp < -walksp * 0.75)
{
	image_xscale = -1;
}
else if (hsp > walksp * 0.75)
{
	image_xscale = 1;
}

// Vertical movement calculation
var movey = (key_down - key_up);
vsp = lerp(vsp, movey * walksp * walksp_mult, 0.33);

//clamp position to room
x = round( clamp(x, 64/2, room_width - (64/2)) );
y = round( clamp(y, 64/2, room_height - (64/2)) );

scr_move(hsp, vsp);


/*
// Squash and stretch
if (key_up && !grounded)
{
	draw_yscale = 1.15;
	draw_xscale = 0.88;
}
draw_xscale = lerp(draw_xscale, 1, .12);
draw_yscale = lerp(draw_yscale, 1, .12);
	
if (place_meeting(x,y+1,obj_solid) && !place_meeting(x,yprevious +1, obj_solid))
{
	draw_yscale = .8;
	draw_xscale = 1.12;
}
*/
