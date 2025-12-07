function scr_item_add(arg_char, arg_item)
{
	with (arg_char)
	{
		var tmp_page = 0;
		var tmp_count = 0;
		for (var i = 0; i < 99; i++)
		{
			if (tmp_count < 3) {tmp_count++;}
			else
			{
				tmp_page++;
				tmp_count = 1;
			}
			if (items[i] == -1)
			{
				items[i] = arg_item;
				obj_ui_list.page = tmp_page;
				with (obj_ui_list) 
				{update = true;}
				return true;
			}
		}
		return false;
	}
}