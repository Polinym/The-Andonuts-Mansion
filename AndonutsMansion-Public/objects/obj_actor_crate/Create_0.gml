event_inherited();
if (scr_any_check(hash)) {instance_destroy();}
else
{
	name = "Dusty wood crate";
	look_prefix = "inside";
	look_line = [107, 107, 107];
	talk_line[0] = 108;
	take_line = [109, 109, 109];
	use_line = [110, 110, 110];
	scr_use_add(item_LegendaryBat, [111, 112, 112], false);
	scr_use_add(item_Scalpel, [869, 869, 869], false);
	scr_use_add(item_Camshaft, [870, 870, 870], false);
	scr_use_add(item_VacuumCleaner, [872, 872, 872], false);
	scr_use_add(item_CanOfTermites, [873, 873, 873], false);
	dark_spr = spr_crate_dark;
}