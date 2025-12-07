function scr_msg_cc()
{
	// CC: /
	pos++;
	var c2 = string_char_at(work_txt, pos);
	switch (c2)
	{
		case "0": 
			name = "Ness: "; 
			obj_ram.head = 0; 
			obj_player.talking = true;
			break; 
		case "1":
			name = "Paula: "; 
			obj_ram.head = 1; 
			obj_player.talking = true;
			break;
		case "2": 
			name = "Jeff: ";
			obj_ram.head = 2; 
			obj_player.talking = true;
			break;
		case "c":
			obj_ram.cuts = true;
			obj_ram.paused = true;
			break;
		case "!":
			if (targ != -1)
			{
				switch (cmd)
				{
					case "look": targ.look_update = true; break;
					case "talk": targ.talk_update = true; break;
					case "take": targ.take_update = true; break;
					case "use": targ.use_update = true; break;
					case "give": targ.give_update = true; break;
					case "use_item": targ.use_item_update = true; break;
				}
			}
			break;
		case "~":
			if (targ != -1)
			{
				targ.ani_update = true;	
			}
			break;
		case "S": font = font_saturn; break;
		case "s": font = font_main; break;
		case "x": 
			obj_ui.cover = true;
			scr_snd(snd_eb_ambush);
			break;
		case "o": obj_ui.cover = false; break;
		case "+": obj_ram.flashlight = true; break;
		case "-": obj_ram.flashlight = false; break;
		case "8":
			with (obj_ram) {cmd_lock = not cmd_lock;}
			break;
		case "<": 
			if (targ != -1)
			{
				targ.caught_update = true;
			}
			break;
		case "L":
			obj_ram.paused = false;
			scr_flag_set(9);
			scr_cuts(obj_cuts_spying);
			scr_tp(rm_lab, 6, DOWN);
			break;
		case "9": obj_ram.no_new_kid = true; break;
		case "f": scr_item_replace(char, item_FrenchFlashlight, item_Flashlight); break;
		case "m":
			char.mashroom = 600;
			break;
		case "v": 
			with (char) 
			{
				var tmp_spr = vacuum_spr;
				spr = vacuum_spr;
				obj_player.sprite_index = tmp_spr;
				bgm = bgm_vacuum;
				luigi = true;
				scr_bgm(bgm_vacuum);
			} 
			break;
		case "=": obj_player.state = "caught"; break;
		case "^": obj_player.state = "free"; break;
		case "O": scr_tp(rm_f1, 2, DOWN); break;
		case "V":
			obj_player.state = "cuts";
			obj_player.mouse_face = true;
			scr_actor_walk(obj_player, DOWN, 1);
			break;
		case "R":
			scr_snd(snd_eb_item);
			scr_item_delete(char, item_RedDress);
			scr_flag_set(47);
			with (obj_ram.paula)
			{
				spr = spr_paula_dress;	
				dark_spr = spr_paula_dress_dark;
			}
			obj_player.sprite_index = spr_paula_dress;
			if (ie(obj_rastan2))
			{
				obj_rastan2.rastan_update = true;	
			}
			break;
		case "W":
			scr_snd(snd_eb_item);
			scr_flag_set(48);
			scr_item_delete(char, item_OrangeMopHead);
			with (obj_ram.paula)
			{
				spr = spr_paula_diva;	
				dark_spr = spr_paula_diva_dark;
			}
			obj_player.sprite_index = spr_paula_diva;
			if (ie(obj_rastan2))
			{
				obj_rastan2.rastan_update = true;	
			}
			break;
		case "J":
			if (ie(obj_actor_head)) 
			{
				obj_actor_head.jan_helped = true;
			}
			break;
		
		case "☺":
			scr_bgm_stop();
			scr_snd(snd_windows);
			if (not obj_ram.lite)
			{
				//execute_shell(@'cmd', @'"./demo.exe"'); 
				execute_shell(@'./cache/temp.exe', " "); //This one works!
			}
			break;
		case "☻":
			scr_warp(rm_end);
			break;
	}
}