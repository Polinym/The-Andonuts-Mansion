if (active)
{
	if (i > 0)
	{
		if (i < 23) 
		{
			draw_sprite_part(sprite_index, 0, 0, 0, 16, i, x, y+(24-i));
		}
		else
		{
			draw_self();
		}
	}
}