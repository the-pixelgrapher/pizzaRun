if (draw_alpha > 0)
{
	draw_set_alpha(draw_alpha * 0.25);
	draw_set_color(c_black);
	draw_rectangle(0, 0, 1280, 720, 0);
	
	draw_set_alpha(draw_alpha);
	//draw_sprite(spr_level_select_outline, 0, 640, y + 223)
	
	draw_set_font(fnt_body);
	draw_set_halign(1);
	draw_set_valign(0);
	draw_set_color(c_white);

	for (var i = 0; i < 3; i++)
	{
		var yy = i * 60;
	
		if (i = 0) {var item = "Continue";}
		if (i = 1) {var item = "Credits"}
		if (i = 2) {var item = "Main menu"}
	
		if (select = i)
		{
			draw_sprite(spr_menu_select, 0, 460, y + yy + 296);
			draw_set_color(c_white);
			draw_text(1280/2, y + 16 + yy + 295, item);
		}
		else 
		{
			draw_set_color(c_white);
			draw_text(1280/2, y + 16 + yy + 295, item);
		}
	}
	
}

draw_set_alpha(1);
