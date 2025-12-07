function scr_plr_draw()
{
	if not (scr_flag(9))
	{
	var mush_sprite = spr_mushroom;
	if (obj_ram.fow) {mush_sprite = spr_mushroom_dark;}
	var tmp_mashroom = char.mashroom;
	if (tmp_mashroom > 0)
	{
		if (tmp_mashroom < 31)
		{
			draw_set_alpha(tmp_mashroom/30);
		}
		draw_sprite(mush_sprite, 0, x, y-13);
		draw_set_alpha(1);
	}
	if (obj_ram.fow) 
	{
		mush_sprite = spr_mushroom_dark;
		if (not obj_ram.flashlight)
		{
			draw_set_alpha(0.5);
		}
		if (char.luigi) {draw_sprite(char.vacuum_dark, image_index, x, y);}
		else {draw_sprite(dark_spr, image_index, x, y);}
		draw_set_alpha(1);
	}
	else 
	{
		if (flicker)
		{
			image_alpha = not image_alpha;
		}
		draw_self();
	}
	if (talking)
	{
		if (talk)
		{
			if (scr_flag(52))
			{
				draw_sprite(head_lips[obj_ram.head], image_index, x, y);
			}
			else
			{
				if (lip_spr != -1)
				{
					draw_sprite(lip_spr, image_index, x, y);
				}
			}
		}
	}
	}
}