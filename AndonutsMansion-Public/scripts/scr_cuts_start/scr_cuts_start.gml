function scr_cuts_start(arg_cuts)
{
	with (obj_ram)
	{
		cuts = true;
		cuts_obj = arg_cuts;
		text_done = false;
		scr_msg_clear();
		scr_open(arg_cuts);
		obj_player.state = "cuts";
	}
}