scr_cuts_skip(9);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_bgm(bgm_porcbanc);
			scr_cuts_actor("A", porc_a);
			scr_cuts_actor("B", porc_b);
			ani_wait = 10;
			wait_type = "wait";
			break;
		case 1:
			scr_actor_face(porc_a, UP);
			scr_actor_face(porc_b, UP);
			ani_wait = 60;
			wait_type = "wait";
			break;
		case 2:
			scr_actor_walk(porc_a, RIGHT, 0.5);
			wait_type = "actor";
			break;
		case 3:
			scr_actor_walk(porc_a, UP, 0.5);
			wait_type = "actor";
			break;
		case 4:
			var tmp_array = [38, 37, 39];
			scr_msg(line[tmp_array[index]]);
			wait_type = "reading";
			break;
		case 5:
			scr_actor_walk(porc_b, UP, 1);
			scr_msg(line[40]);
			wait_type = "reading";
			break;
		case 6:
			scr_actor_walk(porc_a, UP, 0.25);
			scr_msg(line[41]);
			wait_type = "reading";
			break;
		case 7:
			scr_actor_walk(porc_a, LEFT, 0.5);
			scr_actor_walk(porc_b, RIGHT, 0.25);
			wait_type = "actor";
			break;
		case 8:
			scr_actor_walk(porc_a, UP, 1);
			scr_actor_walk(porc_b, UP, 0.5);
			wait_type = "actor";
			break;
		case 9:
			scr_bgm(char.bgm);
			with (porc_a) {instance_destroy();}
			with (porc_b) {instance_destroy();}
			with (obj_door_double)
			{
				image_index = 0;
				scr_snd(snd_eb_doorclose);
			}
			scr_cuts_off();
			scr_flag(15);
			instance_destroy();
			break;
	}
}