scr_cuts_skip(1);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_msg(line[92]);
			wait_type = "reading";
			break;
		case 1:
			scr_music(bgm_nuclear);
			with (obj_ram)
			{
				minutes = 3;
				seconds = 43;
			}
			scr_flag_set(54);
			scr_cuts_off();
			instance_destroy();
			break;
	}
}