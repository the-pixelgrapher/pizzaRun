// basic player movement
var hsp = argument[0],
	vsp = argument[1];


// Freeze movement on death or pause
if (global.is_paused || global.is_dead)
{
	hsp = 0;
	vsp = 0;
}

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_solid))
{
	while(!place_meeting(x + sign(hsp), y, obj_solid))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_solid))
{
	while(!place_meeting(x, y + sign(vsp), obj_solid))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
