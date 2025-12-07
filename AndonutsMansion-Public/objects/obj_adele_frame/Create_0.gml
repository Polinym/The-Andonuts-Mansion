event_inherited();
if (scr_flag(53)) {instance_destroy();}
name = "Lady painting";
look_line = [1163, 1164, 1165];
if (scr_flag(49))
{
	look_line = [1176, 1176, 1176];
}

if (scr_flag(48))
{
	look_line[1] = 1175;
}
else if (scr_flag(47))
{
	look_line[1] = 1174;
}
else if (scr_flag(46))
{
	look_line[1] = 1173;
}
talk_line = [1166, -1, -1];
take_line = [1169, 1168, 1167];
scr_use_add(item_LegendaryBat, [1170, 1171, 1167], false);
scr_use_add(item_VacuumCleaner, [1172, -1, -1], false);
scr_use_add(item_TeddyBear, [-1, 1177, -1], false);