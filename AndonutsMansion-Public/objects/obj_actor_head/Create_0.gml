event_inherited();
name = "Preserved head";
look_line = [987, 988, 988];
talk_line = [989, -1, -1];
take_line = [991, 990, 990];
scr_use_add(item_TeddyBear, [-1, 982, -1], false);
scr_give_add(item_Bananas, [992, 992, 992], false);
scr_give_add(item_Apple, [992, 992, 992], false);
scr_give_add(item_Bananas, [992, 992, 992], false);
scr_give_add(item_Mushroom, [992, 992, 992], false);
scr_give_add(item_CanOfPepsC, [992, 992, 992], false);

if (scr_flag(53))
{
	look_line = [1114, 1114, 1114];
	talk_line = [1113, 1113, 1113];	
	take_line = [1115, 1115, 1115];	
	use_line =  [1116, 1116, 1116];
	scr_uses_reset();
	scr_use_add(item_LegendaryBat, [1117, 1117, 1117], false);
}

jan_helped = scr_flag(56);
jan_ini = true;