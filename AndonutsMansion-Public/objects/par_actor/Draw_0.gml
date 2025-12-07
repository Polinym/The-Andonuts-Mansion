if (obj_ram.fow) 
{
	if (dark_spr != -1)
	{
		draw_sprite(dark_spr, image_index, x, y);
	} else {draw_self();}
}
else
{
	if (mashroom)
	{
		draw_sprite(spr_mushroom, 0, x, y-13);
	}
	if (flicker)
	{
		image_alpha = not image_alpha;
	}
	draw_self();
}
if (can_talk)
{
	if (talking)
	{
		if (talk) and (lip_spr != -1)
		{
			draw_sprite(lip_spr, image_index, x, y);	
		}
	}
}
