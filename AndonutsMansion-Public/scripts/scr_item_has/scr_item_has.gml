function scr_item_has(arg_char, arg_item)
{
	with (arg_char)
	{
		var tmp_items = items;
		var tmp_item;
		for (var i = 0; i < 255; i++)
		{
			tmp_item = tmp_items[i];
			if (tmp_item == -1) {return false;}
			else if (real(tmp_item) == real(arg_item))
			{
				return true;
			}
		}
		return false;
	}
}