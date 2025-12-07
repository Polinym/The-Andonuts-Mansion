event_inherited();
if (talk_update)
{
	if (not scr_flag(35))
	{
		if not (scr_flag(24))
		{
			scr_flag_set(24);
			met_me = true;
		}
	}
	talk_update = false;
}

if (give_update) or (use_item_update)
{
	scr_snd(snd_eb_item);
	scr_item_add(char, item_Scalpel);
	scr_flag_set(35);
	got_scalpel = true;
	give_update = false;	
	use_item_update = false;
}

if (met_me)
{
	met_me = false;
	talk_line = [775, 775, 775];	
}

if (got_scalpel)
{
	talk_line = [778, 778, 778];
	use_item_line = [779, 779, 779];
	scr_uses_reset();
	
	scr_use_add(item_LegendaryBat, [762, 762, 762], false);
	scr_use_add(item_CanOfHotWater, [762, 762, 762], false);
	scr_use_add(item_Camshaft, [763, 763, 763], false);

	scr_give_add(item_LegendaryBat, [764, 764, 764], false);
	scr_give_add(item_CanOfPepsC, [767, 767, 767], false);
	scr_give_add(item_Camshaft, [768, 768, 768], false);
	scr_give_add(item_VacuumCleaner, [769, 769, 769], false);
	scr_give_add(item_UnassumingBone, [770, 770, 770], false);
	scr_give_add(item_Chicken, [771, 771, 771], false);
	scr_give_add(item_ApplianceManual, [772, 772, 772], false);
	scr_give_add(item_FrenchDictionary, [773, 773, 773], false);
	scr_give_add(item_FrenchFlashlight, [773, 773, 773], false);
	
	scr_give_add(item_Scalpel, [780, 780, 780], false);
	
	got_scalpel = false;
}