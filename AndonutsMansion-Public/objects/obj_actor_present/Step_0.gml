event_inherited();
if (look_update)
{
	image_index = 1;
	look_line = [18, 18, 18];
	take_line = [18, 18, 18];
	use_line = [-1, -1, -1];
	if (not already_opened)
	{
		scr_any_add(hash);
		already_opened = true;
	}
	look_update = false;	
}