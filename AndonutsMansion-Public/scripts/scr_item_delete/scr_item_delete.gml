function scr_item_delete(arg_char, arg_item)
{
	with (arg_char)
	{
		var tmp_items = items;
		var tmp_item;
		for (var i = 0; i < 255; i++)
		{
			tmp_item = tmp_items[i];
			if (tmp_item == -1) {return -1;}
			else if (real(tmp_item) == real(arg_item))
			{
				scr_item_remove(arg_char, i);
				return i;
			}
		}
		return false;
	}
}