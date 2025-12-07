if (ini)
{
	if (width < 28) {width += 2;}
	else
	{
		if (width > 28) {width = 28;}
		with (obj_text)
		{
			ready = true;
		}
		ini = false;
	}
	txt = scr_draw_menu(width, 3);
}  
else if (close)
{
	if (width > 0) {width += -2;}
	else
	{
		if (width < 0) {width = 0;}
		obj_ram.text_done = true;
		close = false;
	}
	txt = scr_draw_menu(width, 3);
}