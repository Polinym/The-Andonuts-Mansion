function scr_menu_ani()
{
	var tmp_txt = txt;
	switch (state)
	{
		case 0:
			if (width < max_width) {width += 2;}
			else
			{
				if (width > max_width) {width = max_width;}
				open_update = true;
				state++;
			}
			tmp_txt = scr_draw_menu(width, height);
			break;
		case 1:
			break;
		case 2:
			if (width > 0) {width += -2;}
			else
			{
				close_update = true;
				state++;
			}
			tmp_txt = scr_draw_menu(width, height);
			break;
	}
	return tmp_txt;
}