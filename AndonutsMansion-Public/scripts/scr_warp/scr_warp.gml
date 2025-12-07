function scr_warp(arg_dest)
{
	with (obj_ram)
	{
		dest = arg_dest;
		last_room = room;
		if (ie(obj_player))
		{
			last_x = obj_player.x;
			last_y = obj_player.y;
		}
		room_name = "";
		move_done = false;
		target_inst = -1;
		flashlight = false;
		icd(view_xview, view_yview, -999, obj_warp);
	}
}