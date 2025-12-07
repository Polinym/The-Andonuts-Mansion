function scr_use_add(arg_item, arg_line, arg_destroy)
{
	var tmp_i = use_count;
	for (var i = 0; i < use_count; i++)
	{
		if (uses[i] == arg_item) {tmp_i = i; break;}
	}
	uses[tmp_i] = [arg_item, arg_line, arg_destroy];
	use_count++;
}