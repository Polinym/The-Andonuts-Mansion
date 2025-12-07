event_inherited();
if (look_update)
{
	scr_any_add(hash);
	has_opened = true;
	look_update = false;	
}
if (has_opened)
{
	look_prefix = "in";
	contents = icd(x, y+24, depth-1, obj_actor_courtyardkey);
	look_line = [151, 150, 152];
	image_index = 1;	
	has_opened = false;
}