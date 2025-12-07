scr_cuts_skip(8);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", ness);
			scr_cuts_actor("B", paula);
			scr_cuts_actor("C", jeff);
			scr_actor_face(ness, UP);
			scr_actor_face(paula, RIGHT);
			scr_actor_face(jeff, LEFT);
			scr_msg(line[84]);
			wait_type = "reading";
			break;
		case 1:
			scr_msg(line[85]);
			wait_type = "reading";
			break;
		case 2:
			scr_msg(line[86]);
			wait_type = "reading";
			break;
		case 3:
			scr_msg(line[87]);
			wait_type = "reading";
			break;
		case 4:
			scr_msg(line[88]);
			wait_type = "reading";
			break;
		case 5:
			scr_msg(line[89]);
			wait_type = "reading";
			break;
		case 6:
			scr_msg(line[90]);
			wait_type = "reading";
			break;
		case 7:
			scr_msg(line[91]);
			wait_type = "reading";
			break;
		case 8:
			scr_flag_set(52);
			with (obj_ram)
			{
				be_mutant = true;
				scr_snd(snd_eb_item);
				scr_item_add(char, item_PurpleSlimyMeteor);
				cuts_obj = obj_cuts_mutant;
				with (ness)
				{
					spr = spr_nesaulef;
					dark_spr = spr_nesaulef_dark;
					name = "Nesaulef";
				}
			}
			scr_tp(rm_lab, 4, DOWN);
			instance_destroy();
			break;
	}
}