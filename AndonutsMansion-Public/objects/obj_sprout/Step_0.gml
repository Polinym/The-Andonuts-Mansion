event_inherited();
if (use_item_update)
{
	if (not watered)
	{
		scr_any_add(hash);
		name = "Happy sprout";
		watered = true;	
	}
	scr_item_replace(char, item_CanOfWater, item_EmptyCan);
	use_item_update = false;	
}