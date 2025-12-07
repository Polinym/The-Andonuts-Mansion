event_inherited();
name = "Richard";
look_line = [924, 925, 926];
talk_line = [923, 923, 926];
take_line = [927, 928, 926];
use_line = [929, 930, 926];
scr_use_add(item_LegendaryBat, [931, 932, 931], false);
scr_use_add(item_TeddyBear, [-1, 933, -1], false);

scr_give_add(item_Apple, [935, 934, 935], false);
scr_give_add(item_Bananas, [935, 934, 935], false);
scr_give_add(item_Mushroom, [936, 937, 936], false);
scr_give_add(item_CanOfPepsC, [939, 938, 939], false);
scr_give_add(item_CourtyardKey, [940, 941, 940], false);
dir = RIGHT;
if ( scr_flag(10) )  {instance_destroy();}
if (scr_flag(39))
{
	talk_line = [942, 942, 942];
}
lip_spr = spr_lips_richard;