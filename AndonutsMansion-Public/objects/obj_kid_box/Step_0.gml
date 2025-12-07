if (on) {ani_frame = 2; ani_count = 0; ani_wait = 16;}
else
{
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		ani_count = 0;
		if (ani_frame > 0)
		{
			ani_wait = scr_rng(30, 95);
			ani_frame = 0;
		}
		else
		{
			ani_wait = 15;
			ani_frame = 1;	
		}
	}
}