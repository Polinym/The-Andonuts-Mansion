scr_cuts_skip(13);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_bgm(bgm_ness);
			scr_actor_walk(jeff, RIGHT, 8);
			wait_type = "actor";
			break;	
		case 1:
			scr_actor_walk(jeff, UP, 1);
			wait_type = "actor";
			break;
		case 2:
			scr_actor_face(jeff, RIGHT);
			ani_wait = 10;
			wait_type = "wait";
			break;
		case 3:
			scr_msg(line[0]);
			jeff.talking = true;
			wait_type = "reading";
			break;
		case 4:
			scr_msg(line[1]);
			jeff.talking = true;
			wait_type = "reading";
			break;
		case 5:
			jeff.talking = false;
			scr_msg(line[2]);
			paula.talking = true;
			wait_type = "reading";
			break;
		case 6:
			paula.talking = false;
			scr_msg(line[4]);
			jeff.talking = true;
			wait_type = "reading";
			break;
		case 7:
			scr_msg(line[5]);
			jeff.talking = true;
			wait_type = "reading";
			break;
		case 8:
			scr_msg(line[6]);
			jeff.talking = true;
			wait_type = "reading";
			break;
		case 9:
			jeff.talking = false;
			scr_actor_walk(jeff, DOWN, 1);
			wait_type = "actor";
			break;
		case 10:
			scr_actor_walk(jeff, LEFT, 15);
			scr_msg(line[7]);
			ness.talking = true;
			wait_type = "reading";
			break;
		case 11:
			ness.talking = false;
			scr_actor_walk(paula, DOWN, 1);
			scr_actor_walk(ness, DOWN, 0.5);
			wait_type = "actor";
			break
		case 12:
			scr_actor_walk(ness, LEFT, 15);
			scr_actor_walk(paula, LEFT, 15);
			ani_wait = 60;
			wait_type = "wait";
			break;
		case 13:
			scr_flag_set(1);
			obj_ram.no_new_kid = true;
			scr_cuts(obj_cuts_presents);
			scr_tp(rm_ballroom, 4, RIGHT);
			instance_destroy();
			break;
	}
}