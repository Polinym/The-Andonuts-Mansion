event_inherited();
name = "Camshaft";
look_line = [1093, 1093, 1093];
talk_line[0] = 1094;
use_line = [1095, 1095, 1095];
item = item_Camshaft;
if not (scr_flag(52))
{
	instance_destroy();	
}