scr_cuts_skip(3);
if (state_update)
{
	switch (state)
	{
		case 0:
			with (obj_player)
			{
				sprite_index = spr_car_ride;
				x = obj_car2.x;
				y = obj_car2.y;
				with (obj_car2) {instance_destroy();}
				lip_spr = -1;
			}
			ani_wait = 45;
			wait_type = "wait";
			break;
		case 1:
			scr_msg(line[94]);
			wait_type = "reading";
			break;
		case 2:
			with (obj_player) {ani_wait = round(ani_wait/3);}
			scr_actor_walk(obj_player, RIGHT, 20);
			ani_wait = 90;
			wait_type = "wait";
			break;
		case 3:
			scr_cuts_off2();
			scr_tp(rm_polinym, 1, UP);
			instance_destroy();
			break;
	}
}