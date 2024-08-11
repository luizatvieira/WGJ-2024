// Movement
move_speed = 4;
jump_speed = 20;
fall_speed = 1;

move_x = 0;
move_y = 0;

// Watering
watering_layer = "WateringLayer"
start_watering_cooldown = 15;
watering_cooldown = start_watering_cooldown;

// Animation
is_falling = false;
is_walking = false;
is_jumping = false;

idle_sprite = cf_idle_spr;
walk_sprite = cf_walk_spr;
jump_sprite = cf_jump_spr;
fall_sprite = cf_fall_spr;

sprite = idle_sprite;
sprite_color = c_white;

// Sound Effects
walking_sfx = [stepping_sfx_00, stepping_sfx_01, stepping_sfx_02];
