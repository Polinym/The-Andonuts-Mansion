with (obj_ram)
{
	if (seconds > -1)
	{
		if (frames < 29) {frames++;}
		else
		{
			frames = 0;
			if (seconds > 0) {seconds += -1;}
			else
			{
				if (minutes > 0) {minutes += -1; seconds = 59;}
				else
				{
					scr_bgm_stop();
					obj_player.state = "cooked_goose";
					scr_warp(rm_go);
					seconds = -1;
				}
			}
		}
	}
}


if (cover)
{
	if (dsp_cover < 1) {dsp_cover += 0.1;}
}
else
{
	dsp_cover = 0;
}

switch (state)
{
	case 0:
		inst = obj_ram.target_inst;
		if (inst != -1)
		{
			if (instance_exists(inst))
			{
				name = inst.name;
			} else {name = ""; inst = -1;}
		}
		else
		{
			name = "";	
		}
		prefix = "";
		break;
	case 1:
		if (not instance_exists(actor))
		{
			actor = -1;
			name = "";
		}
		if (ani_count < ani_wait) {ani_count++;}
		else
		{
			ani_frame = not ani_frame;
			ani_count = 0;
		}
		if (kcp(vk_shift))
		{
			close = true;
		}
		else if (kcp(vk_right) or kcp(vk_left))
		{
			x_pos = not x_pos;
			ani_count = 0;
			ani_frame = 0;
		}
		else if (kcp(vk_down))
		{
			if (y_pos < 2) {y_pos++;}
			else {y_pos = 0;}
			ani_count = 0;
			ani_frame = 0;
		}
		else if (kcp(vk_up))
		{
			if (y_pos > 0) {y_pos += -1;}
			else {y_pos = 2;}
			ani_count = 0;
			ani_frame = 0;
		}
		else if (kcp(vk_space))
		{
			
			var tmp_actor = actor;
			obj_ram.msg_char = char;
			obj_ram.msg_targ = actor;
			switch (x_pos)
			{
				case 0:
					if (actor != -1)
					{
						switch (y_pos)
						{
							case 0: //Look
								scr_look();
								close = true;
								break;
							case 1: //Talk
								scr_talk();
								close = true;
								break;
							case 2: //Take
								scr_take();
								close = true;
								break;
						}
					}
					break;
				case 1:
					switch (y_pos)
					{
						case 0: //Items
							state = 2;
							with (obj_ui_list)
							{
								active = true;
								mode = 0;
							}
							break;
						case 1:
							scr_use();
							break;
						case 2:
							if (not obj_ram.no_new_kid)
							{
								scr_open(obj_ui_kid);
								state = 2;
							}
							break;
					}
					break;
			}
		}
		pos = (y_pos*2)+x_pos;
		hide_name = false;
		if (actor != -1)
		{
			switch (pos)
			{
				case 0: 
					prefix = "Look "; 
					if (ie(actor))
					{
						prefix += actor.look_prefix + " ";
					} else {name = ""; prefix = "";}
					break;
				case 2: prefix = "Talk to "; break;
				case 3: prefix = "Use "; break;
				case 4: prefix = "Take "; break;
				default: prefix = ""; break;
			}
		} else {prefix = "";}
		break;
}

if (close)
{
	state = 0;
	if (not obj_ram.cuts)
	{
	obj_player.state = "free";
	}
	obj_ram.paused = false;
	x_pos = 0;
	y_pos = 0;
	shade = false;
	delay = true;
	close = false;
}
else if (close2)
{
	state = 0;
	x_pos = 0; y_pos = 0;
	shade = false;
	delay = true;
	warp = false;
	close2 = false;
}