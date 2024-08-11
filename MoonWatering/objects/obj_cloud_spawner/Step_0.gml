//Watering
if ( spawn_cooldown < 1 )
{
	var _random_spawn_chance = random(100) > 80;
	if ( _random_spawn_chance )
	{
		var _random_spawn_y = random( room_height/2 );
		instance_create_layer( 
			0, 
			_random_spawn_y, 
			cloud_layer, 
			obj_cloud
		);
	}
	spawn_cooldown = start_spawn_cooldown;
}
spawn_cooldown = spawn_cooldown - 1;