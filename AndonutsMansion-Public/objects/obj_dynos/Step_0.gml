event_inherited();
if (talk_update)
{
	if (scr_flag(48))
	{
		scr_flag_set(51);
		scr_snd(vc_dynos_lady);
		with (obj_door_lab_left)
		{
			use_line = [1084, 1084, 1084];	
		}
		obj_ram.no_new_kid = true;
		dir = LEFT;
		is_leaving = true;
		type = "cuts";
	}
	else
	{
		scr_snd(vc_dynos_die);
		scr_bgm(bgm_dynos);
		scr_flag_set(40);
		sprite_index = spr_dynos_attack;
		use_item_line = [994, 994, 994];
		look_line = [995, 995, 995];
		talk_line = [996, 996, 996];
	}
	talk_update = false;
}
if (use_item_update)
{
	scr_tp(rm_basement, 2, LEFT);
	use_item_update = false;	
}

if (is_leaving)
{
	x += -4;
	if (x < 0) {instance_destroy();}
}