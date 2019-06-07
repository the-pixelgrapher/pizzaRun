// UI gradients
draw_sprite_ext(spr_ui_grad, 0, 0, 0, 1280, 1, 0, c_white, 0.25);
draw_sprite_ext(spr_ui_grad, 0, 0, 720, 1280, -1, 0, c_white, 0.25);


draw_set_color($F5F5F5);
draw_set_alpha(1);

// Stamina bar bg
draw_rectangle(64, 63, 265, 69, 0);

// Progress bar bg
draw_rectangle(127, 656-1, 1280-127, 656+4+1, 0);

// Timer bar bg
draw_rectangle(539, 72, 741, 78, 0);


draw_set_font(fnt_body);
draw_set_halign(0);
draw_set_valign(1);
// Progress bar text
draw_text(128, 632, "Progress to Destination")

draw_set_halign(2);
// Progress bar value
draw_text(1280-127, 632, round(progress_value * 100));

draw_set_color($339933);
// Stamina bar
draw_rectangle(65, 64, 200 * clamp((obj_player.sp_cur/obj_player.sp_max), 0, 1) + 64, 68, 0);

draw_set_color($583AE9);
// Timer bar
draw_rectangle(540, 73, (200 * (global.timer_cur/global.timer_max)) + 540, 77, 0);

draw_set_color($859D26);
//Progress bar
draw_rectangle(128, 656, round(1024 * progress_adj + 128), 656+4, 0);