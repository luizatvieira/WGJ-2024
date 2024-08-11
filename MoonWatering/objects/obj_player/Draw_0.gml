//if ( is_falling )
{
	//sprite = fall_sprite;
}
 if (is_jumping)
{
	sprite = jump_sprite
}
else if ( is_walking )
{
	sprite = walk_sprite;
}
else
{
	sprite = idle_sprite;
}

draw_sprite_ext( sprite, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
