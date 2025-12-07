event_inherited();
name = "PorcBanc= agent";
look_line = [424, 424, 425];
talk_line = [423, 423, 423];
scr_use_add(item_LegendaryBat, [418, 418, 418], false);
scr_use_add(item_TeddyBear, [-1, 419, -1], false);
scr_give_add(item_Apple, [420, 420, 420], false);
scr_give_add(item_Bananas, [420, 420, 420], false);
scr_give_add(item_Mushroom, [421, 421, 421], false);
scr_give_add(item_CanOfPepsC, [420, 420, 420], false);
scr_give_add(item_CrackedPlate, [422, 422, 422], false);
DIR = RIGHT;
if (not scr_flag(15)) or (scr_flag(16)) {instance_destroy();}
lip_spr = -1;