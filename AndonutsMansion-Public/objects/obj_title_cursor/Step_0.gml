scr_ani_frame();
if (kcp(vk_down)) {pos = 1; ani_frame = 0; ani_count = 0;}
else if (kcp(vk_up)) {pos = 0; ani_frame = 0; ani_count = 0;}
else if (kcp(vk_space))
{
	switch (pos)
	{
		case 0: 
			scr_warp2(rm_kids);
			instance_destroy();
			break;
		case 1:
			if (file_exists("cache/tmp.txt"))
			{
				scr_load();
				instance_destroy();
			}
			else
			{
				scr_snd(snd_eb_dodge);
			}
			break;
	}
}
image_index = ani_frame;
y = start_y + (pos*16);