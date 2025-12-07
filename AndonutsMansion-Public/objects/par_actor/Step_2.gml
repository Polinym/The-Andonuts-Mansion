var tmp_update = false;
if (jump)
{
	if (jump_ini)
	{
		y = start_y;
		jump_spd = -3;
		jump_ini = false;
	}
	y += round(jump_spd);
	jump_spd += jump_grav;
	if (y > start_y)
	{
		y = start_y;
		jump = false;
		jump_ini = true;
	}
}

tmp_update = false;
switch (sub_ani)
{
	case "monkey":
		if (sub_ani_count < sub_ani_wait) {sub_ani_count++;}
		else
		{
			sub_ani_count = 0;
			tmp_update = true;
		}
		switch (sub_ani)
		{
			case "monkey":
				if (tmp_update)
				{
					image_index = not image_index;
				}
				break;
		}
		break;
	case "float":
		if (float_count < float_wait) {float_count++;}
		else
		{
			float_count = 0;	
			switch (float_state)
			{
				case 0: y += 1; break;
				case 1: y += 1; break;
				case 2: y += -1; break;
				case 3: y += -1; break;
			}
			float_state++;
			if (float_state > 3) {float_state = 0;}
			
		}
		break;
	case "2frame": scr_ani_frame(); break;
}