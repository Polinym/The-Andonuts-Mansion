if (not dbg)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		if (keyboard_check_pressed(ord(cheat[cheat_state])))
		{
			cheat_state++;
			if (cheat_state > 2)
			{
				scr_snd(snd_coin);
				dbg = true;
			}
		}
		else
		{
			cheat_state = 0;
		}
	}
}


if (dbg)
{
if (keyboard_check(vk_shift))
{
	if (kcp(ord("R"))) {game_restart();}
	else if (kcp(ord("L"))) {enc_steps_to = -1;}
	else if (kcp(ord("A"))) {wtw = not wtw;}
	else if (kcp(ord("M"))) 
	{
		mute = not mute;
		if (mute) {scr_bgm_stop();}
	}
	else if (kcp(ord("W"))) 
	{
		var tmp = get_asset("Which room?");
		if (tmp != -1)
		{
			warped = true;
			goto_pt = 1;
			scr_warp(tmp);	
		}
	}
	else if (kcp(ord("P")))
	{
		switch (get_str("Enter a command!"))
		{
			case "save": scr_save(); break;
			case "load": scr_load(); break;
			case "file_index": file_index = get_int("Enter a file index."); break;
			case "item":
				var item = asset_get_index(get_str("Which item?"));
				if (item != -1)
				{
					scr_item_add(char, item);
					scr_snd(snd_eb_item);
				}
				break;
			case "id":
				show_message(char.items[1]);
				break
			case "alucard":
				with (edgar)
				{
					spr = spr_edgar_alucard;
					base_spr = spr_edgar_alucard;
					name = "Alucard";
				}
				break;
			case "new_mush":
				with (char)
				{
					mush = [scr_rng(0, 3), 1];	
				}
				break;
			case "thefido":
				if (ie(obj_player))
				{
					obj_player.state = "btl";	
				}
				scr_battle(obj_enm_WolfPup);
				break;
			case "kingme":
				with (floyd)
				{
					slot_weapon = item_KingSword;
					slot_head = item_KingHelm;
					slot_body = item_RoyalArmor;
					slot_shield = item_MirrorShield;
					slot_other = item_LionRing;
				}
				break;
			case "mush":
				with (char)
				{
					if (mush[1] < 4) {mush[1] += 1;}
				}
				break;
			case "princess":
				party[1] = ruby;
				break;
			case "items":
				items[0] = item_HealingLeaf;
				items[1] = item_MiracleLeaf;
				items[2] = item_BagOfGold;
				items[3] = item_IronShortsword;
				items[4] = item_Torch;
				items[5] = item_WitchsBrew;
				items[6] = item_Mushroom;
				items[7] = item_EnflameTome;
				items[8] = item_LionRing;
				items[9] = item_AstoleyTome;
				items[10] = item_ResisTome;
				items[11] = item_CatEars;
				break;
			case "curse":
				var tmp_char = scr_get_char();
				if (tmp_char != -1)
				{
					var tmp_curse = get_asset("Which curse?");
					if (tmp_curse != -1)
					{
						switch (tmp_curse)
						{
							case "mute": curses[CURSE_MUTE] = 1; break;	
							case "hiccups": curses[CURSE_HICCUPS] = 1; break;	
							case "ticklish": curses[CURSE_TICKLISH] = 1; break;	
							case "drowsy": curses[CURSE_DROWSY] = 1; break;	
						}
					}
				}
				break;
			case "form":
				var tmp_char = scr_get_char();
				if (tmp_char != -1)
				{
					var tmp_curse = get_str("Which form?");
					if (tmp_curse != -1)
					{
						switch (tmp_curse)
						{
							case "none":
							case "normal":
								scr_unform(tmp_char); 
								break;
							case "slime": scr_form_slime(tmp_char); break;
						}
					}
				}
				break;
			case "money":
				var tmp_money = get_int("How much?");
				if (tmp_money > 0)
				{
					char.money = tmp_money;	
				}
				break;
			case "heal_enemy":
				if (ie(obj_enemy))
				{
					with (obj_enemy)
					{
						hp = max_hp;
						mp = max_mp;
					}
				}
				break;
			case "warp":
				var tmp = get_asset("Which room?");
				if (tmp != -1)
				{
					goto_pt = 1;
					scr_warp(tmp);	
				}
				break;
			case "meow":
				var tmp_val = get_int("How many levels to add to Floyd?");
				if (tmp_val != -1)
				{
					edgar.xp += 100 * tmp_val;
					scr_levelup(edgar);
				}
				break;
			case "meow2":
				var tmp_val = get_int("How many levels to add to Ruby?");
				if (tmp_val != -1)
				{
					ruby.xp += 100 * tmp_val;
					scr_levelup(ruby);
				}
				break;
			case "fallen_one":
				char.hp = 1;
				break;
			case "fight":
				var tmp_enemy = get_asset("What enemy?");
				if (tmp_enemy != -1)
				{
					if (ie(obj_player))
					{
						obj_player.state = "dbg";	
					}
					scr_battle(tmp_enemy);
				}
				break;
			case "healus":
				var tmp_char;
				for (var i = 0; i < 4; i++)
				{
					tmp_char = party[i];
					if (tmp_char != -1)
					{
						scr_heal(tmp_char, char.max_hp);
						scr_healmp(tmp_char, char.max_mp);
					}
				}
				break;
		}
	}
}
}