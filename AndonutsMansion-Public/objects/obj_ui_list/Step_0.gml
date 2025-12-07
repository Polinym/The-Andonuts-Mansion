if (update)
{
	scr_update_pages();
	var items = char.items;
	var names = obj_ram.items;
	txt = "";
	var tmp_i = (page*3);
	var tmp_item;
	last_pos = -1;
	for (var i = tmp_i; i < (tmp_i+3); i++)
	{
		tmp_item = items[i];
		if (tmp_item != -1)
		{
			tmp_item = scr_open(tmp_item);
			txt += tmp_item.name + "#";
			last_pos += 1;
			with (tmp_item) {instance_destroy();}
		} else {break;}
	}
	pos = 0;
	update = false;
}

if (active)
{
	obj_ui.prefix = "";
	obj_ui.hide_name = false;
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		ani_frame = not ani_frame;
		ani_count = 0;	
	}
	if (delay) {delay = false;}
	else
	{
		if (kcp(vk_down))
		{
			if (last_pos > -1)
			{
				if (pos < last_pos) {pos++;}
				else {pos = 0;}
			}
		}
		else if (kcp(vk_up))
		{
			if (last_pos > -1)
			{
				if (pos > 0) {pos += -1;}
				else {pos = last_pos;}
			}
		}
		else if (kcp(vk_right))
		{
			if (page < last_page) {page++;}
			else {page = 0;}
			update = true;
		}
		else if (kcp(vk_left))
		{
			if (page > 0) {page += -1;}
			else {page = last_page;}
			update = true;
		}
		else if (kcp(vk_shift))
		{
			delay = true;
			active = false;
			obj_ui.state = 1;
		}
		else if (kcp(vk_space))
		{
			delay = true;
			var tmp_slot = pos+(page*3);
			var tmp_item = char.items[tmp_slot];
			if (tmp_item != -1)
			{
				obj_ram.menu_slot = tmp_slot;
				obj_ram.menu_item = tmp_item;
				scr_open(obj_ui_item);
				active = false;
			}
		}
	}
}