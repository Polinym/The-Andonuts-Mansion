event_inherited();
if (use_item_update)
{
	scr_snd(snd_eb_item);
	scr_item_replace(char, item_EmptyCan, item_CanOfTermites);
	use_item_update = false;	
}