//Movement
function win_game()
{
	move_towards_point(obj_luna.x, obj_luna.y, move_speed);
}

function move_player()
{
	var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));

	is_jumping = keyboard_check(vk_up) or keyboard_check(ord("W"));

	move_x = _right - _left;
	move_x *= move_speed;

	is_walking = _right or _left;

	if (place_meeting(x+move_x, y, obj_invisible_wall))
	{
		move_x = 0;
	}

	if (place_meeting(x, y+move_y, obj_ground) || place_meeting(x, y+move_y, obj_cloud))
	{
		move_y = 0;
		is_falling = false;
	
		// Moving down slopes
		if (!place_meeting(x+move_x, y+move_y, obj_ground) && place_meeting(x+move_x, y+10, obj_ground))
		{
			move_y = abs(move_x);
			move_x = 0;
		}
	
		if (is_jumping)
			move_y = -jump_speed;
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

	move_and_collide(move_x, move_y, obj_ground, 4, 0, 0, move_speed, -1);
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

if (obj_luna.watering_percent == 100)
{
	win_game();
}
else 
{
	move_player();
	water();
}
if (move_x != 0) image_xscale = sign(move_x);


