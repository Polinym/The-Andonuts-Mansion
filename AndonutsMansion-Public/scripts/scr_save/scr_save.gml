function scr_save()
{
	with (obj_ram)
	{
		var max_size = 6464;
		var align = 2;
		var i; var i2;
		buf = buffer_create(max_size, buffer_fixed, align);
		
		buffer_add(char.index);
		//show_message(char.index);
		buffer_add(last_x);
		buffer_add(last_y);
		buffer_add(last_dir);
		buffer_add(last_room);
		for (i = 0; i < 3; i++)
		{
			scr_save_char(party[i]);
		}
		var tmp_array = flags;
		for (i = 0; i < 256; i++)
		{
			buffer_add_bool(tmp_array[i]);
		}
		buffer_add_bool(no_new_kid);
		buffer_add_bool(last_fow);

		tmp_array = any;
		var tmp_array;
		var tmp_hash;
		buffer_add_note("any");
		buffer_add(any_count);
		for (i = 0; i < any_count; i++)
		{
			tmp_hash = any[i];
			for (i2 = 0; i2 < 3; i2++)
			{
				buffer_add(tmp_hash[i2]);
			}
		}
		buffer_add(cd_player);
		for (var i = 0; i < 3; i++)
		{
			buffer_add_bool(locked[i]);	
		}
		
		
		//buf = buffer_compress(buf, 2, max_size);
		var tmp = file_text_open_write("cache/tmp.txt");
		file_text_write_string(tmp, "Credit: GM tutorial by RPGmaster049 ( https://www.youtube.com/watch?v=CQ4jIOva63Y )");
		file_text_close(tmp);
		buffer_save(buf, save_name);
		buffer_delete(buf);
		buf = -1;
	}
}

function buffer_add(arg_val)
{
	buffer_write(buf, buffer_u16, arg_val);
}

function buffer_add_bool(arg_bool)
{
	if (arg_bool) {buffer_add(7);}	
	else {buffer_add(3);}
}
function buffer_add_object(arg_obj)
{
	save_str(object_get_name(arg_obj));
	
}

function save_str(arg_str)
{
	var tmp_len = string_length(arg_str)-1;
	for (var i = tmp_len; i > 0; i+=-1)
	{
		buffer_add(ord(string_char_at(arg_str, i)));
	}
	buffer_add(0x0);
}