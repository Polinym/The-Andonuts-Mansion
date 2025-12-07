function scr_actor_meeting(arg_actor, arg_x, arg_y, arg_actor2)
{
	with (arg_actor)
	{
		return place_meeting(x+arg_x, y+arg_y, arg_actor2);	
	}
}