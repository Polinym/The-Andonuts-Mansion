if (ani_count < ani_wait) {ani_count++;}
else
{
	ani_frame = not ani_frame;
	ani_count = 0;	
}
if (ini)
{
	var tmp = scr_open(item);
	item_name = tmp.name;
	with (tmp) {instance_destroy();}
	ini = false;	
}

if (delay) {delay = false;}
else
{
	if (kcp(vk_down))
	{
		if (pos < last_pos) {pos += 1;}
		else {pos = 0;}
	}
	else if (kcp(vk_up))
	{
		if (pos > 0) {pos += -1;}
		else {pos = last_pos;}
	}
	else if (kcp(vk_shift))
	{
		obj_ui_list.active = true;
		instance_destroy();
	}
	else if (kcp(vk_space))
	{
		obj_ram.msg_char = char;
		obj_ram.msg_targ = targ;
		obj_ram.msg_item = item;
		switch (pos)
		{
			case 0: scr_use_item(); break;
			case 1: scr_give_item(); break;
			case 2: scr_look_item(); break;
		}
		close = true;
	}
	var prefix = "";
	obj_ui.hide_name = false;
	switch (pos)
	{
		case 0: 
			prefix = "Use " + item_name; 
			if (obj_ui.name != "")
			{
				prefix += " " + targ.use_prefix + " ";	
			}
			break;
		case 1: 
			prefix = "Give " + item_name; 
			if (obj_ui.name != "")
			{
				prefix += " to ";	
			}
			break;
		case 2: 
			prefix = "Look at " + item_name; 
			obj_ui.hide_name = true;
			break;
	}
	obj_ui.prefix = prefix;
	
}
if (close)
{
	with (obj_ui)
	{
		state = 0;
		shade = false;
		x_pos = 0; y_pos = 0;
		hide_name = false;
	}
	obj_ram.paused = false;
	obj_ui_list.active = false;
	if (not obj_ram.cuts)
	{
	obj_player.state = "free";
	}
	instance_destroy();
}