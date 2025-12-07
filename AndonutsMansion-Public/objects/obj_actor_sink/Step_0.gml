event_inherited();
if (use_update)
{
	if (is_on)
	{
		scr_bgm(char.bgm);
		scr_flag_unset(27);
		scr_uses_reset();
		scr_use_add(item_CanOfTermites, [827, 827, 827], false);
		scr_use_add(item_CanOfWater, [828, 828, 828], false);
		scr_use_add(item_CanOfHotWater, [828, 828, 828], false);
		is_on = false;
		look_line = [89, 89, 89];
		talk_line[0] = 90;
		use_line = [91, 92, 92];
		use_item_line = [-1, -1, -1];
		image_index = 0;
		use_update = false;
	}
	else
	{
		scr_flag_set(27);
		scr_bgm(snd_mm_sink);
		turned_on = true;
		use_update = false;
	}
}

if (turned_on)
{
	image_index = 1;
	look_line = [93, 94, 95];
	talk_line[0] = 96;
	use_line = [98, 99, 99];
	use_item_line = [97, 97, 97];
	scr_uses_reset();
	scr_use_add(item_CanOfPepsC, [615, 615, 615], false);
	scr_use_add(item_TeddyBear, [-1, 616, -1], false);
	scr_use_add(item_CrackedPlate, [617, 617, 617], false);
	scr_use_add(item_FunnyBentTube, [618, 618, 618], false);
	scr_use_add(item_SuckyUppyPart, [618, 618, 618], false);
	scr_use_add(item_EmptyCan, [620, 621, 622], false);
	scr_use_add(item_CanOfWater, [627, 627, 627], false);
	turned_on = false;
	is_on = true;
}

if (use_item_update)
{
	if (scr_flag(27))
	{
		scr_item_replace(char, item_EmptyCan, item_CanOfWater);
	}
	else
	{
		if (scr_flag(38))
		{
			scr_item_replace(char, item_CanOfTermites, item_EmptyCan);
		}
		else
		{
			scr_item_replace(char, item_CanOfWater, item_EmptyCan);
			scr_item_replace(char, item_CanOfHotWater, item_EmptyCan);
		}
	}
	use_item_update = false;
}