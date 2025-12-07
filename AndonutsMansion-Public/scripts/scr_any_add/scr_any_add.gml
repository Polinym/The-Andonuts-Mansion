function scr_any_add(arg_hash)
{
	with (obj_ram)
	{
		any[any_count] = arg_hash;
		any_count++;
	}
}