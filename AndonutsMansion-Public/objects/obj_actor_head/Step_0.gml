event_inherited();
if (talk_update)
{
	sprite_index = spr_brain3;
	scr_snd(snd_eb_psi);
	scr_flag_set(56);
	obj_andonuts_door.psi_move = true;
	talk_update = false;	
}

if (jan_helped)
{
	scr_uses_reset();
	sprite_index = spr_brain3;
	if (jan_ini) {name = "Jan in the Pan";}
	else {name = "Jan";}
	look_line = [1108, 1108, 1108];
	talk_line = [1109, 1109, 1109];
	take_line = [1111, 1111, 1111];
	use_line =  [1110, 1110, 1110];
	use_item_line = [1112, 1112, 1112];	
}