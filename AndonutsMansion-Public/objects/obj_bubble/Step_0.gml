event_inherited();
if (talk_update)
{
	if (not scr_flag(4))
	{
		talked_to = true;
		scr_flag_set(4);
	}
	talk_update = false;	
}

if (give_update)
{
	gave_bananas = true;
	give_update = false;
}

if (talked_to)
{
	talk_line = [128, 128, 128];
	scr_give_add(item_LegendaryBat, [129, 129, 129], false);
	talked_to = false;
}

if (gave_bananas)
{
	talk_line = [134, 134, 134];
	gives = [];
	give_count = 0;
	gave_bananas = false;
}

if (ani_update)
{
	switch (sub_ani)
	{
		case "":
			jump = true;
			sub_ani = "monkey";
			sub_ani_count = 0;
			sub_ani_wait = 7;
			image_index = 0;
			sprite_index = spr_ani_bubble;
			break;
		case "monkey":
			sub_ani = "";
			sprite_index = spr_bubble;
			break;
	}
	ani_update = false;	
}