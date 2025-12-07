event_inherited();
name = "Bubble Monkey";
talked_to = scr_flag(4);
gave_bananas = scr_flag(5);
if (scr_pchance(1, 1000)) {name = "Balloon Monkey";}
look_line = [121, 122, 123];
talk_line = [124, 124, 124];
scr_use_add(item_LegendaryBat, [125, 126, 127], false);

scr_give_add(item_LegendaryBat, [129, 129, 129], false);
scr_give_add(item_Apple, [130, 130, 130], false);
scr_give_add(item_Mushroom, [131, 131, 131], false);
scr_give_add(item_CanOfPepsC, [132, 132, 132], false);
scr_give_add(item_Bananas, [133, 133, 133], true);
lip_spr = spr_lips_bubble;
if (scr_flag(10)) {instance_destroy();}