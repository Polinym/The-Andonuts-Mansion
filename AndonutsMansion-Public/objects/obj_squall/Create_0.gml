event_inherited();
name = "Aloof teenager";
look_line = [669, 669, 669];
talk_line = [670, 670, 670];
take_line = [671, 671, 671];
use_line = [672, 672, 672];
use_item_line = [673, 673, 673];
dir = UP;
scr_use_add(item_LegendaryBat, [674, 674, 674], false);
scr_use_add(item_StiffSaturn, [675, 675, 675], false);
scr_use_add(item_ColdSaturn, [676, 676, 676], false);
scr_use_add(item_Scalpel, [677, 677, 677], false);

scr_give_add(item_Camshaft, [678, 678, 678], false);
scr_give_add(item_TeddyBear, [849, 849, 849], false);
scr_give_add(item_GaiaBeam, [850, 850, 850], false);
scr_give_add(item_Bananas, [851, 851, 851], false);
scr_give_add(item_Apple, [850, 850, 850], false);
scr_give_add(item_CanOfPepsC, [850, 850, 850], false);
scr_give_add(item_Mushroom, [852, 852, 852], false);
scr_give_add(item_CrackedPlate, [850, 850, 850], false);
scr_give_add(item_CanOfWater, [854, 854, 854], false);
scr_give_add(item_CanOfHotWater, [855, 855, 855], false);
scr_give_add(item_CanOfTermites, [856, 856, 856], false);
scr_give_add(item_CourtyardKey, [857, 857, 857], false);
scr_give_add(item_CourtyardKey, [858, 858, 858], false);
scr_give_add(item_Flashlight, [859, 859, 859], false);
scr_give_add(item_Weedkiller, [860, 860, 860], false);
scr_give_add(item_FrenchFlashlight, [861, 861, 861], false);
scr_give_add(item_FunnyBentTube, [862, 862, 862], false);
scr_give_add(item_VacuumCleaner, [863, 863, 863], false);
scr_give_add(item_Scalpel, [864, 864, 864], false);
scr_give_add(item_UnassumingBone, [865, 865, 865], false);
scr_give_add(item_StiffSaturn, [866, 866, 866], false);
scr_give_add(item_ColdSaturn, [866, 866, 866], false);
scr_give_add(item_StiffMouse, [866, 866, 866], false);
scr_give_add(item_ApplianceManual, [867, 867, 867], false);
scr_give_add(item_FrenchDictionary, [868, 868, 868], false);
scr_give_add(item_FrenchDictionary, [868, 868, 868], false);
if ( not scr_flag(10) ) {instance_destroy();}

lip_spr = spr_lips_squall;

if (scr_flag(53)) {instance_destroy();}