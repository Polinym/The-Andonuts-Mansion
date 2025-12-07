event_inherited();
if (talk_update)
{
	scr_flag_set(25);
	has_met = true;
	talk_update = false;	
}

if (has_met)
{
	talk_line = [584, 584, 584];
	has_met = false;
}

if (use_item_update) or (give_update)
{
	scr_flag_set(50);
	dir = LEFT;
	vanish = true;
	use_item_update = false;
	give_update = false;
}

if (is_leaving)
{
	x += -2;	
}