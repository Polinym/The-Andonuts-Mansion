event_inherited();
if (talk_update) or (use_update)
{
	scr_any_add(hash);
	met_door = true;
	talk_update = false;
	use_update = false;
}
if (use_item_update)
{
	if (scr_flag(43))
	{
	scr_item_replace(char, item_CanOfTermites, item_EmptyCan);
	instance_destroy();
	}
	else
	{
		scr_any_add(hash);
		met_door = true;	
	}
	use_item_update = false;	
}

if (met_door)
{
	name = "Joey the Door";
	talk_line = [1027, 1027, 1027];
	use_line = [1028, 1028, 1028];
	take_line = [1028, 1028, 1028];
	use_item_line = [1029, 1029, 1029];
	scr_uses_reset();
	scr_use_add(item_CanOfTermites, [1030, 1030, 1030], false);
	met_door = false;
}