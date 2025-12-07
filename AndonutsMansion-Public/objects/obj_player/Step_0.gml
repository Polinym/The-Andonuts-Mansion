scr_depth_rel();

if (mercy_count > 0)
{
	if (stuck_check) and (state == "free")
	{
		if (not scr_freespace(x, y))
		{
			scr_wormhole();
		}
	}
	mercy_count += -1;
	if (mercy_count < 1) 
	{
		obj_ram.paused = false;
		with (obj_ram)
		{
			if (warp_line != -1)
			{
				msg_char = char;
				msg_targ = -1;
				msg_item = -1;
				scr_msg(obj_script.line[warp_line]);
				warp_line = -1;
			}
		}
		if (scr_flag(14)) and (room == rm_f1)
		{
			obj_ram.msg_char = obj_ram.char;
			obj_ram.msg_targ = -1;
			obj_ram.msg_item = -1;
			scr_msg(obj_script.line[375]);
			scr_flag_unset(14);	
		}
	}
}
else
{
scr_actor_talk();
switch (state)
{
	case "free":
		if (check_sfl)
		{
			if (sfl_count < sfl_wait) {sfl_count++;}
			else
			{
				sfl_count = 0;
				if (not scr_freespace(x, y))
				{
					scr_wormhole();
					check_sfl = false;
				}
			}
		}
		
		ani_wait = 4;
		var try_move = false; var moving = false;
		var next_x = x; var next_y = y;
		var tmp_right = vk_right;
		var tmp_left = vk_left;
		var tmp_up = vk_up;
		var tmp_down = vk_down;
		if (char.mashroom > 0)
		{
			tmp_right = vk_left;
			tmp_left = vk_right;
			tmp_up = vk_down;
			tmp_down = vk_up;
			char.mashroom += -1;
		}
		
		if (kc(tmp_right)) {dir = 1; next_x+= move_speed; try_move = true;}
		else if (kc(tmp_left)) {dir = 3; next_x+= -move_speed; try_move = true;}
		if (try_move)
		{
			if (scr_freespace(next_x, y)) 	
			{
				x = next_x;
				moving = true;
			}
		}
		
		try_move = false;
		if (kc(tmp_down)) {dir = 0; next_y+= move_speed; try_move = true;}
		else if (kc(tmp_up)) {dir = 2; next_y+= -move_speed; try_move = true;}
		if (try_move)
		{
			if (scr_freespace(x, next_y)) 	
			{
				y = next_y;
				moving = true;
			}
		}
		if (last_dir != dir)
		{
			ani_frame = 0;
			last_dir = dir;
			ani_count = 0;
		}
		if (moving)
		{
			if (ani_count < ani_wait) {ani_count++;}
			else
			{
				ani_frame = not ani_frame;
				ani_count = 0;	
			}
		}
		
		var check_x = x; var check_y = y;
		switch (dir)
		{
			case 0: check_y += 8; break;
			case 1: check_x += 12; break;
			case 2: check_y += -8; break;
			case 3: check_x +=-12; break;
		}
		var tmp = instance_place(check_x, check_y, par_loot);
		if (tmp == noone) 
		{
			tmp = instance_place(check_x, check_y, par_actor);
		}
		if (tmp == noone)
		{
			tmp = -1;
		}
		obj_ram.target_inst = tmp;
		
		if (delay) {delay = false;}
		else if ( kcp(ord("Z")) and (not obj_ram.cmd_lock) ) and (not obj_ram.fow)
		{
			if (scr_flag(52))
			{
				scr_msg("~cThe meteor is in control, and#he says 'no saved games'.");
			}
			else
			{
				visible = false;
				obj_ram.last_x = x;
				obj_ram.last_y = y;
				obj_ram.respawn = true;
				obj_ram.last_dir = dir;
				obj_ram.last_fow = obj_ram.fow;
				state = "save";
				scr_snd(snd_mm_pick);
				scr_warp(rm_save);
			}
		}
		else if (kcp(vk_space) and (not obj_ram.cmd_lock))
		{
			delay = true;
			obj_ram.paused = true;
			with (ui)
			{
				state = 1;
				shade = true;
				actor = obj_ram.target_inst;
			}
			state = "cmds";
		}
		
		image_index = (dir*2) + ani_frame;
		break;
	case "cuts": scr_actor_cuts(); break;
}
}