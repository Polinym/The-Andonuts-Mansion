event_inherited();
if (use_update)
{
	use_update = false;
	if (on) {scr_flag_unset(12);}
	else {scr_flag_set(12);}
	on = not on;
	var tmp_fow = not on;
	obj_ram.fow = tmp_fow;
	obj_ui.fow = tmp_fow;
	with (obj_ui) {scr_baw(fow);}
	update_me = true;
}

if (update_me)
{
	on = scr_flag(12);	
	if (on)
	{
		look_line = [278, 278, 278];
		talk_line = [279, -1, -1];
		take_line = [280, 280, 280];
		use_line = [309, 310, 310];
		image_alpha = 1;
	}
	else
	{
		look_line = [288, 288, 288];
		talk_line = [287, -1, -1];
		take_line = [280, 280, 280];
		use_line = [284, 286, 285];
		use_item_line = [288, 288, 288];
		image_alpha = 0.6;
	}
	update_me = false;
}