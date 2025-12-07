event_inherited();
if (scr_any_check(hash)) {instance_destroy();}
else
{
	name = "Evil eye ghost";
	look_line = [465, 465, 465];
	talk_line = [464, 464, 464];
	take_line = [467, 468, 468];
	scr_use_add(item_LegendaryBat, [470, 471, 472], false);
	scr_use_add(item_Flashlight, [475, 475, 475], false);
	scr_use_add(item_VacuumCleaner, [481, 481, 481], false);

	scr_give_add(item_Apple, [473, 473, 473], false);
	scr_give_add(item_Bananas, [473, 473, 473], false);
	scr_give_add(item_Mushroom, [473, 473, 473], false);
	scr_give_add(item_CanOfPepsC, [474, 474, 474], false);
	dir = LEFT;
	mask_index = sprite_index;
	stun_count = 0;
	lip_spr = -1;
}