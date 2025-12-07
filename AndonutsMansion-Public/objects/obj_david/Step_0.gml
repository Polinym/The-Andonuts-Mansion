event_inherited();
if (tmp_count < tmp_wait) {tmp_count++;}
else
{
	tmp_count = 0;
	var tmp_flashlight = obj_ram.flashlight;
	if (obj_ram.fow)
	{
		look_line = [288, 288, 288];
		talk_line = [289, 289, 290];
		take_line = [291, 291, 291];
		use_line = [292, 292, 292];
		uses = [];
		use_count = 0;
	}
	else
	{
		look_line = [294, 295, 296];
		talk_line = [307, 307, 308];
		if (saved) {talk_line = [302, 302, 303];}
		take_line = [-1, -1, -1];
		use_line = [292, 292, 292];
		uses = [];
		use_count = 0;
		scr_use_add(item_LegendaryBat, [297, 304, 304], false);
		scr_use_add(item_TeddyBear, [-1, 298, -1], false);
		scr_give_add(item_Apple, [299, 299, 299], false);
		scr_give_add(item_Bananas, [299, 299, 299], false);
		scr_give_add(item_Apple, [299, 299, 299], false);
		scr_give_add(item_CarrotKey, [299, 299, 299], false);
		scr_give_add(item_CanOfPepsC, [300, 300, 300], false);
		scr_give_add(item_Mushroom, [301, 301, 301], false);
	}
}
if (talk_update)
{
	if not (saved) 
	{
		if (not obj_ram.fow) {talk_line = [302, 302, 303];}
		scr_any_add(hash);
		saved = true;
	}
}