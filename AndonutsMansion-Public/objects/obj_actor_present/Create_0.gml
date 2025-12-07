event_inherited();
name = "Birthday Present";
already_opened = false;
look_prefix = "inside";
if (scr_any_check(hash))
{
	image_index = 1;
	look_update = true;
	already_opened = true;
}
else
{
	look_line = [17, 17, 19];
	take_line = [17, 17, 16];
	use_line = [17, 17, 16];
}