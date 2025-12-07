event_inherited();
if (use_update)
{
	if (scr_flag(7))
	{
		use_line = [192, 193, 194];
		look_line = [183, 184, 185];
		scr_flag_unset(7);
		image_angle = 0;
	}
	else
	{
		use_line = [195, 197, 196];
		scr_flag_set(7);
		tilted = true;
	}
	use_update = false;
}

if (tilted)
{
	look_line = [198, 199, 200];
	image_angle = -12;
	tilted = false;
}