function scr_load_char(arg_char)
{
	var tmp_array = arg_char.items;
	var tmp_val;
	var i;
	for (i = 0; i < 99; i++)
	{
		//var tmp_val = buffer_get_object();
		tmp_val = buffer_get();
		if (tmp_val < 1) {break;}
		else {tmp_array[i] = tmp_val;}
		//if (tmp_val == 0x0) {break;}
		//else
		//{
			//tmp_array[i] = buffer_get_object();
		//}
	}
	for (var i = i; i < 99; i++)
	{
		tmp_array[i] = -1;	
	}
	arg_char.items = tmp_array;

	tmp_array = arg_char.hash;
	for (i = 0; i < 4; i++)
	{
		arg_char.hash[i] = buffer_get();
	}
	arg_char.fow = buffer_get_bool();
	if (buffer_get_bool())
	{
		with (arg_char)
		{
			luigi = true;
			bgm = bgm_vacuum;
		}
	}
	arg_char.spr = buffer_get();
	arg_char.dark_spr = buffer_get();
}