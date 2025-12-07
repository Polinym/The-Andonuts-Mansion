event_inherited();
if (caught)
{
	scr_msg(obj_script.line[caught_line[char.index]]);
	caught = false;
}
else if (caught_update)
{
	obj_ram.warp_line = warp_line[char.index];
	scr_flag_set(10);
	obj_ram.no_new_kid = false;
	scr_tp(rm_basement, 13, DOWN);
	caught_update = false;
}