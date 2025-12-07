if (dust_count < 48)
{
	if (pause_count < pause_wait) {pause_count++;}
	else
	{
		var tmp_dust = icd(scr_rng(x_min, x_max), scr_rng(y_min, y_max), -6, obj_ginerva_dust);
		tmp_dust.spawner = id;
		dust_count++;
		pause_wait = scr_rng(1, 3);
		pause_count = 0;
	}
}