scr_cuts_skip(1);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_bgm(bgm_party);
			scr_cuts_actor("A", andonuts);
			scr_msg(line[8]);
			wait_type = "reading";
			break;
		case 1:
			obj_player.dir = DOWN;
			scr_cuts_off();
			instance_destroy();
			break;
	}
}