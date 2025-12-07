if (kc(vk_down)) {y = clamp(y+spd, 32, 248);}
else if (kc(vk_up)) {y = clamp(y-spd, 32, 248);}

if (kc(vk_right)) {x = clamp(x+spd, 0, 248);}
else if (kc(vk_left)) {x = clamp(x-spd, 0, 248);}

if (kcp(vk_space))
{
	if (place_meeting(x, y, obj_kid_box))
	{
		var tmp_inst = instance_place(x, y, obj_kid_box);
		with (tmp_inst)
		{
			on = not on;
			if (on) {obj_ram.kids_selected++;}
			else {obj_ram.kids_selected += -1;}
		}
		var tmp_index = tmp_inst.index;
		update_desc = true;
		update_index = tmp_index;
		scr_snd(snd_mm_pick);
		scr_bgm(songs[tmp_index]);
	}
	else if (place_meeting(x, y, obj_kid_start))
	{
		if (obj_ram.kids_selected > 2)
		{
			scr_newgame();
			instance_destroy();
		}
	}
}
if (kcp(ord("X")))
{
	scr_newgame();
	scr_snd(snd_mm_pick);
	scr_bgm_stop();
	instance_destroy();
}
else if (kcp(vk_shift))
{
	obj_ram.kids_selected = 0;
	scr_warp2(rm_title);
	instance_destroy();
}

if (update_desc)
{
	var tmp_txt = "Please choose three kids!##(Hint - There's only 3!)";
	if (obj_ram.kids_selected > 0)
	{
		if (update_index != -1)
		{
			tmp_txt = desc[update_index];
		}
	}
	obj_kid_about.txt = tmp_txt;
	update_desc = false;	
}