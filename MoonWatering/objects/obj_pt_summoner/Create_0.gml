/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (!audio_is_playing(ost_ost)){
	audio_play_sound(ost_ost,1,1); //ost, loops
}
script_execute(ParticleLoader); //just loads pts into the system



