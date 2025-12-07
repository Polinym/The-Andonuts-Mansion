scr_cuts_skip(1);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", venus);
			scr_msg(line[65]);
			wait_type = "reading";
			break;
		case 1:
			scr_tp(rm_f1, 17, DOWN);
			obj_ram.show_player_again = true;
			instance_destroy();
			break;
	}
}