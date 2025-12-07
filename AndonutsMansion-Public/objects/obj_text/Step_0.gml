if (ready)
{
switch (state)
{
	case 1:
		if (kcp(vk_space))
		{
			skip = true;	
		}
		if (pause_count > 0) {pause_count += -1;}
		else
		{
			var printed = false;
			while (not printed)
			{
				if (pos == pos_end)
				{
					state = 3;
					with (obj_text_shifter)
					{ani_count = 0; image_index = 0;}
					break;
				}
				else
				{
				var c = string_char_at(work_txt, pos);
				obj_text_port.talking = true;
				
				switch (c)
				{
					case "/":
						pos += 1;
						var cc = c + string_copy(work_txt, pos, 1);
						printed = scr_cc(cc);
						break;
					case "~":
						pos += 1;
						var cc = c + string_copy(work_txt, pos, 2);
						pos += 1;
						printed = scr_cc2(cc);
						break;
					case "[":
						pos += 1;
						var val = 0;
						if (string_copy(work_txt, pos, 1) == "+") {val = 1;}
						pos += 1;
						obj_ram.flags[real(string_copy(work_txt,pos, 2))] = val;
						pos += 1;
						break;
					case "|":
						if (not skip)
						{
							pause_count = 15;
							printed = true;
						}
						break;
					case ">":
						state = 2;
						scr_action_btn("next");
						with (obj_text_shifter)
						{ani_count = 0; image_index = 0;}
						lines = 0;
						printed = true;
						break;
					case "]":
						auto = true;
						auto_count = 0;
						state = 2;
						printed = true;
						break;
					case "#":
						scr_text_lb();
						printed = true;
						break;
					default:
						txt += c;
						for (var i = 0; i < 10; i++)
						{
							if (i == color)
							{
								txt_colors[i] += c;	
							}
							else
							{
								txt_colors[i] += " ";	
							}
						}
						switch (c)
						{
							case " ": 
							case "-":
								blip_count = blip_wait; break;	
						}
						printed = true;
						break;
				}
				pos++;
				if (skip) 
				{
					if (state == 1) {printed = false;}
				}
				}
			}
			skip = false;
			if (obj_ram.blip_sound != -1)
			{
				obj_text_port.image_speed = 0.1;
				if (blip_count < blip_wait) {blip_count++;}	
				else
				{
					scr_snd(obj_ram.blip_sound);
					blip_count = 0;
				}
			}
		}
		break;
	case 2:
		obj_text_port.talking = false;
		obj_text_shifter.visible = true;
		var pressed = (kcp(vk_space)) or (kcp(vk_shift));
		if (auto)
		{
			if (auto_count < auto_wait) {auto_count++;}
			else
			{
				auto_count = 0;
				pressed = true;
				auto = false;
			}
		}
		if (pressed)
		{
			state = 1;
			obj_text_shifter.visible = false;
			/*
			if (pos < pos_end) {scr_text_lb();}
			scr_action_btn("");
			*/
			txt = "";
			for (var i = 0; i < 10; i++) {txt_colors[i] = "";}
		}
		break;
		
	case 3:
		obj_text_port.talking = false;
		if not (display)
		{
			obj_text_shifter.visible = true;
			if (kcp(vk_space))
			or (kcp(vk_shift))
			or (room == rm_btl)
			{
				state = 0;
				obj_text_shifter.visible = false;
				for (var i = 0; i < 10; i++) {txt_colors[i] = "";}
				txt = "";
				if not (keep_open)
				{
					obj_text_box.close = true;
				}
				else
				{
					obj_ram.text_done = true;
				}
			}
		}
		break;
	case 7:
		with (obj_ram)
		{
			if (yesno_done)
			{
				yesno_done = false;
				if (yesno) {scr_msg(yes_txt);}
				else {scr_msg(no_txt);}
			}
		}
		break;
}
}