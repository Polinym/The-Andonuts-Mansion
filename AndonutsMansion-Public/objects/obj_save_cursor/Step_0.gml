if (not done)
{
	if (kc(vk_down)) {y = clamp(y+spd, 8, 248);}
	else if (kc(vk_up)) {y = clamp(y-spd, 8, 248);}

	if (kc(vk_right)) {x = clamp(x+spd, 0, 248);}
	else if (kc(vk_left)) {x = clamp(x-spd, 0, 248);}

	if (kcp(vk_space))
	{
		if (ie(obj_save_btn))
		{
			if (place_meeting(x, y, obj_save_btn))
			{
				var success = true;
				var tmp_btn = instance_place(x, y, obj_save_btn);
				switch (tmp_btn.index)
				{
					case 0:
						with (obj_ram)
						{
							fow = last_fow;
							respawn = true;
							scr_warp(last_room);
						}
						break;
					case 1:
						scr_save();
						with (obj_ram)
						{
							fow = last_fow;
							respawn = true;
							scr_warp(last_room);
						}
						break;
					case 2:
						if (file_exists("cache/tmp.txt"))
						{
							scr_load();
						} else {success = false; scr_snd(snd_eb_dodge);}
						break;
				}
				if (success)
				{
					scr_snd(snd_mm_pick);
					done = true;
				}
			}
		}
	}
	else if (kcp(vk_shift))
	{
		if (not ie(obj_warp))
		{
			fow = obj_ram.last_fow;
			obj_ram.respawn = true;
			scr_warp(obj_ram.last_room);
			done = true;
		}
	}
}
