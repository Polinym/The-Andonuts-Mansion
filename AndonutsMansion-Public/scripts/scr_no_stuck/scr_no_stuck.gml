function scr_no_stuck()
{
	if (not scr_freespace(x, y))
	{
		/*
		var tmp_x = x; var tmp_y = y;
		for (var i = -16; i < 16; i++)
		{
			if (scr_freespace(tmp_x+i, tmp_y)) {x += i; return true;}
			if (scr_freespace(tmp_x, tmp_y+i)) {y += i; return true;}
		}
		*/
		x = obj_p1.x; y = obj_p1.y;
		return true;
	} else {return false;}
}