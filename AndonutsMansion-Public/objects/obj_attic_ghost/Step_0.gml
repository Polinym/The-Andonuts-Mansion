event_inherited();
if (talk_update)
{
	talk_line = [466, 466, 466];	
	talk_update = false;
}

if (use_item_update)
{
	scr_any_add(hash);
	with (obj_attic_ghost2)
	{
		scr_any_add(hash);
		instance_destroy();	
	}
	obj_ram.fow = false;
	obj_ram.flashlight = false;
	with (obj_ui)
	{
		fow = false;
		scr_baw(false);
	}
	scr_flag_set(23);
	scr_bgm_stop();
	scr_snd(snd_lm_clear);
	instance_destroy();
}

if (stun_count > 0)
{
	sprite_index = spr_ghost2_stun;
	stun_count += -1;
}
else
{
	sprite_index = spr_ghost2;
}