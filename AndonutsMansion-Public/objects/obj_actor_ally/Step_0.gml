event_inherited();
if (my_ini)
{
	switch (index)
	{
		case 0:
		case 2:
			scr_use_add(item_LegendaryBat, [54, 54, 54], false);
			scr_use_add(item_GaiaBeam, 54, false);
			break;
		case 1:
			scr_use_add(item_LegendaryBat, [55, 55, 55], false);
			scr_use_add(item_GaiaBeam, [55, 55, 55], false);
			break;
	}
	switch (char.index)
	{
		case 0: talk_line = [785, 786, 787]; break;
		case 1: talk_line = [788, 789, 790]; break;
		case 2: talk_line = [791, 792, 793]; break;
	}
	my_ini = false;
}