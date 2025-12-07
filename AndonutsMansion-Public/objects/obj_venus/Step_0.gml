event_inherited();
if (talk_update)
{
	scr_flag_set(39);
	talk_line = [942, 942, 942];
	talk_update = false;
}

if (give_update)
{
	scr_snd(snd_eb_steps);
	var tmp_line = -1;
	if (not scr_flag(23))
	{
		tmp_line = 1044;
	}
	else if (not scr_flag(31))
	{
		tmp_line = 1045;
	}
	if (tmp_line != -1)
	{
		obj_ram.warp_line = tmp_line;	
		scr_tp(room, 17, DOWN);
	}
	else
	{
		scr_flag_set(9);
		scr_flag_set(45);
		obj_ram.cuts_obj = obj_cuts_venus;
		scr_item_delete(char, item_SecretNote);
		with (obj_player)
		{
			var tmp_dummy = icd(x, y, depth, obj_actor_object);
			tmp_dummy.sprite_index = sprite_index;
			tmp_dummy.image_index = image_index;
			tmp_dummy.visible = true;
			instance_destroy();	
		}
		scr_msg_clear();
		scr_tp(rm_attic, 14, DOWN);
		instance_destroy();
	}
	give_update = false;
}