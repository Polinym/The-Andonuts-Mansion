scr_cuts_skip(20);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", andonuts);
			scr_cuts_actor("B", ness);
			scr_cuts_actor("C", jeff);
			scr_actor_walk(paula, RIGHT, 3);
			ani_wait = 25;
			wait_type = "wait";
			break;
		case 1:
			scr_actor_face(andonuts, LEFT);
			scr_msg(line[70]);
			wait_type = "reading";
			break;
		case 2:
			with (paula)
			{
				image_index = 2;
				ani_frame = 0;
			}
			scr_actor_face(andonuts, LEFT);
			scr_msg(line[71]);
			wait_type = "reading";
			break;
		case 3:
			scr_actor_face(andonuts, DOWN);
			scr_msg(line[72]);
			wait_type = "reading";
			break;
		case 4:
			scr_actor_face(andonuts, LEFT);
			scr_msg(line[73]);
			wait_type = "reading";
			break;
		case 5:
			scr_actor_face(andonuts, LEFT);
			scr_msg(line[74]);
			wait_type = "reading";
			break;
		case 6:
			scr_snd(snd_eb_doorclose);
			ness.visible = true;
			jeff.visible = true;
			ani_wait = 15;
			wait_type = "wait";
			break;
		case 7:
			scr_actor_face(paula, LEFT);
			scr_actor_walk(jeff, RIGHT, 1);
			scr_msg(line[75]);
			andonuts.name = "Dr. Andonuts?";
			wait_type = "reading";
			break;
		case 8:
			scr_actor_face(paula, RIGHT);
			scr_msg(line[76]);
			wait_type = "reading";
			break;
		case 9:
			scr_msg(line[77]);
			wait_type = "reading";
			break;
		case 10:
			scr_actor_face(ness, DOWN);
			scr_actor_face(paula, LEFT);
			scr_actor_face(jeff, UP);
			scr_msg(line[78]);
			wait_type = "reading";
			break;
		case 11:
			scr_actor_face(ness, RIGHT);
			scr_actor_face(paula, RIGHT);
			scr_actor_face(jeff, RIGHT);
			scr_msg(line[79]);
			wait_type = "reading";
			break;
		case 12:
			scr_actor_walk(ness, RIGHT, 0.5);
			scr_msg(line[80]);
			wait_type = "reading";
			break;
		case 13:
			with (paula)
			{
				visible = false;
				icd(x, y, depth, obj_lab_paula);
				obj_lab_paula.dir = dir;
				obj_lab_paula.image_index = image_index;
			}
			scr_actor_face(andonuts, RIGHT);
			scr_msg(line[81]);
			obj_lab_ness.ani_state = "meteor";
			obj_lab_paula.ani_state = "meteor";
			obj_lab_jeff.ani_state = "meteor";
			ani_wait = 60;
			wait_type = "wait";
			break;
		case 14:
			scr_actor_face(andonuts, LEFT);
			scr_msg(line[82]);
			wait_type = "reading";
			break;
		case 15:
			scr_actor_walk(andonuts, RIGHT, 3.25);
			scr_actor_walk(paula, RIGHT, 2);
			wait_type = "actor";
			break;
		case 16:
			scr_actor_walk(andonuts, UP, 1.5);
			wait_type = "actor";
			break;
		case 17:
			obj_lab_button.image_index = 1;
			scr_snd(snd_lever);
			ani_wait = 10;
			wait_type = "wait";
			break;
		case 18:
			scr_bgm(bgm_meltdown);
			scr_actor_face(andonuts, LEFT);
			ani_wait = 10;
			wait_type = "wait";
			break;
		case 19:
			scr_actor_face(andonuts, DOWN);
			scr_msg(line[83]);
			wait_type = "reading";
			break;
		case 20:
			with (obj_ram)
			{
				scr_change_char(ness);
				with (ness)
				{
					for (var i = 0; i < 99; i++)
					{
						items[i] = -1;	
					}
				}
				scr_item_add(ness, item_LegendaryBat);
			}
			scr_tp(rm_lab, 5, UP);
			instance_destroy();
			break;
	}
}