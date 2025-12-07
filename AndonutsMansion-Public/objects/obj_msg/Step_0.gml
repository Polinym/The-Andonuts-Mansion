if (active)
{
	switch (state)
	{
		case 0:
			var parse = true;
			while (parse)
			{
				if (pos < (string_length(work_txt)+1))
				{
						var c = string_char_at(work_txt, pos);
						switch (c)
						{
							case "/": scr_msg_cc(); break;
							case "~": scr_msg_cc2(); break;
							case "&": scr_msg_cc3(); break;
							case "[":
								pos += 1;
								var tmp_sign = string_char_at(work_txt, pos);
								pos++;
								var tmp_nmb = real(string_copy(work_txt, pos, 3));
								pos += 2;
								switch (tmp_sign)
								{
									case "+": scr_flag_set(tmp_nmb); break;	
									case "-": scr_flag_unset(tmp_nmb); break;	
								}
								obj_ram.flag_update = true;
								break;
							case ">":
								state = 1;
								txt += suffix;
								done = false;
								parse = false;
								break;
							case "]":
								state = 1;
								txt += suffix;
								pause_count = 15;
								done = false;
								parse = false;
								break;
							default:
								txt += c;
								if (blip_count < blip_wait) {blip_count++;}
								else
								{
									scr_snd(snd_eb_blip);
									blip_count = 0;	
								}
								parse = false;
								break;
						}
						pos += 1;
				}
				else
				{
					done = true;
					state = 1;	
					txt += suffix;
					parse = false;
				}
			}
			break;
		case 1:
			if (not done)
			{
				if (ani_count < ani_wait) {ani_count++;}
				else
				{
					if (ani_frame < 3) {ani_frame++; txt_wait += ".";}
					else 
					{
						txt_wait = "";
						ani_frame = 0;
					}

					ani_count = 0;
				}
			}
			if (pause_count > 0)
			{
				pause_count += -1;
				if (pause_count < 1)
				{
					wait_count = wait_wait;
				}
			}
			if (wait_count < wait_wait) {wait_count++;}
			else
			{
				txt = "";
				name = "";
				suffix = "";
				wait_count = 0;
				with (par_actor) {talking = false;}
				with (obj_player) {talking = false;}
				if (done)
				{
					obj_ram.text_done = true;
					obj_ram.talking = false;
					active = false;
					state = 255;
					done = false;
					font = font_main;
					cmd = "";
				}
				else
				{
					txt_wait = "";
					ani_count = 0;
					ani_frame = 0;
					state = 0;
				}
			}
			break;
	}
}