event_inherited();
if (talk_update)
{
	if (scr_flag(31))
	{
		type = "cuts";
		ani_state = "walk";
		leaving = true;
		dir = DOWN;
	}
	else
	{
		reface_count = 45;
	}
	talk_update = false;	
}
if (reface_count > 0)
{
	reface_count += -1;
	if (reface_count < 1)
	{
		dir = UP;
	}
}

if (leaving)
{
	switch (tony_state)
	{
		case 0: 
			if (tony_count < tony_wait) {tony_count++; y += 2;}
			else
			{
				dir = LEFT;
				tony_count = 0;
				tony_state++;
			}
			break;
		case 1:
			if (tony_count < tony_wait) {tony_count++; x += -2;}
			else
			{
				tony_count = 0;
				instance_destroy();
			}
			break;
	}
}