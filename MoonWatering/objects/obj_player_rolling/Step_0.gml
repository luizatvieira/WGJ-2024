/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_angle -= rolling_speed;
timer -= 1;

if (timer <= 0){
	instance_activate_object(obj_player);
	obj_player.x = x ;
	obj_player.y = y ;
	instance_destroy();
}
