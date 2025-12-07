event_inherited();
if (talk_update)
{
	talk_line = [1119, 1119, 1119];
	talk_update = false;	
}


if (use_item_update) or (give_item_update)
{
	scr_any_add(hash);
	use_item_update = false;
	give_item_update = false;
	instance_destroy();
}