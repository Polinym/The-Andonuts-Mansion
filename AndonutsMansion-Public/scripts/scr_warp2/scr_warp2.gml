function scr_warp2(arg_dest)
{
	with (obj_ram)
	{
		dest = arg_dest;
		room_name = "";
		move_done = false;
		target_inst = -1;
		icd(view_xview, view_yview, -999, obj_warp);
	}
}