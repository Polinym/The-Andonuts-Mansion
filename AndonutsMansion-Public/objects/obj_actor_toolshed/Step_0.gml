event_inherited();
if (look_update)
{
	opened = true;
	scr_any_add(hash);
	look_update = false;
}
if (opened)
{
	image_index = 1;
	icd(x+7, y+30, depth-1, obj_actor_weedkiller);
	opened = false;
}