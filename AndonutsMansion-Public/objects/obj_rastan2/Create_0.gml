event_inherited();
name = "Rastan";
look_line = [794, 794, 794];
talk_line = [795, 795, 795];
use_item_line = [510, 510, 510];
if (not scr_flag(21)) {instance_destroy();}
lip_spr = spr_lips_rastan;

if (scr_flag(40))
{
	talk_line = [1066, 1066, 1066];
}

got_plan = scr_flag(41);
rastan_update = false;
if (scr_flag(53)) {instance_destroy();}