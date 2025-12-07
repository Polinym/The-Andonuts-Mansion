event_inherited();
if (talk_update)
{
	met = true;
	scr_flag_set(13);
	talk_update = false;
}
if (met)
{
	talk_line = [348, 348, 348];
	met = false;
}