event_inherited();
name = "Birthday cake";
look_line = [64, 65, 66];
talk_line[0] = 101;
talk_line[1] = 67;
take_line = [69, 68, 70];
use_line = [71, 71, 71];
scr_use_add(item_LegendaryBat, [72, 72, 72], false);
scr_use_add(item_CrackedPlate, [73, 73, 73], false);
scr_use_add(item_CanOfTermites, [826, 826, 826], false);

if (scr_flag(15))
{
	name = "Half-eaten cake";
	use_prefix = "in";
	sprite_index = spr_cake2;
	look_line = [401, 402, 403];
	talk_line = [404, -1, -1];
	take_line = [405, 405, 405];
	use_line  = [406, 406, 406];
	scr_uses_reset();
	scr_use_add(item_Apple, [407, 407, 407], false);
	scr_use_add(item_Bananas, [407, 407, 407], false);
	scr_use_add(item_CanOfPepsC, [408, 408, 414], false);
	scr_use_add(item_CarrotKey, [409, 409, 409], false);
	scr_use_add(item_Weedkiller, [410, 410, 410], false);
	scr_use_add(item_CrackedPlate, [411, 411, 411], false);
	scr_use_add(item_Mushroom, [-1, -1, -1], true);
	if not (scr_flag(16))
	{
		scr_cuts_set("use_item", item_Mushroom, obj_cuts_mushroom);
	}
}