function scr_hash_check(arg_hash, arg_list, arg_limit)
{
	var i2;
	var tmp_entry;
	var succeed;
	for (var i = 0; i < arg_limit; i++)
	{
		tmp_entry = arg_list[i];
		succeed = true;
		for (i2 = 0; i2 < 3; i2++)
		{
			if (arg_hash[i2] != tmp_entry[i2])
			{
				succeed = false;
				break;
			}
		}
		if (succeed) {return true;}
	}
}