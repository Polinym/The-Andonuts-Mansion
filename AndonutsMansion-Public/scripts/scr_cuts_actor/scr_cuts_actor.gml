function scr_cuts_actor(arg_slot, arg_actor)
{
	with (obj_ram)
	{
		switch (arg_slot)
		{
			case "A": actor_a = arg_actor; break;
			case "B": actor_b = arg_actor; break;
			case "C": actor_c = arg_actor; break;
		}
	}
}