// Main title
draw_set_color($F5F5F5);
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_title);
draw_set_alpha(1);

draw_text(640, 128, "PIZZA RUN");

draw_set_font(fnt_body);

for (var i = 0; i < 3; i++)
{
	var yy = i * 60;
	
	if (i = 0) {var item = "Start";}
	if (i = 1) {var item = "Credits"}
	if (i = 2) {var item = "Exit"}
	
	if (select = i)
	{
		draw_sprite(spr_menu_select, 0, 460, y + yy);
		draw_set_color($F5F5F5);
		draw_text(room_width/2, y + 29 + yy, item);
	}
	else 
	{
		draw_set_color(c_gray);
		draw_text(room_width/2, y + 29 + yy, item);
	}
}
