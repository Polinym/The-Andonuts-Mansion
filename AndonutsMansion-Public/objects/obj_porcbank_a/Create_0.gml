event_inherited();
name = "PorcBanc= agent";
type = "cuts";
look_line = [392, 393, 394];
talk_line = [395, -1, -1];
scr_use_add(item_LegendaryBat, [396, 396, 396], false);
scr_use_add(item_FrenchDictionary, [397, 397, 397], false);
DIR = RIGHT;
if (not scr_flag(10)) or (scr_flag(15)) {instance_destroy();}
lip_spr = spr_lips_porcbanc;