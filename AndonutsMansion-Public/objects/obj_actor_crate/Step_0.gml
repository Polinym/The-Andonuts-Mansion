event_inherited();
if (use_item_update)
{
	scr_item_replace(char, item_CanOfTermites, item_EmptyCan);
	icd(x, y, depth, obj_actor_dress);
	scr_any_add(hash);
	instance_destroy();
}