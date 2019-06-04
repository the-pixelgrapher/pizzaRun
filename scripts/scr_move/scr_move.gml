// basic player movement


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




if (global.is_paused || global.is_dead)
{
	hsp = 0;
	vsp = 0;
}