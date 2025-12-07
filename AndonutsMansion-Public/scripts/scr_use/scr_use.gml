function scr_use()
{
	var line = 0;
	obj_msg.cmd = "use";
	if (actor != -1)
	{
		switch (actor.type)
		{
			default:
				line = actor.use_line[char.index];
				if (scr_cuts_check(char, actor, -1, "use"))
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
					scr_msg(char.use_line);
				}
				close = true;
				break;
			case "door":
				if (actor.locked)
				{
					scr_msg("~cIt's locked.");
					close = true;
				}
				else
				{
					var tmp_line = actor.use_line[char.index];
					if (tmp_line == -1)
					{
						with (obj_ram)
						{
							warped = true;
							used_door = true;
						}
						var door_sound = actor.door_sound;
						if (door_sound != -1)
						{
							scr_snd(snd_eb_door);
						}
						else
						{
							obj_ram.used_door = false;
						}
						var warp_line = actor.warp_line[char.index];
						if (warp_line != -1)
						{
							obj_ram.warp_line = warp_line;
						}
						if (actor.queue_cuts != -1)
						{
							obj_ram.cuts_obj = actor.queue_cuts;	
						}
						obj_ram.goto_pt = actor.dest_pt;
						obj_ram.goto_dir = actor.dest_dir;
						actor.image_index = 1;
						scr_warp(actor.dest);
						obj_warp.fow = actor.fow;
						close2 = true;
					}
					else
					{
						scr_msg(obj_script.line[tmp_line]);
						close = true;
					}
				}
				break;
			case "stairs":
				with (obj_ram)
				{
					warped = true;
					used_door = true;
				}
				scr_snd(snd_eb_steps);
				obj_ram.goto_pt = actor.dest_pt;
				obj_ram.goto_dir = actor.dest_dir;
				scr_warp(actor.dest);
				close2 = true;
				break;
		}
	}
}