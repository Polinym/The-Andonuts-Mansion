event_inherited();
name = "Laverne";
lip_spr = spr_lips_laverne;
look_line = [569, 570, 571];
talk_line = [572, 572, 572];
met_me = scr_flag(24);
got_scalpel = scr_flag(35);
use_item_line = [765, 765, 765];
scr_use_add(item_LegendaryBat, [762, 762, 762], false);
scr_use_add(item_CanOfHotWater, [762, 762, 762], false);
scr_use_add(item_Camshaft, [763, 763, 763], false);

scr_give_add(item_LegendaryBat, [764, 764, 764], false);
scr_give_add(item_Apple, [766, 766, 766], false);
scr_give_add(item_Bananas, [766, 766, 766], false);
scr_give_add(item_CanOfPepsC, [767, 767, 767], false);
scr_give_add(item_Camshaft, [768, 768, 768], false);
scr_give_add(item_VacuumCleaner, [769, 769, 769], false);
scr_give_add(item_UnassumingBone, [770, 770, 770], false);
scr_give_add(item_Chicken, [771, 771, 771], false);
scr_give_add(item_ApplianceManual, [772, 772, 772], false);
scr_give_add(item_FrenchDictionary, [773, 773, 773], false);
scr_give_add(item_FrenchFlashlight, [773, 773, 773], false);
scr_give_add(item_RedDress, [886, 886, 886], false);

scr_give_add(item_ColdSaturn, [774, 774, 774], true);
scr_give_add(item_StiffSaturn, [774, 774, 774], true);
scr_give_add(item_StiffMouse, [774, 774, 774], true);

scr_use_add(item_ColdSaturn, [774, 774, 774], true);
scr_use_add(item_StiffSaturn, [774, 774, 774], true);
scr_use_add(item_StiffMouse, [774, 774, 774], true);


if ( not scr_flag(10) ) {instance_destroy();}

mask_index = sprite_index;