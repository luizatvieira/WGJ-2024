//Movement
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));

var _jump = keyboard_check(vk_up) or keyboard_check(ord("W"));

move_x = _right - _left;
move_x *= move_speed;

if (place_meeting(x, y+2, obj_ground))
{
	move_y = 0;
	
	// Moving down slopes
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x+move_x, y+10, obj_ground))
	{
			move_y = abs(move_x);
			move_x = 0;
	}
	
	if (_jump)
		move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, obj_ground, 4, 0, 0, move_speed, -1);

if (move_x != 0) image_xscale = sign(move_x);

//Watering
if ( watering_cooldown < 1 )
{
	instance_create_layer( x, y - (sprite_height/2), watering_layer, obj_water_drop);
	watering_cooldown = start_watering_cooldown;
}
watering_cooldown = watering_cooldown - 1;
