function scr_item_replace(arg_char, arg_item, arg_new)
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
				tmp_items[i] = arg_new;
				items = tmp_items;
				with (obj_ui_list) {update = true;}
				return i;
			}
		}
		return -1;
	}
}