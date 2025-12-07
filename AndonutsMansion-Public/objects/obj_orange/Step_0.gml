event_inherited();
if (use_item_update)
{
	scr_snd(snd_monshou_step);
	scr_item_replace(char, item_MopHead, item_OrangeMopHead);
	use_item_update = false;
}