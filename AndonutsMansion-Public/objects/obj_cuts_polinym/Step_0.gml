scr_cuts_skip(1);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_msg(line[95]);
			wait_type = "reading";
			break;
		case 1:
			obj_polinym.talked_to = true;
			scr_cuts_off();
			instance_destroy();
			break;
	}
}