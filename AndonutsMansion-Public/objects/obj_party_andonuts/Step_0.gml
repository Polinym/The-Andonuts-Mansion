event_inherited();
if (talk_update)
{
	talk_line = [-1, -1, 28];
	talk_update = false;	
}
else if (obj_ram.flag_update)
{
	obj_ram.flag_update = false;
	if (scr_flag(3))
	{
		puzzled_update = true;
	}
}

if (puzzled_update)
{
	sprite_index = spr_andonuts_puzzled;
	lip_spr = -1;
	scr_cuts_set("talk", 2, obj_cuts_attack);
	puzzled_update = false;	
}