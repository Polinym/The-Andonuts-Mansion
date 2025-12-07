if (scr_flag(10))
{
	image_index = 0;	
}
else
{
	var tmp_char = obj_ram.char;
	image_index = 1 + tmp_char.index;
}
image_speed = 0;