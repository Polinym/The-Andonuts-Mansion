event_inherited();
if (not scr_flag(32)) or (scr_flag(31))
{
	instance_destroy();
}
else
{
	name = "Mysterious stranger";
	look_line = [721, 721, 722];
	talk_line = [751, 751, 726];
	dir = UP;

	scr_use_add(item_LegendaryBat, [724, 724, 724], false);
	scr_use_add(item_TeddyBear, [-1, 723, -1], false);
	scr_use_add(item_Scalpel, [724, 708 ,708], false);
	mask_index = spr_ness;
	reface_count = 0;
}
tony_state = 0;
leaving = false;
tony_count = 0; tony_wait = 3;