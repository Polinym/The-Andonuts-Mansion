//scr_cuts_skip(12);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_snd(snd_eb_item);
			scr_cuts_actor("A", porc_a);
			scr_cuts_actor("B", porc_b);
			with (porc_a)
			{
				type = "cuts";
				ani = "idle_walk";
			}
			with (porc_b)
			{
				type = "cuts";
				ani = "idle";
			}
			scr_actor_face(porc_b, LEFT);
			ani_wait = 15;
			wait_type = "wait";
			break;
		case 1:
			scr_actor_walk(obj_player, DOWN, 0.25);
			var tmp_lines = [42, 43, 51];
			scr_msg(line[ tmp_lines[index] ]);
			wait_type = "reading";
			break;
		case 2:
			scr_msg(line[44]);
			wait_type = "reading";
			break;
		case 3:
			with (porc_a)
			{
				sprite_index = spr_porcbank;
				ani_wait = ani_wait * 3;
			}
			scr_actor_face(porc_a, DOWN);
			scr_msg(line[45]);
			wait_type = "reading";
			break;
		case 4:	
			porc_a.sprite_index = spr_porcbank_stomach;
			scr_msg(line[46]);
			wait_type = "reading";
			break;
		case 5:
			scr_actor_walk(porc_b, RIGHT, 0.25);
			scr_msg(line[48]);
			wait_type = "reading";
			break;
		case 6:
			with (porc_a)
			{
				mashroom = true;
				sprite_index = spr_porcbank;
			}
			scr_snd(snd_eb_ailment);
			scr_msg(line[47]);
			wait_type = "reading";
			break;
		case 7:
			scr_msg(line[49]);
			wait_type = "reading";
			break;
		case 8:
			with (porc_a)
			{
				ani_wait = round(ani_wait/3);
			}
			with (porc_b)
			{
				icd(x-16, y, depth+1, obj_actor_camshaft);	
				sprite_index = spr_porcbank;
			}
			scr_actor_walk(porc_a, DOWN, 1);
			scr_actor_walk(porc_b, DOWN, 1);
			scr_msg(line[50]);
			wait_type = "actor";
			break;
		case 9:
			scr_actor_walk(porc_a, RIGHT, 13);
			scr_actor_walk(porc_b, RIGHT, 13);
			wait_type = "reading";
			break;
		case 10:
			scr_snd(snd_eb_door);
			ani_wait = 8;
			wait_type = "wait";
			break;
		case 11:
			scr_bgm_stop();
			with (porc_a) {instance_destroy();}
			with (porc_b) {instance_destroy();}
			scr_snd(snd_eb_doorclose);
			ani_wait = 30;
			wait_type = "wait";
			break;
		case 12:
			scr_bgm(char.bgm);
			scr_cuts_off();
			scr_flag_set(16);
			instance_destroy();
			break;
	}
}