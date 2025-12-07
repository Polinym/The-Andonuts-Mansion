with (obj_ram.char)
{
	if (luigi)
	{
		luigi = false;
		switch (index)
		{
			case 0: bgm = bgm_ness; break;	
			case 1: bgm = bgm_paula; break;	
			case 2: bgm = bgm_jeff; break;	
		}
		spr = base_spr;
	}
}