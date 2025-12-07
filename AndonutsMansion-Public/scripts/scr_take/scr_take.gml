function scr_take()
{
	var tmp_line = actor.take_line[char.index];
	obj_msg.cmd = "take";
	switch (actor.type)
	{
		case "loot":
			scr_snd(snd_eb_item);
			scr_item_add(char, actor.item);
			with (actor) 
			{
				scr_any_add(hash);
				instance_destroy();
			}
			if (tmp_line != -1)
			{
				scr_msg(obj_script.line[tmp_line]);	
			}					
			break;
		default:
			line = actor.take_line[char.index];
			if (scr_cuts_check(char, actor, -1, "take"))
			{
				//Do nothing!
			}
			else
			if (line != -1)
			{
				scr_msg(obj_script.line[line]);
			}
			else
			{
				scr_msg(char.take_line);
			}
			break;
	}
}