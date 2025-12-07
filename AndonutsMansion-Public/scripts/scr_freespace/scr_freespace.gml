function scr_freespace(arg_x, arg_y)
{
	if (obj_ram.wtw) {return true;}
	else
	{
		return not 
		(
		place_meeting(arg_x, arg_y, obj_blocker)
		or place_meeting(arg_x, arg_y, par_actor)
		or ((l_col != -1) and (place_meeting(arg_x, arg_y, l_col)))
		)
	}
}