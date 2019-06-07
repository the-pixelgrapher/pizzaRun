global.game_time += 1/room_speed;

player_dist_cur = point_distance(obj_player.x, obj_player.y, obj_endflag.x, obj_endflag.y) - end_buffer;

if (!global.lose && !global.win)
{
	progress_value = clamp(1 - ((player_dist_cur) / (player_dist_start)), 0, 1);
}
progress_adj = power(progress_value, progress_exp);

if (progress_value == 1 && !global.win && !global.lose)
{
	scr_message("You Delivered!", 5);
	global.win = true;
}


// Game Timer
if (!global.win && global.timer_cur > 0 && !global.win && !global.is_paused)
{
	global.timer_cur -= 1/room_speed;
}

if (global.timer_cur <=0 && !global.lose)
{
	scr_message("You failed to deliver on-time!", 5);
	global.lose = true;
}