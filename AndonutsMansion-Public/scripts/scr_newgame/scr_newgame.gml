function scr_newgame()
{
	scr_change_char(obj_ram.jeff);
	scr_flag_unset(1);
	scr_cuts(obj_cuts_intro);
	scr_warp2(rm_entrance);
}