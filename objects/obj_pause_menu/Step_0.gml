if (global.is_paused)
{
	//scr_message("Game is paused.", 0.1);
	
	y = lerp(y, 0, 0.15);
	draw_alpha = lerp(draw_alpha, 1, 0.25);
	
	scr_controls();

	if (controls_screen)
	{
		index_key += 1/60;
	}
	else
	{
		select -= key_up_p;
		select += key_down_p;
		if select > 2 {select = 0;}
		if select < 0 {select = 2;}
	
		if (key_up_p || key_down_p)
		{
			//scr_audio("tap");
		}
	}
	
	if (key_act_p)
	{
		//scr_audio("select");
	
		if (select == 0)
		{
			global.is_paused = false;
		
		}
	
		if (select == 1)
		{
			room_goto(rm_credits);
		}
	
		if (select == 2)
		{
			room_goto(rm_title);
		}
	}
}
else
{
	y = lerp(y, -64, 0.15);
	draw_alpha = lerp(draw_alpha, 0, 0.25);
}


if (keyboard_check(vk_escape))
{
	controls_screen = 0;
}

