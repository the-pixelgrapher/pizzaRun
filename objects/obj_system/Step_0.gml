progress_value = clamp((obj_player.x - player_startx) / (player_endx - player_startx), 0, 1);
progress_adj = power(progress_value, progress_exp);

if (progress_value == 1 && !global.win)
{
	scr_message("You Delivered!", 5);
	global.win = true;
}