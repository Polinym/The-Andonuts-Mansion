function scr_plr_bgm()
{
	var tmp_bgm = char.bgm;

	if (obj_ram.new_bgm != -1)
	{
		tmp_bgm = obj_ram.new_bgm;
		obj_ram.new_bgm = -1;
	}
	
	switch (room)
	{
		case rm_entrance: 
		case rm_balcony: 
			tmp_bgm = bgm_outside; break;
		case rm_courtyard: 
		case rm_graveyard: 
			tmp_bgm = bgm_attic; break;
	}
	l_region = layer_tilemap_get_id("l_region");
	if (l_region != -1)
	{
		var tmp_region = get_tile(l_region, x, y);
		switch (tmp_region)
		{
			case 1:
				if (scr_flag(15)) and not (scr_flag(16))
				{
					tmp_bgm = bgm_porcbanc;
				}
				break;
			case 2: tmp_bgm = bgm_basement; break;
			case 3: tmp_bgm = bgm_attic; break;
			case 16: tmp_bgm = -2; break;
			case 4:
				if not (scr_flag(23))
				{
					tmp_bgm = bgm_attic;
				}
				break;
			case 5: 
				if (not scr_flag(50) )
				{
					tmp_bgm = bgm_roger; 
				}
				break;
			case 6:
				if (scr_flag(27)) {tmp_bgm = snd_mm_sink;}
				break;
			case 7:
				if (not scr_flag(31))
				{
					tmp_bgm = bgm_edison;
				}
				break;
			case 8: tmp_bgm = bgm_lab; break;
			case 9:
				switch (scr_rng(0, 1))
				{	
					case 0: tmp_bgm = bgm_rick1; break;
					case 1: tmp_bgm = bgm_rick2; break;
				}
				break;
			case 10: tmp_bgm = bgm_radiation; break;
			case 11:
				if (not scr_flag(2))
				{
					tmp_bgm = bgm_party;	
				}
				break;
		}
	}
	
	if (state == "cuts") {tmp_bgm = -1;}
	if (scr_flag(54)) {tmp_bgm = -2;}
	if (tmp_bgm == -2)
	{
		scr_bgm_stop();
	}
	else
	{
		if (tmp_bgm > 0) {scr_bgm(tmp_bgm);}
	}
}