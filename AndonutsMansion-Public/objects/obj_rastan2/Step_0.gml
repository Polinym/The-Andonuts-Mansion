event_inherited();
if (talk_update)
{
	got_plan = true;
	talk_update = false;
}

if (got_plan) or (rastan_update)
{
	talk_line = [1067, 1068, 1067];
	if (scr_flag(47))
	{
		talk_line = [1067, 1069, 1067];
		if (scr_flag(48))
		{
			talk_line = [1067, 1070, 1067];
		}
	}
	got_plan = false;
}