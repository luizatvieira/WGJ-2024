// draw moon
draw_sprite_ext( current_sprite, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);

// draw outsite of mask
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);

// draw inside of mask
draw_set_alpha(0.5);
draw_sprite(mn_mask, 0, x, y);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

// draw offset sprite inside mask
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite(mn_mask, 0, x + ((sprite_width/2)*watering_percent/100), y - ((sprite_height/2)*watering_percent/100));

//reset gpu_config
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);