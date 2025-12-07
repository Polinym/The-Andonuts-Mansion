//effect_create_above(ef_rain, view_xview, view_yview, 2, c_white);
rain_count = 0; 
if (scr_pchance(2, 5)) {rain_wait = scr_rng(0, 1);}
else {rain_wait = scr_rng(8, 20);}
raindrop_count = 0; raindrop_max = 48;
ini = true;
raindrop = -1;
rain_type = obj_snowflake;