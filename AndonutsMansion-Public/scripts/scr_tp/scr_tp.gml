function scr_tp(arg_dest, arg_p, arg_dir)
{
	with (obj_ram)
	{
		goto_pt = arg_p;
		goto_dir = arg_dir;
		warped = true;
		scr_warp(arg_dest);
	}
}