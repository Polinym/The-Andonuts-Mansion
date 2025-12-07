event_inherited();
depth = -1;
if (take_update)
{
	scr_any_add(hash);
	pulled_rug = true;
	take_update = false;
}
if (pulled_rug)
{
	icd(x+4, y+4, depth-1, obj_actor_carrotkey);
	instance_destroy();	
}
