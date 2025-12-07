event_inherited();
if (use_item_update)
{
	scr_any_add(hash);
	icd(x+8, y+8, depth+1, obj_saturn_cold);
	scr_item_replace(char, item_CanOfHotWater, item_EmptyCan);
	instance_destroy();	
}