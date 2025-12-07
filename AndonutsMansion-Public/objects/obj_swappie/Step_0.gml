event_inherited();
if (use_update)
{
	obj_ram.cuts_obj = obj_cuts_swap;
	scr_tp(room, 15, DOWN);
	use_update = false;	
}