scr_cuts_skip(13);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", rastan);
			rastan.type = "cuts";
			ani_wait = 30;
			wait_type = "wait";
			break;
		case 1:
			scr_actor_face(rastan, LEFT);
			with (rastan) {icd(x, y-16, depth, obj_exclaim);}
			ani_wait = 30;
			wait_type = "wait";
			break;
		case 2:
			scr_actor_face(player, RIGHT);
			scr_msg(line[52]);
			ani_wait = 50;
			wait_type = "wait";
			break;
		case 3:
			scr_msg(line[53]);
			wait_type = "reading";
			break;
		case 4:
			scr_bgm(bgm_rescue);
			switch (index)
			{
				case 1: scr_msg(line[54]); break;
				case 0: scr_msg(line[56]); break;
				case 2: scr_msg(line[56]); break;
			}
			wait_type = "reading";
			break;
		case 5:
			scr_actor_walk(rastan, LEFT, 1);
			scr_msg(line[55]);
			wait_type = "reading";
			break;
		case 6: 
			scr_msg(line[57]); 
			wait_type = "reading";
			break;
		case 7: 
			scr_msg(line[58]); 
			wait_type = "reading";
			break;
		case 8:
			scr_actor_walk(rastan, DOWN, 0.5);
			wait_type = "actor"; 
			break;
		case 9: 
			scr_actor_walk(rastan, LEFT, 2); wait_type = "actor"; 
			scr_actor_face(player, DOWN);
			break;
		case 10: 
			scr_actor_walk(player, RIGHT, 1);
			scr_actor_walk(rastan, UP, 1); 
			ani_wait = 4;
			wait_type = "wait"; 
			break;
		case 11:
			with (obj_door_up) {image_index = 1;}
			scr_snd(snd_eb_door);
			scr_actor_face(player, LEFT);
			ani_wait = 15;
			wait_type = "wait";
			break;
		case 12:
			with (obj_door_up) {image_index = 0;}
			scr_snd(snd_eb_doorclose);
			with (rastan) {instance_destroy();}
			ani_wait = 10;
			wait_type = "wait";
			break;
		case 13:
			die(rastan);
			scr_cuts_off();
			scr_flag_set(21);
			instance_destroy();
			break;
	}
}