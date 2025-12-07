scr_cuts_skip(6);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", andonuts);
			scr_msg(line[9]);
			wait_type = "reading";
			break;
		case 1:
			tony.visible = true;
			tony.ani_walk = 12;
			tony.move_speed = 1;
			scr_actor_walk(tony, LEFT, 7);
			scr_msg(line[10]);
			wait_type = "reading";
			break;
		case 2:
			scr_msg(line[11]);
			tony.move_speed = 0.5;
			scr_actor_walk(tony, LEFT, 1);
			ani_wait = 10;
			wait_type = "wait";
			break;
		case 4:	
			scr_msg(line[12]);
			with (par_actor_party) {instance_destroy();}
			with (obj_actor_tony) {instance_destroy();}
			wait_type = "reading";
			break;
		case 5:
			scr_msg(line[13]);
			with (par_actor_party) {instance_destroy();}
			with (obj_actor_tony) {instance_destroy();}
			wait_type = "reading";
			break;
		case 6:
			scr_flag_set(2);
			obj_ram.no_new_kid = false;
			scr_cuts_off2();
			scr_change_char(obj_ram.ness);
			obj_ram.warp_line = 1161;
			scr_tp(rm_ballroom, 5, DOWN);
			instance_destroy();
			break;
	}
}