draw_sprite_ext(sprite_index, image_index, x , y, draw_xscale*image_xscale, draw_yscale, image_angle, image_blend, image_alpha);

if (interact_in_range && target_block != 0)
{
	draw_sprite(spr_block_target, 0, target_block.x, target_block.y);
	draw_sprite(spr_key_e, 0, x, y-48);
}