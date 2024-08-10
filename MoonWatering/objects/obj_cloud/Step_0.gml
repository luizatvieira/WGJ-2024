/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x = x + move_speed;

if ( x >= room_width + sprite_width)
{
	instance_destroy();
}