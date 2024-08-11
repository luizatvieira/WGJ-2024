move_x = move_speed;

if (place_meeting(x, y+2, obj_moon_orbit))
{
	move_y = 0;
	
	// Moving down slopes
	if (!place_meeting(x+move_x, y+2, obj_moon_orbit) && place_meeting(x+move_x, y+10, obj_moon_orbit))
	{
			move_y = abs(move_x);
			move_x = 0;
	}
	
	var _jump = random(100) > 80;
	if (_jump)
		move_y = -jump_speed;
}
else if (move_y < 10) move_y += fall_speed;

move_and_collide(move_x, move_y, obj_moon_orbit, 4, 0, 0, move_speed, -1);

if ( x >= room_width + sprite_width/2)
{
	x = 0;
	y = room_height/5;
}

var _player_distance = x - obj_player.x;
if ( _player_distance != 0 )
	image_xscale = x_scale * sign(_player_distance);

if ( cooldown <= 0 )
{
	if ( random(100) > 50 )
	{
		current_sprite = special_animation_sprites[random(array_length(special_animation_sprites))];
	}
	cooldown = special_animation_cooldown;
}

cooldown = cooldown -1;