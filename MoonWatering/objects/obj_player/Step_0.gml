function win_game()
{
	is_falling = false;
	is_jumping = true;
	is_walking = false;
	
	move_towards_point(obj_luna.x, obj_luna.y, move_speed);
	
	if (obj_luna.x - x != 0) image_xscale = sign(move_x);
}

function check_movement_collisions ( _collided_objs )
{
	move_y = 0;
	is_falling = false;
	
	// Moving down slopes
	if ( 
		!place_meeting(x+move_x, y+move_y, _collided_objs) && 
		place_meeting(x+move_x, y+fall_speed, _collided_objs)
	)
	{
		move_y = abs(move_x);
		//move_x = 0;
	}
	
	if (is_jumping)
		move_y = -jump_speed;
}

function check_player_fall( _collided_objs )
{
	if ( place_meeting( x+move_x, y+move_y, _collided_objs ) )
	{
		check_movement_collisions(_collided_objs);
	}
	else if (move_y < 10)
	{
		move_y += fall_speed;
	}
	else
	{
		move_y += fall_speed;
		is_falling = true;
	}
}

function move_player()
{
	var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));

	is_jumping = keyboard_check(vk_up) or keyboard_check(ord("W"));

	move_x = _right - _left;
	move_x *= move_speed;

	is_walking = _right or _left;

	check_player_fall([obj_ground, obj_cloud]);
	
	if(place_meeting( x+move_x, y+move_y, obj_invisible_wall) )
	{
		move_x = 0;
	}

	move_and_collide(move_x, move_y, obj_ground, 4, 0, 0, move_speed, -1);
	if (move_x != 0) image_xscale = sign(move_x);
}

function water()
{
	//Watering 
	// Hi! Added relative speed and direction to the water 
	if ( watering_cooldown < 1 )
	{
		with (
		instance_create_layer( 
			x + (sprite_width/2), 
			y + (sprite_height/2) - 25, 
			watering_layer,
			obj_water_drop
		)){
			vspeed = - irandom(8); // Adding jumpiness and randomness 
			hspeed = other.move_speed*other.image_xscale;  // Lol, added direction speed
		}
		watering_cooldown = start_watering_cooldown;
	}
	watering_cooldown = watering_cooldown - 1;
}

//Actual step code
if (obj_luna.watering_percent == 100)
{
	win_game();
}
else 
{
	move_player();
	water();
}