event_inherited();
if (talk_update)
{
	scr_flag(30);
	met_tony = true;
	talk_update = false;
}

if (met_tony)
{
	talk_line = [720, 720, 720];
	met_tony = false;
}