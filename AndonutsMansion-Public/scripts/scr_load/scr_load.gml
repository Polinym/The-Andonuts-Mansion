function scr_load()
{
	with (obj_ram)
	{
		var max_size = 6464;
		var align = 2;
		var i; var i2;
		buf = buffer_load(save_name);
		
		char = party[buffer_get()];
		last_x = buffer_get();
		last_y = buffer_get();
		last_dir = buffer_get();
		dest = buffer_get();
		for (i = 0; i < 3; i++)
		{
			scr_load_char(party[i]);
		}
		var tmp_array = flags;
		for (i = 0; i < 256; i++)
		{
			flags[i] = buffer_get_bool();
		}
		no_new_kid = buffer_get_bool();
		fow = buffer_get_bool();
		
		any = [];
		any[512] = [];
		buffer_skip_note(3);
		any_count = buffer_get();

		for (i = 0; i < (any_count); i++)
		{
			any[i] = [-1, -1, -1];
			for (var i2 = 0; i2 < 3; i2++)
			{
				any[i][i2] = buffer_get();
			}
		}
		//show_message(any[0]);
		/*
		for (var i = 0; i < any_count; i++)
		{
			show_message(any[i]);	
		}
		*/
		cd_player = buffer_get();
		for (var i = 0; i < 3; i++)
		{
			locked[i] = buffer_get_bool();
		}
		buffer_delete(buf);
		
		with (obj_ui) {char = obj_ram.char;}
		with (obj_ui_list) {char = obj_ram.char; page = 0; update = true;}
		buf = -1;
		respawn = true;
		scr_warp2(dest);
		obj_warp.fow = fow;
	}
}

function buffer_get()
{
	return buffer_read(buf, buffer_u16);
}

function buffer_get_bool()
{
	return (buffer_get() == 7);
}
function buffer_get_object()
{
	asset_get_index(load_str());
	
}
function buffer_add_note(arg_note)
{
	for (var i = 1; i < string_length(arg_note)+1; i++)
	{
		buffer_add(ord(string_char_at(arg_note, i)));
	}
}

function buffer_skip_note(arg_len)
{
	for (var i = 0; i < arg_len; i++) {buffer_get();}
}

function load_str()
{
	var tmp_str = "";
	var val;
	for (var i = 0; i < 128; i++)
	{
		val = buffer_get();
		if (val == 0x0) {break;}
		else
		{
			tmp_str = chr(val) + tmp_str;
		}
	}
	return tmp_str;
}