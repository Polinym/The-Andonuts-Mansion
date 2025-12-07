event_inherited();
name = "Venus";
look_line = [1046, 1047, 1046];
talk_line = [1048, 1048, 1048];
use_line = [1049, 1049, 1049];
scr_use_add(item_LegendaryBat, [1038, 1037, 1039], false);
scr_use_add(item_TeddyBear, [-1, 1036, -1], false);
scr_give_add(item_Bananas, [1040, 1040, 1040], false);
scr_give_add(item_Apple, [1041, 1041, 1041], false);
scr_give_add(item_CanOfWater, [1041, 1041, 1041], false);
scr_give_add(item_Mushroom, [1041, 1041, 1041], false);
dir = DOWN;
lip_spr = spr_lips_venus;
if not (scr_flag(45))
{
	instance_destroy();	
}
if (scr_flag(46))
{
	icd(x, y, depth, obj_venus3);
	instance_destroy();	
}