event_inherited();
name = "Venus";
look_line = [1031, 1032, 1033];
talk_line = [1034, 1034, 1034];
use_line = [1035, 1035, 1035];
scr_use_add(item_LegendaryBat, [1038, 1037, 1039], false);
scr_use_add(item_TeddyBear, [-1, 1036, -1], false);
scr_give_add(item_Bananas, [1040, 1040, 1040], false);
scr_give_add(item_Apple, [1041, 1041, 1041], false);
scr_give_add(item_CanOfWater, [1041, 1041, 1041], false);
scr_give_add(item_Mushroom, [1041, 1041, 1041], false);
dir = RIGHT;
lip_spr = spr_lips_venus;

if (scr_flag(44))
{
	scr_give_add(item_SecretNote, [1043, 1043, 1043], false);
}
else
{
	scr_give_add(item_SecretNote, [1042, 1042, 1042], false);
}
if (scr_flag(45)) {instance_destroy();}