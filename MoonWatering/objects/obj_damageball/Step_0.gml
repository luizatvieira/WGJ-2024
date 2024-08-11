/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_angle += spr_roll;
maxhp -= 0.05;
if (maxhp <= 0){
	instance_destroy();
}

if (y > room_height + 64 ){
	instance_destroy();
}