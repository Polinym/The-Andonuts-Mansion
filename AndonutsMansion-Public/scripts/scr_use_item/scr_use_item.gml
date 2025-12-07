function scr_use_item()
{
	var tmp_char = char;
	var tmp_item = item;
	var tmp_targ = targ;
	var tmp_slot = slot;
	var item_obj = scr_open(tmp_item);
	var tmp_line;
	var success = false;
	var found = false;
	if not (item_obj.can_use[tmp_char.index])
	{
		scr_msg(obj_script_item.line[16]);
	}
	else
	if (tmp_targ != -1)
	{
		var give_count = tmp_targ.use_count;
		var tmp_uses;
		obj_msg.cmd = "use_item";
		for (var i = 0; i < give_count; i++)
		{
			tmp_uses = tmp_targ.uses[i];
			if (real(tmp_uses[0]) == real(tmp_item))
			{
				if (scr_cuts_check(char, actor, tmp_item, "use_item"))
				{
					//Do nothing!
				}
				else
				{
					tmp_line = tmp_uses[1][char.index];
					if (tmp_line != -1)
					{
						scr_msg(obj_script.line[tmp_line]);
						scr_face_player(tmp_targ);
					}
					else
					{
						scr_msg("~cThat doesn't make sense.");
					}	
				}
				success = tmp_uses[2];
				found = true;
				break;
			}
		}
	}
	if (not found)
	{
		tmp_line = -1;
		if (tmp_targ != -1)
		{
			tmp_line = tmp_targ.use_item_line[tmp_char.index];
		}
		if (tmp_line != -1)
		{
			scr_msg(obj_script.line[tmp_line]);	
		}
		else
		{
			tmp_line = tmp_item.use_line[tmp_char.index];
			if (tmp_line != -1)
			{
				scr_msg(obj_script_item.line[tmp_line]);
				success = tmp_item.use_destroy;
			}
			else
			{
				scr_msg("~cThat doesn't make sense.");
			}
		}
	}
	with (item_obj) {instance_destroy();}
	
	if (success)
	{
		scr_item_remove(tmp_char, tmp_slot);
	}
}