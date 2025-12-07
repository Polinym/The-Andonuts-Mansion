event_inherited();
name = "Rastan";
met = scr_flag(13);
look_line = [343, 342, 342];
take_line = [344, -1, -1];
talk_line = [347, 347, 347];
scr_use_add(item_LegendaryBat, [345, 345, 345], false);
scr_give_add(item_Apple, [346, 346, 346], false);
scr_give_add(item_Mushroom, [346, 346, 346], false);
scr_give_add(item_CanOfPepsC, [346, 346, 346], false);
scr_give_add(item_Bananas, [346, 346, 346], false);
use_item_line = [510, 510, 510];
if (scr_flag(21)) {instance_destroy();}
lip_spr = spr_lips_rastan;