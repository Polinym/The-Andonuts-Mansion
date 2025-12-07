x = view_xview; y = view_yview;
depth = -200;
draw_set_alpha(glow_alpha);
gpu_set_blendmode(bm_add);
draw_sprite(spr_summon_glow, 0, x, y);
gpu_set_blendmode(bm_normal);

draw_set_alpha(cover_alpha);
draw_sprite(spr_summon_cover, 0, x, y);

draw_set_alpha(1);