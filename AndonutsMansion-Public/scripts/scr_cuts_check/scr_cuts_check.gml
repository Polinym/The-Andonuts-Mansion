function scr_cuts_check(arg_char, arg_actor, arg_item, arg_cmd)
{
	var tmp_cuts = arg_actor.cuts;
	if (arg_cmd == tmp_cuts[0])
	{
		switch (arg_cmd)
		{
			case "look":
			case "talk":
			case "take":
			case "use":
				if (char.index == tmp_cuts[1]) or (char.index == -1)
				{
					scr_cuts_start(tmp_cuts[2]);
					return true;
				}
				else {return false;}
				break;
			case "use_item":
			case "give_item":
				if (arg_item == tmp_cuts[1])
				{
					scr_cuts_start(tmp_cuts[2]);
					return true;
				} else {return false;}
				break;
		}
	} else {return false;}
	return false;
}