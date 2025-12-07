scr_door_set(rm_basement, 4, LEFT);
fow = true;
if (scr_flag(51) and not scr_flag(52))
{
	use_line = [1084, 1084, 1084];
}
if (scr_flag(53))
{
	scr_door_set(rm_basement, 2, LEFT);
	fow = false;
}