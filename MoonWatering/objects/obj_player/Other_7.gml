function play_random_step_sound()
{
	var _chosen_sfx = walking_sfx[random(array_length(walking_sfx))];
	audio_play_sound(_chosen_sfx, 0, false);
}

function play_jump_sound()
{
	audio_play_sound(jumping_sfx_00, 0, false);
}

if ( sprite == jump_sprite)
{
	play_jump_sound();
}
else if ( sprite == walk_sprite)
{
	play_random_step_sound();
}