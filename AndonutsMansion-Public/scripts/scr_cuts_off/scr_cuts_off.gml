function scr_cuts_off(arg_cuts)
{
	with (obj_ram)
	{
		cuts = false;
		cuts_obj = -1;
		obj_player.state = "free";
	}
}