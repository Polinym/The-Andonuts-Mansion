event_inherited();
name = "Comrade Roger";
look_line = [577, 578, 579];
talk_line = [581, 582, 583];
use_item_line = [1081, 1081, 1081];
dir = UP;
has_met = scr_flag(25);
lip_spr = spr_lips_roger;
scr_give_add(item_MasterCriminalWorm, [1082, 1082, 1082], true);
scr_use_add(item_MasterCriminalWorm, [1082, 1082, 1082], true);
if (scr_flag(50)) {instance_destroy();}
is_leaving = false;