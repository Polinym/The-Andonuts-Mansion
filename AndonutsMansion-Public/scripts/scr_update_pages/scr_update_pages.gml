function scr_update_pages()
{
	var items = char.items;
	var tmp_count = 0;
	last_page = 0;
	for (var i = 0; i < 99; i++)
	{
		if (items[i] != -1)
		{
			tmp_count += 1;
			if (tmp_count > 3)
			{
				last_page++;
				tmp_count = 1;	
			}
		} else {break;}
	}
}