if (not done)
{
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		ani_frame = not ani_frame;
		ani_count = 0;	
	}
	if (kcp(vk_down))
	{
		if (pos < last_pos) {pos++;}
		else {pos = 0;}
	}
	else if (kcp(vk_up))
	{
		if (pos > 0) {pos += -1;}
		else {pos = last_pos;}
	}
	else if (kcp(vk_shift))
	{
		obj_ui.state = 1;
		instance_destroy();
	}
	else if (kcp(vk_space))
	{
		if (not obj_ram.locked[pos])
		{
		var tmp_char = obj_ram.party[pos];
		var old_char = obj_ram.char;
		if (tmp_char != old_char)
		{
			with (obj_player)
			{
				var tmp_hash = scr_ally_hash();
				char.hash = tmp_hash;
			}
			var hash = tmp_char.hash;
			old_char.fow = obj_ram.fow;
			scr_change_char(tmp_char);
			obj_ram.warp_kid = true;
			obj_ram.warp_x = hash[1];
			obj_ram.warp_y = hash[2];
			obj_ram.warp_dir = hash[3];
			scr_msg_clear();
			scr_warp(hash[0]);
			if (tmp_char.fow)
			{
				obj_warp.fow = true;	
			}
			with (obj_ui)
			{
				state = 0;
				shade = false;
				x_pos = 0; y_pos = 0;
			}
			instance_destroy();
		}
		}
	}
}