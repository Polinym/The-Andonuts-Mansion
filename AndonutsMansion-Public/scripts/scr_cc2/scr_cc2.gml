function scr_cc2(arg_cc)
{
	switch (arg_cc)
	{
		case "~~~":
			txt += "~";
			return true;
			break;
			
		case "~c0": color = -1; break;
		case "~cr": color = 0; break;
		case "~cg": color = 1; break;
		case "~cb": color = 2; break;
		case "~cl": color = 3; break;
		case "~cy": color = 4; break;
		case "~cp": color = 5; break;
		case "~c+":
			if not (ie(obj_cover))
			{
				icd(-256, -256, -50, obj_cover);
			}
			break;
		case "~c-":
			if (ie(obj_cover))
			{
				obj_cover.state = 1;
			}
			break;
			
		case "~ea":
			scr_blend(obj_enemy, c_black, 64);
			break;
		case "~eb":
			scr_blend(obj_enemy, c_red, 16);
			break;
		case "~ec":
			with (obj_enemy)
			{
				x += -17;
				ani_dodge = true;
			}
			break;
		case "~ed":
			if (ie(obj_enemy))
			{
				with (obj_enemy)
				{
					disappear = true;
				}
			}
			break;
		case "~m*": with (obj_ram.target_char) {ail_mush = 3;} break;
		case "~&M": scr_snd(snd_whiff); return true; break;
		case "~&D": scr_snd(snd_dodge); return true; break;
		case "~&*": scr_snd(snd_dmg); return true; break;
		case "~&x": scr_snd(snd_crit); return true; break;
		case "~&]": scr_snd(snd_shine); return true; break;
		case "~&0": scr_snd(snd_nomp); return true; break;
		case "~&c": scr_snd(snd_cyphon); return true; break;
		case "~&b": scr_snd(snd_buff); return true; break;
		case "~&-": scr_snd(snd_debuff); return true; break;
		case "~&d": scr_snd(snd_inflict); return true; break;
		case "~&m": scr_snd(snd_spell); return true; break;
		case "~&f": scr_snd(snd_meganuke); return true; break;
		case "~&L": scr_snd(snd_radia); return true; break;
		case "~&A": scr_snd(snd_shimmer); return true; break;
		case "~&1": scr_snd(snd_atk_picel); return true; break;
		case "~&2": scr_snd(snd_atk_lily); return true; break;
		case "~&E": scr_snd(snd_atk_enemy); return true; break;
		case "~&X": scr_snd(snd_death); return true; break;
		case "~&G": scr_snd(snd_keyitemget); return true; break;
		case "~&o": scr_bgm_stop(); return true; break;
		
		case "~v1": scr_snd(vc_dynos_behold); break;
		case "~v2": scr_snd(vc_dynos_summon1); break;
		case "~v3": scr_snd(vc_dynos_summon2); break;
		case "~v4": scr_snd(vc_dynos_harm); break;
		case "~v5": scr_snd(vc_dynos_erase); break;
		case "~v6": scr_snd(vc_dynos_lady); break;
			
		case "~&l": scr_snd(snd_key); break;
		
		case "~F0": scr_flag_set(0); break;
		case "~F1": scr_flag_set(1); break;
		case "~F2": scr_flag_set(2); break;
		case "~F3": scr_flag_set(3); break;
		case "~F4": scr_flag_set(4); break;
		case "~F5": scr_flag_set(5); break;
		case "~F6": scr_flag_set(6); break;
		case "~F7": scr_flag_set(7); break;
		case "~F8": scr_flag_set(8); break;
		case "~F9": scr_flag_set(9); break;
		case "~FA": scr_flag_set(10); break;
		case "~FB": scr_flag_set(11); break;
		case "~FC": scr_flag_set(12); break;
		case "~FD": scr_flag_set(13); break;
		case "~FE": scr_flag_set(14); break;
		case "~FF": scr_flag_set(15); break;
		
		case "~L+": if (ie(obj_lotl)) {obj_lotl.state = 1;} break;
		case "~L-": if (ie(obj_lotl)) {obj_lotl.state = 2;} break;
		case "~LY": with (obj_ram) {items[lotl_slot] = lotl_reward;} break;
		case "~LN": 
			with (obj_ram) {items[lotl_slot] = item_Nothing;}
			scr_items_sort();
			break;
		case "~ng": scr_flag_unset(3); break;
		
		case "~GP":
			with (obj_ram) 
			{
				party[1] = ruby
				goto_dir = DIR_UP;
				ruby.xp = 100 * ceil(edgar.lvl / 2);
				scr_levelup(ruby);
				scr_warp(rm_castle, 9);
			}
			state = 255;
			return true;
			break;
			
		case "~g0": state = 255; scr_warp(rm_go_worst); break;
		case "~g1": state = 255; scr_warp(rm_go_bad); break;
		case "~g2": state = 255; scr_warp(rm_go_good); break;
		
		case "~b0": scr_battle(obj_enm_KeithDragon); break;
		case "~b1": scr_battle(obj_enm_Lakea); break;
		case "~b2": scr_battle(obj_enm_Emersona); break;
		case "~b3": scr_battle(obj_enm_Palmera); break;
		case "~b4": scr_battle(obj_enm_Anabella); break;
	}
	return false;
}