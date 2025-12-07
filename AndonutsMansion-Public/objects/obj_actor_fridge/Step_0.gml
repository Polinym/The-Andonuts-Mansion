event_inherited();
if (look_update)
{
	scr_any_add(hash);
	been_opened = true;
	look_update = false;
}

if (been_opened)
{
	contents = icd(x+8, y+13, depth+1, obj_ram.fridge_actor);
	image_index = 1;
	look_line = [86, 86, 86];
	talk_line[0] = 77;
	use_line = [87, 87, 87];
	use_item_line = [88, 88, 88];
	been_opened = false;
}