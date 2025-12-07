scr_cuts_skip(27);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", andonuts);
			scr_cuts_actor("B", dynos);
			scr_cuts_actor("C", girl);
			scr_actor_walk(andonuts, RIGHT, 9.5);
			wait_type = "actor";
			break;
		case 1:
			scr_actor_face(andonuts, UP);
			wait_type = "wait";
			ani_wait = 10;
			break;
		case 2:
			scr_msg(line[14]);
			wait_type = "reading";
			break;
		case 3:
			scr_msg(line[15]);
			girl.sprite_index = spr_ani_maiden;
			girl.ani_state = "idle_walk";
			wait_type = "reading";
			break;
		case 4:
			with (andonuts)
			{
				icd(x, y-16, depth-1, obj_confuse);	
			}
			ani_wait = 45;
			wait_type = "wait";
			break;
		case 5:
			girl.sprite_index = spr_maiden_stuck;
			girl.ani_state = "idle";
			scr_actor_walk(andonuts, DOWN, 1);
			wait_type = "actor";
			break;
		case 6:
			scr_actor_walk(andonuts, RIGHT, 3);
			wait_type = "actor";
			break;
		case 7:
			scr_actor_face(dynos, LEFT);
			scr_msg(line[16]);
			wait_type = "reading";
			break;
		case 8:
			scr_msg(line[17]);
			wait_type = "reading";
			break;
		case 9:
			scr_msg(line[18]);
			wait_type = "reading";
			break;
		case 10:
			scr_msg(line[19]);
			wait_type = "reading";
			break;
		case 11:
			scr_msg(line[20]);
			scr_actor_walk(andonuts, LEFT, 3);
			wait_type = "reading";
			break;
		case 12:
			scr_actor_walk(andonuts, UP, 1);
			wait_type = "actor";
			break;
		case 13:
			scr_msg(line[21]);
			wait_type = "reading";
			break;
		case 14:
			scr_actor_face(andonuts, RIGHT);
			scr_msg(line[22]);
			wait_type = "reading";
			break;
		case 15:
			scr_actor_face(andonuts, UP);
			scr_msg(line[23]);
			wait_type = "reading";
			break;
		case 16:
			girl.sprite_index = spr_ani_maiden;
			girl.ani_state = "idle_walk";
			scr_actor_walk(andonuts, DOWN, 1);
			scr_msg(line[24]);
			wait_type = "reading";
			break;
		case 17:
			girl.sprite_index = spr_maiden_stuck;
			girl.ani_state = "idle";
			scr_actor_face(andonuts, RIGHT);
			scr_msg(line[25]);
			wait_type = "reading";
			break;
		case 18:
			scr_actor_walk(andonuts, RIGHT, 2);
			scr_msg(line[26]);
			wait_type = "reading";
			break;
		case 19:
			scr_msg(line[27]);
			wait_type = "reading";
			break;
		case 20:
			scr_actor_face(andonuts, LEFT);
			scr_msg(line[28]);
			wait_type = "reading";
			break;
		case 21:
			scr_actor_walk(andonuts, LEFT, 5);
			scr_msg(line[29]);
			wait_type = "reading";
			break;
		case 22:
			scr_bgm(bgm_summon);
			fx.show_cover = true;
			scr_actor_face(andonuts, RIGHT);
			with (dynos)
			{
				lip_spr = -1;
				image_index = 0;
				sprite_index = spr_ani_dynos_behold;
				ani_state = "play";
			}
			scr_msg(line[31]);
			wait_type = "reading";
			break;
		case 23:
			fx.show_glow = true;
			obj_magic_circle.sprite_index = spr_magic_circle_on;
			dynos.sprite_index = spr_ani_dynos;
			dynos.ani_state = "idle_walk";
			scr_msg(line[32]);
			wait_type = "reading";
			break;
		case 24:
			dynos.sprite_index = spr_ani_dynos_chaos;
			dynos.ani_state = "idle_walk";
			scr_msg(line[33]);
			wait_type = "reading";
			break;
		case 25:
			fx.show_cover = false;
			fx.show_glow = false;
			scr_snd(snd_eb_launch);
			obj_magic_circle.sprite_index = spr_magic_circle;
			with (obj_riser)
			{
				active = true;	
			}
			dynos.sprite_index = spr_dynos;
			scr_actor_face(dynos, LEFT);
			dynos.ani_state = "idle";
			scr_msg(line[34]);
			wait_type = "reading";
			break;
		case 26:
			scr_bgm(bgm_edison);
			scr_msg(line[35]);
			wait_type = "reading";
			break;
		case 27:
			scr_cuts_off2();
			scr_flag_set(8);
			with (obj_ram) 
			{
				warp_line = 251 + char.index;
				show_player_again = true;
			}
			scr_flag_set(14);
			scr_tp(rm_basement, 12, RIGHT);
			instance_destroy();
			break;
	}
}