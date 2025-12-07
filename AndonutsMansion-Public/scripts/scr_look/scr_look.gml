function scr_look()
{
	var line = actor.look_line[char.index];
	obj_msg.cmd = "look";
	if (scr_cuts_check(char, actor, -1, "look"))
	{
		//Do nothing!
	}
	else
	if (line > -1)
	{
		scr_msg(obj_script.line[line]);
	}
	else
	{
		scr_msg(char.look_line);
	}
}