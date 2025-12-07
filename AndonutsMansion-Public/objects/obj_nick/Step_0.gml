event_inherited();
if (talk_update)
{
	if (scr_flag(23))
	{
		scr_item_add(char, item_SecretNote);
		scr_snd(snd_eb_item);
		gave_note = true;
		scr_flag_set(42);
	}
	else
	{
		met_me = true;
		scr_flag_set(41);
	}
	talk_update = false;	
}
if (met_me)
{
	talk_line = [1020, 1021, 1020];
	met_me = false;
}

if (made_progress)
{
	talk_line = [1003, 1004, 1005];
	made_progress = false;
}

if (gave_note)
{
	talk_line = [1011, 1004, 1010];
	gave_note = false;	
}