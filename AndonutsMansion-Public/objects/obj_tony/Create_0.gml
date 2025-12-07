event_inherited();
if (scr_flag(32))
{
	instance_destroy();
}
else
{
	name = "Mysterious stranger";
	look_line = [703, 703, 704];
	talk_line = [705, 705, 705];
	take_line = [706, 706, 706];
	met_tony = scr_flag(30);
	dir = UP;

	scr_use_add(item_LegendaryBat, [707, 708, 709], false);
	scr_use_add(item_TeddyBear, [-1, 710, -1], false);
	scr_give_add(item_Bananas, [711, 711, 711], false);
	scr_give_add(item_Apple, [711, 711, 711], false);

	scr_use_add(item_CanOfHotWater, [712, 712 ,712], false);
	scr_give_add(item_CanOfWater, [713, 713 ,713], false);

	scr_give_add(item_Scalpel, [714, 708 ,709], false);
	scr_give_add(item_StiffSaturn, [715, -1 ,-1], false);

	scr_give_add(item_Chicken, [0, 0, 0], true);
	scr_cuts_set("give_item", item_Chicken, obj_cuts_tony);
	mask_index = sprite_index;
}