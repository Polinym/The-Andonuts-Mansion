event_inherited();
if (should_check)
{
	if (not can_see)
	{
		if (scr_flag(12)) {can_see = true; should_check = false;}
	}
}
if (can_see)
{
	look_line = [277, 277, 277];
	talk_line = [314, -1, -1];
	take_line = [313, 449, 449];	
	use_item_line = [-1, -1, -1];
	use_line = [313, 315, 315];	
	scr_uses_reset();
	if (scr_item_has(obj_ram.char, item_FunnyBentTube))
	{
		scr_use_add(item_ApplianceManual, [439, 439, 439], true);
	}
	else
	{
		scr_use_add(item_ApplianceManual, [438, 438, 438], false);
	}
	scr_use_add(item_SuckyUppyPart, [440, 440, 440], true);
	scr_use_add(item_FunnyBentTube, [440, 440, 440], true);
	scr_use_add(item_LegendaryBat, [316, -1, -1], false);
	scr_use_add(item_CanOfTermites, [839, 839, 839], false);
	can_see = false;
}

if (use_item_update)
{
	if (scr_flag(19))
	{
		scr_uses_reset();
		scr_use_add(item_LegendaryBat, [441, 441, 441], false);
		fixed = true;
		
	}
	else
	{
		scr_item_replace(obj_ram.char, item_FunnyBentTube, item_SuckyUppyPart);
	}
	use_item_update = false;
}

if (take_update)
{
	//fixed = true;
	//take_update = false;	
}

if (fixed)
{
	icd(x, y, depth, obj_actor_vacuum2);
	instance_destroy();
}