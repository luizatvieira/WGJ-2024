move_speed = irandom_range(2,5);
possible_sprites = [platform_cloud_spr_00, platform_cloud_spr_01, platform_cloud_spr_02, platform_cloud_spr_03]

chosen_sprite = possible_sprites[random(array_length(possible_sprites))];

image_speed = .5;