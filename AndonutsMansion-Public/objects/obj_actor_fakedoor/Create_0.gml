event_inherited();
name = "Door";
look_line = [29, 29, 29];
talk_line[0] = 1023;
take_line = [1025, 1025, 1025];
use_line = [1024, 1024, 1024];
scr_use_add(item_LegendaryBat, [1026, 1026, 1026], false);
scr_use_add(item_CanOfTermites, [1030, 1030, 1030], false);

met_door = scr_any_check(hash);
if (scr_flag(43)) {instance_destroy();}

if (scr_flag(53))
{
	talk_line = [1154, 1154, 1154];	
}