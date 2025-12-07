event_inherited();
if (use_item_update)
{
	if (scr_flag(28))
	{
		scr_item_add(char, item_CanOfHotWater);
		scr_flag_unset(28);
	}
	else if (scr_flag(29))
	{
		scr_item_replace(char, item_ColdSaturn, item_StiffSaturn);
		scr_flag_unset(29);
	}
	use_item_update = false;	
}