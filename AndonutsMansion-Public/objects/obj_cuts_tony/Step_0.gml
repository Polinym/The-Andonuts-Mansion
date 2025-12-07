scr_cuts_skip(8);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", tony);
			tony.type = "cuts";
			scr_actor_face(tony, DOWN);
			scr_actor_face(player, UP);
			ani_wait = 10;
			wait_type = "wait";
			break;
		case 1:
			scr_msg(line[59]);
			wait_type = "reading";
			break;
		case 2:
			scr_actor_face(tony, LEFT);
			scr_msg(line[60]);
			wait_type = "reading";
			break;
		case 3:
			if (scr_actor_meeting(tony, -16, 0, player))
			{
				scr_actor_walk(player, DOWN, 1);
				moved_player = true;
			}
			scr_actor_face(tony, DOWN);
			scr_msg(line[61]);
			wait_type = "reading";
			break;
		case 4:
			did_skip = false;
			scr_actor_walk(tony, LEFT, 1);
			scr_msg(line[62]);
			wait_type = "actor";
			break;
		case 5:
			scr_actor_face(tony, UP);
			if (moved_player)
			{
				scr_actor_face(player, UP);	
			}
			wait_type = "reading";
			break;
		case 6:
			scr_actor_face(tony, DOWN);
			scr_msg(line[63]);
			wait_type = "reading";
			break;
		case 7:
			scr_actor_face(tony, UP);
			scr_msg(line[64]);
			wait_type = "reading";
			break;
		case 8:
			scr_flag_set(32);
			with (tony)
			{
				var tmp_inst = icd(x, y, depth, obj_tony2);
				tmp_inst.image_index = image_index;
				instance_destroy();
			}
			if (did_skip)
			{
				with (obj_ram)
				{
					warped = true;
					goto_pt = 13;
					goto_dir = RIGHT;
				}
				scr_warp(rm_attic);
			}
			scr_cuts_off();
			if (did_skip)
			{
				obj_player.state = "tmp";
			}
			instance_destroy();
			break;
	}
}