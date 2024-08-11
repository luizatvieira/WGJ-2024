play_random_sound(luna_collision_sfx);
obj_luna.watering_percent = obj_luna.watering_percent + watering_percent_add;
part_particles_create(global.ps, x, y, global.pwater, 1);
instance_destroy();