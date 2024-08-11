function move_moon ( _obj )
{
	if (place_meeting(x, y+2, _obj))
	{
		move_y = 0;
	
		// Moving down slopes
		if (!place_meeting(x+move_x, y+2, _obj) && place_meeting(x+move_x, y+10, _obj))
		{
				move_y = abs(move_x);
				move_x = 0;
		}
	
		var _jump = random(100) > 80;
		if (_jump)
			move_y = -jump_speed;
	}
	else if (move_y < 10) move_y += fall_speed;

	move_and_collide(move_x, move_y, _obj, 4, 0, 0, move_speed, -1);

	if ( x >= room_width + (image_xscale * sprite_width/2) )
	{
		x = 0;
		y = room_height/5;
	}
}

move_x = move_speed;
if ( watering_percent == 100 )
{
	move_moon( obj_ground );
}
else
{
	move_moon(obj_moon_orbit);
}

if ( instance_exists(obj_player) )
{
	var _player_distance = x - obj_player.x;
	if ( _player_distance != 0 )
		image_xscale = x_scale * sign(_player_distance);
}

if ( cooldown <= 0 and watering_percent != 100 )
{
	if ( random(100) > 50 )
	{
		current_sprite = special_animation_sprites[random(array_length(special_animation_sprites))];
	}
	cooldown = special_animation_cooldown;
}

cooldown = cooldown -1;