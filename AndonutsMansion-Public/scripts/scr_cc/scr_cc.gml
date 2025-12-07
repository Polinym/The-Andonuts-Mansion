function scr_cc(arg_cc)
{
	switch (arg_cc)
	{
		case "/p":
			pause_count = 30;
			return true;
			break;
		case "//":
			txt += "/";
			return true;
			break;
		case "/!":
			var tmp_targ = obj_ram.menu_targ;
			if (tmp_targ != -1) {die(tmp_targ);}
			break;
		case "/F": scr_port(spr_port_floyd, snd_blip_akechi); break;
		case "/R": scr_port(spr_port_ruby, snd_blip_high); break;
		case "/A": scr_port(spr_port_anabella, snd_blip_sae); break;
		case "/W": scr_port(-1, snd_blip_amalda); break;
		case "/D": scr_port(-1, snd_blip_yaldy); break;
		
		case "/V": scr_port(-1, snd_blip_low); break;
		case "/=": scr_port(-1, snd_blip_akechi); break;
		case "/^": scr_port(-1, snd_blip_high); break;
		case "/m": scr_port(-1, snd_blip_martina); break;
		case "/s": scr_port(-1, snd_blip_sae); break;
		case "/i": scr_port(-1, snd_blip_idol); break;
		case "/?":
			scr_yesno_open();
			state = 7;
			return true;
			break;
		case "/S":
			scr_save();
			scr_snd(snd_bard);
			return true;
			break;
		case "/t":
			txt += "   ";
			return true;
			break;
		case "/h":
			var tmp_char;
			for (var i = 0; i < 4; i++)
			{
				tmp_char = obj_ram.party[i];
				if (tmp_char != -1)
				{
					with (tmp_char)
					{
						hp = max_hp;
						ail_slime = 0;
						ail_dizzy = 0;
						ail_poison = 0;
						ail_sleep = 0;
					}
				}
			}
			break;
		case "/*":
			var items = obj_ram.items;
			for (var i = 0; i < 16; i++)
			{
				switch (items[i])
				{
					case item_RedScroll: items[i] = item_GreenPotion; break;	
					case item_BlueScroll: items[i] = item_GreenPotion; break;	
					case item_GreenScroll: items[i] = item_GreenPotion; break;	
					case item_KingSword: items[i] = item_WitchSlayer; break;	
				}
			}
			break;
		case "/○":
			if (scr_flag(4))
			{
				scr_flag_unset(4);
				with (obj_ram.edgar)
				{
					base_spr = spr_edgar;
					spr = spr_edgar;
				}
				with (obj_player)
				{
					sprite_index = spr_edgar;	
				}
			}
			else
			{
				with (obj_ram.edgar)
				{
					base_spr = spr_edgar2;
					spr = spr_edgar2;
				}
				with (obj_player)
				{
					sprite_index = spr_edgar2;	
				}
				scr_flag_set(4);
			}
			break;
	}
	return false;
}