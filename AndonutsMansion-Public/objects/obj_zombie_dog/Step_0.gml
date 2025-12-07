if ( not scr_flag(26) )
{
	event_inherited();
	if (caught)
	{
		scr_msg(obj_script.line[caught_line[char.index]]);
		caught = false;
	}
	else if (caught_update)
	{
		obj_ram.warp_line = warp_line[char.index];
		scr_tp(rm_kitchen, 4, DOWN);
		caught_update = false;
	}
}
else
{
	scr_depth_rel();
	if (bone_count < bone_wait) {bone_count++;}
	else
	{
		bone_frame = not bone_frame;
		bone_count = 0;
	}
	image_index = 6 + bone_frame;
	var targ_x = my_target.x + 16;
	var targ_y = my_target.y - 8;
	if point_distance(x, y, targ_x, targ_y) > 3
	{
		move_towards_point(targ_x, targ_y, 1);
	}
}