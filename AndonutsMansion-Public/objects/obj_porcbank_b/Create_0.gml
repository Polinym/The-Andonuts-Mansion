event_inherited();
name = "PorcBanc= repo man";
type = "cuts";
look_line = [398, 398, 398];
talk_line = [399, 399, 399];
talk_line = [399, 399, 399];
scr_use_add(item_LegendaryBat, [396, 396, 396], false);
scr_use_add(item_FrenchDictionary, [397, 397, 397], false);
dir = LEFT;
if (not scr_flag(10)) or (scr_flag(15)) {instance_destroy();}
lip_spr = spr_lips_porcbanc;