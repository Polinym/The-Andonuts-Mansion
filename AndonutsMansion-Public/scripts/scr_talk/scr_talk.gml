function scr_talk()
{
	var line = actor.talk_line[char.index];
	if (actor.face_on_talk)
	{
		switch (obj_player.dir)
		{
			case DOWN: actor.dir = UP; break;	
			case RIGHT: actor.dir = LEFT; break;	
			case UP: actor.dir = DOWN; break;	
			case LEFT: actor.dir = RIGHT; break;	
		}
	}
	obj_msg.cmd = "talk";
	if (scr_cuts_check(char, actor, -1, "talk"))
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
		scr_msg(char.talk_line);
	}
}