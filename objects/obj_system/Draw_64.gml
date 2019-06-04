draw_set_color($F5F5F5);
draw_set_alpha(1);
draw_rectangle(127, 656-1, 1280-127, 656+4+1, 0);

draw_set_font(fnt_body);
draw_set_halign(0);
draw_set_valign(1);
draw_text(128, 632, "Progress to Destination")

draw_set_color($583AE9);
draw_rectangle(128, 656, round(1024 * progress_adj + 128), 656+4, 0);