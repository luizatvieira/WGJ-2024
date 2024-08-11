if ( is_falling )
{
	sprite = fall_sprite;
}
else if ( is_walking )
{
	sprite = walk_sprite;
}
else
{
	sprite = idle_sprite;
}
if (is_jumping)
{
	sprite = jump_sprite
}

draw_sprite_ext( sprite, -1, x, y, image_xscale, image_yscale, 0, sprite_color, 1);
