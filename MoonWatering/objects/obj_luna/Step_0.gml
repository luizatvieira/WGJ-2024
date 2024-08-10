move_x = move_speed;

if (place_meeting(x, y+2, obj_ground))
{
	move_y = 0;
	
	// Moving down slopes
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x+move_x, y+10, obj_moon_orbit))
	{
			move_y = abs(move_x);
			move_x = 0;
	}
	
	var _jump = random(1000) > 800;
	if (_jump)
		move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, obj_moon_orbit, 4, 0, 0, move_speed, -1);






