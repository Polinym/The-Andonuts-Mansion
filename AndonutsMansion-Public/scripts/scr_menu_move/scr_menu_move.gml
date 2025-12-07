function scr_menu_move(arg_menu, arg_dir, arg_dist, arg_speed)
{
	with (arg_menu)
	{
		move_count = 0;
		move_dir = arg_dir;
		move_dist = arg_dist;
		move_speed = arg_speed;
		state = 10;
	}
}