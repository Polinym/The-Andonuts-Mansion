scr_cuts_skip(3);
if (state_update)
{
	switch (state)
	{
		case 0:
			scr_cuts_actor("A", venus);
			scr_msg(line[66]);
			wait_type = "reading";
			break;
		case 1:
			scr_cuts_actor("A", venus);
			scr_msg(line[67]);
			wait_type = "reading";
			break;
		case 2:
			with (player) {flicker = true;}
			with (venus) {flicker = true; image_alpha = 0;}
			scr_snd(snd_oot_sword);
			scr_snd(snd_eb_teleport);
			ani_wait = 30 * 10;
			wait_type = "wait";
			break;
		case 3:
			with (player) {flicker = false; image_alpha = 1;}
			with (venus) {flicker = false; image_alpha = 0;}
			scr_flag_set(46);
			if (ie(obj_swappie))
			{
				with (obj_swappie)
				{
					use_line = [1063, 1062, 1064];
				}
			}
			with (obj_ram.paula)
			{
				spr = spr_paula_adult;
				dark_spr = spr_paula_adult_dark;
			}
			with (player) 
			{
				sprite_index = spr_paula_adult;
			}
			with (venus)
			{
				var tmp_inst = icd(x, y, depth, obj_venus3);
				tmp_inst.image_index = image_index;
				instance_destroy();
			}
			scr_snd(snd_eb_venus);
			ani_wait = 30;
			wait_type = "wait";
			break;
		case 4:
			scr_msg(line[69]);
			scr_bgm(bgm_swap);
			scr_cuts_off();
			break;
	}
}