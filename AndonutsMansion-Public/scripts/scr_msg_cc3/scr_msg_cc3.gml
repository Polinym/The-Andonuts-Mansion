function scr_msg_cc3()
{
	// CC: ~
	pos += 1;
	var c2 = string_char_at(work_txt, pos);
	switch (c2)
	{
		case "0": scr_bgm_stop(); break;
		case "1": scr_bgm(char.bgm); break;
		case "p": scr_snd(snd_eb_present); break;
		case "t": scr_snd(snd_eb_tcrash); break;
		case "k": scr_snd(snd_eb_knock); break;
		case "*": scr_snd(snd_eb_enemyhit); break;
		case "a": scr_snd(snd_eb_plratk); break;
		case "d": scr_snd(snd_eb_dodge); break;
		case "l": scr_snd(snd_key); break;
		case "c": scr_snd(snd_eb_click); break;
		case "r": scr_snd(snd_eb_reflect); break;
		case "j": scr_snd(snd_eb_door); break;
		case "h": scr_snd(snd_eb_hit); break;
		case "x": scr_snd(snd_eb_die); break;
		case "b": scr_snd(snd_mm_doorbell); break;
		case "e": scr_snd(snd_eb_eat); break;
		case "~": scr_snd(snd_eb_ailment); break;
		case "i": scr_snd(snd_eb_item); break;
		case "f": scr_snd(snd_eb_fall); break;
		case "m": scr_snd(snd_eb_mystery); break;
		case "G": scr_snd(snd_lm_mouse); break;
		case "S": scr_snd(snd_saturn); break;
		case "N": scr_snd(snd_eb_newkid); break;
		case "R": scr_bgm(bgm_rescue); break;
		case "T": scr_snd(snd_eb_thunder); break;
		case "'": scr_snd(snd_eb_launch); break;
		case "M": 
			scr_bgm(snd_mm_cook); 
			break;
		case "D": 
			scr_bgm_stop();
			scr_snd(snd_mm_ding); 
			break;
		case "!": 
			scr_snd(snd_lm_ghost); 
			if (targ != -1)
			{
				with (targ)
				{
					switch (obj_player.dir)
					{
						case DOWN:	dir = UP; break;	
						case RIGHT: dir = LEFT; break;	
						case UP:	dir = DOWN; break;	
						case LEFT:	dir = RIGHT; break;	
					}
				}
				targ.stun_count = 45;
			}
			break;
		case "n": scr_bgm(bgm_summon); break;
		case "v": 
			targ.shaking = true;
			scr_snd(snd_lm_vacuum); 
			scr_snd(snd_lm_vacuum2);
			break;
		case "C": scr_bgm(bgm_combat); break;
		case "W": 
			scr_bgm_stop();
			scr_snd(snd_eb_win);
			break;
		case "Z": scr_snd(snd_dw_magic); break;
		case "F": scr_snd(snd_stop); break;
		case "w": scr_bgm(bgm_stop); break;
		case "(": scr_bgm(bgm_roger); break;
		case "g": scr_snd(snd_ganon_die); break;
	}
}