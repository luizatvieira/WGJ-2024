/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_speed = 4;
jump_speed = 2;
fall_speed = .1;

image_speed = .8;

x_scale = image_xscale;

move_x = 0;
move_y = 0;

watering_percent = 0;

special_animation_cooldown = 100;
cooldown = special_animation_cooldown;

special_animation_sprites = [mn_kissing_spr, mn_looking_spr, mn_winking_spr];
normal_animation_sprite = mn_idle_spr;
win_sprite = mncf_together_spr;
current_sprite = normal_animation_sprite;