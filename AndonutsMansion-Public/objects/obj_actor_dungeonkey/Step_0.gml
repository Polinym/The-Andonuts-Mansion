event_inherited();
if (use_item_update)
{
	use_item_update = false;
	pushed_key = true;
}

if (pushed_key)
{
	icd(x-16, y+40, depth, obj_actor_dungeonkey2);
	scr_any_add(hash);
	instance_destroy();
}