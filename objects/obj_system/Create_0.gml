progress_value = 0;							// Linear player progress value
progress_exp = 0.67;						// Progress curve strength (lower means progress starts fast)
progress_adj = 0;							// Adjusted player progress value
end_buffer = 32;
player_startx = obj_player.x;				// Player starting position
player_endx = obj_endflag.x;				// End position
player_dist_start = point_distance(obj_player.x, obj_player.y, obj_endflag.x, obj_endflag.y) - end_buffer;
player_dist_current = player_dist_start;

global.is_paused = false;			
global.timer_max = 10						// Game timer starting value
global.timer_current = global.timer_max;		// Game timer in seconds
global.win = false;
global.lose = false;
global.game_time = 0;