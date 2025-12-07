switch (state)
{
	case 0:
		switch (mode)
		{
			case 0:
			default:
				if (dsp_w < w) {dsp_w += 2;}
				else
				{
					if (dsp_w > w) {dsp_w = w;}
					open_update = true;
					display = true;
					state++;
				}
				txt_wnd = scr_draw_menu(dsp_w, h);
				break;
		}
		break;
	case 1:
		if (cursor)
		{
			if (ani_count < ani_wait) {ani_count++;}
			else
			{
				ani_frame = not ani_frame;
				ani_count = 0;	
			}
		
			if (kcp(vk_right))
			{
				if (pages > 0)
				{
					if (page < (pages)) {page++;}
					else {page = 0;}
					page_update = true;
				}
			}
			else if (kcp(vk_left))
			{
				if (pages > 0)
				{
					if (page > 0) {page += -1;}
					else {page = pages;}
					page_update = true;
				}
			}
			else
			if (kcp(vk_down)) or (can_scroll and kc(vk_down) and scroll_delay < 1)
			{
				if (pos < last_pos) {pos++;}
				else 
				{
					if (cursor_wrap) {pos = 0;}
					else {cursor_edge = true;}
				}
				scroll_delay = 3;
				cursor_update = true;
				cursor_dir = -1;
			}
			else if (kcp(vk_up)) or (can_scroll and kc(vk_up) and scroll_delay < 1)
			{
				if (pos > 0) {pos += -1;}
				else 
				{
					if (cursor_wrap) {pos = last_pos;}
					else {cursor_edge = true;}
				}
				scroll_delay = 3;
				cursor_update = true;
				cursor_dir = 1;
			}
			else if (kcp(vk_shift))
			{
				shift_press = true;
				display = false;
				state++;
			}
			else if (kcp(vk_space))
			{
				select_update = true;
				state = 3;
			}
			if (scroll_delay > 0) {scroll_delay += -1;}
		
			if (page_update)
			{
				pos = 0;
				cursor_update = true;
			}
			else if (cursor_update)
			{
				ani_frame = 0;
				ani_count = 0;
				cursor_update = true;
		
			}
		}
		break;
	case 2:
		if (dsp_w > 0) {dsp_w += -2;}
		else
		{
			if (dsp_w < 0) {dsp_w = 0;}
			close_update = true;
			state++;
		}
		txt_wnd = scr_draw_menu(dsp_w, h);
		break;
	case 10:
		if (move_count < move_dist)
		{
			switch (move_dir)
			{
				case "down":	move_y += move_speed; break;	
				case "right":	move_x += move_speed; break;	
				case "up":		move_y += -move_speed; break;	
				case "left":	move_x += -move_speed; break;	
			}
			move_count++;
		}
		else
		{
			move_count = 0;
			state = 3;
		}
		break;
}