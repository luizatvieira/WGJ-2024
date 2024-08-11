// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ParticleLoader(){
	global.ps = part_system_create(); // Setting up the particle system
	
	// Water hitting particle
	
	global.pwater = part_type_create();
	part_type_sprite( global.pwater, pt_watersplash_spr,1,1,0);
	part_type_speed( global.pwater, 0, 1, 0, 0);
	part_type_direction( global.pwater, 0, 360, 4, 0);
	part_type_gravity( global.pwater, 0, 270);
	part_type_orientation( global.pwater, 0, 360, 0, 0, false);
	part_type_life( global.pwater, 18, 18);
	


}