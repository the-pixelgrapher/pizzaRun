progress_value = clamp((obj_player.x - player_startx) / (player_endx), 0, 1);
progress_adj = power(progress_value, progress_exp);