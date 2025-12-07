event_inherited();
if (use_item_update)
{
	vanish = true;
	scr_any_add(hash);
	icd(x+4, y+4, depth+1, obj_actor_hole);
	use_item_update = false;
}