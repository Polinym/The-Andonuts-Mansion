function scr_cuts_skip(arg_state)
{
	if (kcp(ord("X")))
	{
		state = arg_state;
		state_update = true;
		scr_msg_clear();
	}
}