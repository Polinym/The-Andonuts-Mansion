function scr_actor_walk(arg_actor, arg_dir, arg_tiles)
{
	with (arg_actor)
	{
		dir = arg_dir;
		ani_state = "walk";
		next_x = x; next_y = y;
		var dist = (arg_tiles * 16);
		switch (arg_dir)
		{
			case 0: next_y += dist; break;
			case 1: next_x += dist; break;
			case 2: next_y += -dist; break;
			case 3: next_x += -dist; break;
		}
		obj_ram.cuts_actors++;
	}
}