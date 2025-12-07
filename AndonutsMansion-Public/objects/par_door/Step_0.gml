event_inherited();
if (door_ini)
{
	if (key != -1)
	{
		locked = not scr_any_check(hash);
		if (locked)
		{
			var line = [162, 162, 162];
			if (key_line[0] != -1)
			{
				line = key_line;
			}
			scr_use_add(key, line, true);
			scr_use_add(item_CanOfTermites, [824, 824, 824], false);
		}
	}
	door_ini = false;
}

if (use_item_update)
{
	scr_uses_reset();
	scr_any_add(hash);
	locked = false;
	key = -1;
	use_item_update = false;	
}