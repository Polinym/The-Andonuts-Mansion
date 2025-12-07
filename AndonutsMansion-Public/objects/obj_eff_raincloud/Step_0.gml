if (drop_count < drop_limit)
{
    if (ani_count < ani_wait) {ani_count += 1;}
    else
    {
        ani_count = 0;
        instance_create(x + scr_rng(0, 512), y + scr_rng(0, 3), obj_eff_raindrop);
        ani_wait = scr_rng(0, 2);
    }
}

