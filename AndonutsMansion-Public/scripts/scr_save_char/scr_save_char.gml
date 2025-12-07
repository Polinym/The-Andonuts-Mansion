function scr_save_char(arg_char)
{
	var tmp_array = arg_char.items;
	var tmp_val;
	var i;
	for (i = 0; i < 99; i++)
	{
		//buffer_add_object(tmp_array[i]);
		tmp_val = tmp_array[i];
		if (tmp_val == -1) {buffer_add(0x0); break;}
		buffer_add(tmp_array[i]);
	}
	tmp_array = arg_char.hash;
	for (i = 0; i < 4; i++)
	{
		buffer_add(tmp_array[i]);
	}
	buffer_add_bool(arg_char.fow);
	buffer_add_bool(arg_char.luigi);
	buffer_add(real(arg_char.spr));
	buffer_add(real(arg_char.dark_spr));
}