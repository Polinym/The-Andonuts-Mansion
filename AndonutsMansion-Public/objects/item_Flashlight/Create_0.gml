event_inherited();
name = "Flashlight";
if (obj_ram.fow)
{
	if (obj_ram.flashlight)
	{
		use_line = [30, 31, 32];	
		look_line = [34, 34, 34];
	}
	else
	{
		use_line = [27, 28, 29];
		look_line = [33, 33, 33];
	}
}
else
{
	look_line = [33, 33, 33];
	use_line = [35, 35, 36];
}