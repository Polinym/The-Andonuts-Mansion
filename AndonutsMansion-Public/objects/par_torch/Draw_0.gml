draw_self();
gpu_set_blendmode(bm_add);
draw_set_alpha(glow_alpha);
draw_sprite(glow_sprite, 0, x+8, y+8);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);