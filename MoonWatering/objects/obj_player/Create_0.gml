/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_speed = 4;
jump_speed = 20;
fall_speed = 1;

watering_layer = "WateringLayer"
start_watering_cooldown = 10;
watering_cooldown = start_watering_cooldown;

move_x = 0;
move_y = 0;

is_falling = false;
is_walking = false;
is_jumping = false;

idle_sprite = cf_idle_spr;
walk_sprite = cf_walk_spr;
jump_sprite = cf_jump_spr;
fall_sprite = cf_fall_spr;

sprite = idle_sprite;