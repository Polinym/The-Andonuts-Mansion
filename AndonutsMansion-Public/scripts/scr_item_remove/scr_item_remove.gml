function scr_item_remove(arg_char, arg_slot)
{
	with (obj_ui_list) {update = true;}
	with (arg_char)
	{
		var next_item = -1;
		for (var i = arg_slot; i < 99; i++)
		{
			next_item = items[i+1];
			items[i] = next_item;
			if (next_item == -1)
			{
				obj_ui_list.page = ( (i-1) div 3 );
				return true;
			}
		}
		return false;
	}
}