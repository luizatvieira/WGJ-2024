function play_random_sound( _sound_array )
{
	var _chosen_sfx = _sound_array[random(array_length(_sound_array))];
	audio_play_sound(_chosen_sfx, 0, false);
}

watering_percent_add = 5;

possible_sprites = [water_spr_00, water_spr_01, water_spr_02]
chosen_sprite = possible_sprites[random(array_length(possible_sprites))];


spawn_sfx = [watering_sfx_00, watering_sfx_01, watering_sfx_02];
luna_collision_sfx = [moonfeedback_sfx_00, moonfeedback_sfx_01, moonfeedback_sfx_02];

play_random_sound(spawn_sfx);

//Set up motion
direction = gravity_direction;
direction = direction + random_range(-4, 4);
speed = 5;
image_angle = direction;