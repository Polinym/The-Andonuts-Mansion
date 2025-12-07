function scr_give_item()
{
	var tmp_char = char;
	var tmp_item = item;
	var tmp_targ = targ;
	var tmp_slot = slot;
	var tmp_line;
	obj_msg.cmd = "give";
	var item_obj = scr_open(tmp_item);
	var success = false;
	if (not item_obj.can_give)
	{
		scr_msg("~PNo way!");
	}
	else if (tmp_targ == -1)
	{
		scr_msg("~cWho am I giving it to?");
	}
	else
	{
		switch (tmp_targ.type)
		{
			case "ally":
				type = "ally";
				if scr_item_add(tmp_targ.char, tmp_item)
				{
					var line = tmp_char.give_line;
					if (line != -1)
					{
						scr_msg(line);
					}
					success = true;
				}
				else
				{
					scr_msg("~tI've got too much stuff.");	
				}
				scr_face_player(tmp_targ);
				break;
			case "person":
				var found = false;
				var tmp_give;
				var give_count = tmp_targ.give_count;
				for (var i = 0; i < give_count; i++)
				{
					tmp_give = tmp_targ.gives[i];
					if (tmp_give[0] == tmp_item)
					{
						if (scr_cuts_check(char, actor, tmp_item, "give_item"))
						{
							//Do nothing!
						}
						else
						{
							var tmp_line = tmp_give[1][tmp_char.index];
							if (tmp_line != -1)
							{
								scr_msg(obj_script.line[tmp_line]);
							}
							else
							{
								scr_msg("~cI don't think I should.");	
							}
						}
						scr_face_player(tmp_targ);
						success = tmp_give[2];
						found = true;
						break;
					}
				}
				if (not found)
				{
					scr_msg("~cI don't think I should.");
				}
				
				break;
			default:
				scr_msg("~cThat won't work.");
				break;
		}
	}
	
	with (item_obj) {instance_destroy();}
	
	if (success)
	{
		scr_snd(snd_eb_item);
		scr_item_remove(tmp_char, tmp_slot);
	}
}