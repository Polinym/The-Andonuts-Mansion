event_inherited();
scr_ani_frame();
if (worm_count < worm_wait) {worm_count++;}
else
{
	if (scr_pchance(1, 6))
	{
		dir = scr_rng(DOWN, LEFT);
	}
	var next_x = x; var next_y = y;
	switch (dir)
	{
		case DOWN:	next_y += 1; break;
		case RIGHT: next_x += 1; break;
		case UP:	next_y += -1; break;
		case LEFT:	next_x += -1; break;
	}
	if (scr_freespace(next_x, next_y))
	{
		x = next_x;
		y = next_y;
	}
	worm_count = 0;
}
image_index = (dir*2) + ani_frame;