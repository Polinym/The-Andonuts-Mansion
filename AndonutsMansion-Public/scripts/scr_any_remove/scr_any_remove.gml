function scr_any_remove(arg_hash)
{
	with (obj_ram)
	{
		var tmp_hash;
		var tmp_hash2;
		var found = false;
		for (var i = 0; i < any_count; i++)
		{
			tmp_hash = any[i];
			found = true;
			for (var i2 = 0; i2 < 3; i2++)
			{
				if (arg_hash[i2] != tmp_hash[i2]) {found = false; break;}
			}
			if (found)
			{
				for (var i2 = i; i2 < 512; i2++)
				{
					tmp_hash2 = any[i2];
					any[i] = tmp_hash2;
					if (tmp_hash2 == [])
					{
						break;
					}
				}
				any_count += -1;
				return true;
			}
		}
		return false;
	}
}